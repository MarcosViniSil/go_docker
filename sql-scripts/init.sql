
USE teste_banco;

CREATE TABLE tb_selic  (idSelic INT AUTO_INCREMENT PRIMARY KEY, dateSelic DATE, valueSelic FLOAT);
CREATE TABLE tb_crypto (idCrypto INT AUTO_INCREMENT PRIMARY KEY, nameCrypto VARCHAR(255), date DATE, highCrypto FLOAT, lowCrypto FLOAT, volCrypto FLOAT, lastCrypto FLOAT, sellCrypto FLOAT, buyCrypto FLOAT);
CREATE TABLE tb_coins  (idCoin INT AUTO_INCREMENT PRIMARY KEY, nameCoin VARCHAR(255), dateCoin DATE, highCoin FLOAT, lowCoin FLOAT, bidCoin FLOAT, askCoin FLOAT);
CREATE TABLE tb_Share  (idShare INT AUTO_INCREMENT PRIMARY KEY, nameShare VARCHAR(255), dateShare DATE,openShare FLOAT, highShare FLOAT, lowShare FLOAT, closeShare FLOAT, volumeShare FLOAT);
CREATE TABLE tb_news   (idNews INT AUTO_INCREMENT PRIMARY KEY, news VARCHAR(10000), dateNews DATE);/*CORRIGIR*/


INSERT INTO tb_acoes (idShare, nameShare, dateShare, openShare, highShare, lowShare, closeShare, volumeShare) VALUES (1, 'PETR4', '2021-01-01', 28.00, 28.50, 27.50, 28.00, 100000);


INSERT INTO tb_Share (idShare, nameShare, dateShare, openShare, highShare, lowShare, closeShare, volumeSharec) VALUES 
(71,	"PETR4.SA",	2024-10-12,	37.6, 37.65,	37.32,	37.62,	16343000),
(72,	"BBAS3.SA",	2024-10-12,	26.28,	26.46,	26.17,	26.33,	12175400),
(73,	"ITSA4.SA",	2024-10-12,	10.52,	10.54,	10.44,	10.47,	11660200),
(74,	"TRPL4.SA",	2024-10-12,	24.93,	25.34,	24.51,	24.71,	3648000),
(75,  "VALE3.SA"	2024-10-12,	60.99	,62.27,	60.98,	62.13, 20939400),
(76,	"CMIG4.SA",	2024-10-12,	11.12,	11.15,	10.93,	11.02,	12321600),
(77,	"SANB11.SA",	2024-10-12,	28.74,	28.85,	28.52	,28.58,	4622300),
(78,	"USIM5.SA",  2024-10-12,	6.27,	6.27,	6.17,	6.25,	8909300),
(79,	"ABEV3.SA"	2024-10-12,	13.09,	13.12,	12.84,	12.88,	31193700),
(80,	"MGLU3.SA",	2024-10-12,	9.22,	9.47,	8.93,	9.45,	28500100);