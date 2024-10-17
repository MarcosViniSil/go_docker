
USE teste_banco;

CREATE TABLE users (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100),
  idade INT
);

INSERT INTO users (nome, email,idade) VALUES ('Marcos', 'marcos@example.com',21);
INSERT INTO users (nome, email,idade) VALUES ('isa', 'isa@example.com',12);
INSERT INTO users (nome, email,idade) VALUES ('vilma', 'vila@example.com',44);