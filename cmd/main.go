package main

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"time"

	_ "github.com/go-sql-driver/mysql"
)

type User struct {
	Id    int
	Nome  string
	Email string
	Idade int
}

func Read(w http.ResponseWriter, r *http.Request) {
	if r.Method != "GET" {
		http.Error(w, http.StatusText(http.StatusMethodNotAllowed), http.StatusMethodNotAllowed)
		return
	}

	rows, err := db.Query("SELECT * FROM users")
	if err != nil {
		fmt.Println("err2", err)
		http.Error(w, http.StatusText(500), http.StatusInternalServerError)
		return
	}
	defer rows.Close()

	data := make([]User, 0)

	for rows.Next() {
		u := User{}
		err := rows.Scan(&u.Id, &u.Nome, &u.Email, &u.Idade)
		if err != nil {
			fmt.Println("err3", err)
			http.Error(w, http.StatusText(http.StatusInternalServerError), http.StatusInternalServerError)
			return
		}

		data = append(data, u)
	}

	if err = rows.Err(); err != nil {
		fmt.Println("err4", err)
		http.Error(w, http.StatusText(500), http.StatusInternalServerError)
		return
	}

	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(data)
}

func Create(w http.ResponseWriter, r *http.Request) {
	if r.Method != "POST" {
		http.Error(w, http.StatusText(http.StatusMethodNotAllowed), http.StatusMethodNotAllowed)
		return
	}

	u := User{}
	err := json.NewDecoder(r.Body).Decode(&u)
	if err != nil {
		fmt.Println("err1", err)
		http.Error(w, http.StatusText(http.StatusBadRequest), http.StatusBadRequest)
		return
	}

	fmt.Println(u)
	_, err = db.Exec("INSERT INTO users (nome, email, idade) VALUES (?,?,?)", u.Nome, u.Email, u.Idade)
	if err != nil {
		fmt.Println("err2", err)
		http.Error(w, http.StatusText(500), http.StatusInternalServerError)
		return
	}

	w.WriteHeader(http.StatusCreated)
}

func Update(w http.ResponseWriter, r *http.Request) {
	if r.Method != "PUT" {
		http.Error(w, http.StatusText(http.StatusMethodNotAllowed), http.StatusMethodNotAllowed)
		return
	}

	id := r.URL.Query().Get("id")
	up := User{}
	err := json.NewDecoder(r.Body).Decode(&up)

	if err != nil {
		fmt.Println("err1", err)
		http.Error(w, http.StatusText(400), http.StatusBadRequest)
		return
	}

	row := db.QueryRow("SELECT * FROM users WHERE id = ?", id)
	u := User{}
	err = row.Scan(&u.Id, &u.Nome, &u.Email, &u.Idade)

	switch {
	case err == sql.ErrNoRows:
		http.NotFound(w, r)
		return
	case err != nil:
		http.Error(w, http.StatusText(500), 500)
		return
	}

	if up.Nome != "" {
		u.Nome = up.Nome
	}
	if up.Email != "" {
		u.Email = up.Email
	}
	if up.Idade != 0 {
		u.Idade = up.Idade
	}

	_, err = db.Exec("UPDATE users SET nome = ?, email = ?, idade = ? WHERE id = ?", u.Nome, u.Email, u.Idade, u.Id)

	if err != nil {
		fmt.Println("err2", err)
		http.Error(w, http.StatusText(500), http.StatusInternalServerError)
		return
	}

	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(u)
}

func Delete(w http.ResponseWriter, r *http.Request) {
	if r.Method != "DELETE" {
		http.Error(w, http.StatusText(http.StatusMethodNotAllowed), http.StatusMethodNotAllowed)
		return
	}

	id := r.URL.Query().Get("id")
	_, err := db.Exec("DELETE FROM users WHERE id = ?", id)

	if err != nil {
		fmt.Println("err2", err)
		http.Error(w, http.StatusText(http.StatusInternalServerError), http.StatusInternalServerError)
		return
	}

	w.WriteHeader(http.StatusOK)
}

var db *sql.DB

func init() {

	dsn := "root:teste_senha@tcp(mysql:3306)/teste_banco"
	var err error
	db, err = sql.Open("mysql", dsn) 
	if err != nil {
		log.Fatal(err)
	}

	
	for i := 0; i < 20; i++ {
		if err := db.Ping(); err == nil {
			fmt.Println("Conexão ao MySQL bem-sucedida!")
			return
		}
		fmt.Println("Tentando conectar ao MySQL...")
		time.Sleep(5 * time.Second) 
	}

	log.Fatal("Não foi possível conectar ao MySQL após várias tentativas")
}

func main() {
	http.HandleFunc("/users/create", Create)
	http.HandleFunc("/users/update", Update)
	http.HandleFunc("/users/delete", Delete)
	http.HandleFunc("/users/read", Read)
	log.Fatal(http.ListenAndServe(":8080", nil))
}
