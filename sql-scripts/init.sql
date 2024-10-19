
USE teste_banco;
SET NAMES 'utf8mb4';

CREATE TABLE tb_selic  (idSelic INT AUTO_INCREMENT PRIMARY KEY, dateSelic DATE, valueSelic FLOAT);
CREATE TABLE tb_crypto (idCrypto INT AUTO_INCREMENT PRIMARY KEY, nameCrypto VARCHAR(255), date DATE, highCrypto FLOAT, lowCrypto FLOAT, volCrypto FLOAT, lastCrypto FLOAT, sellCrypto FLOAT, buyCrypto FLOAT);
CREATE TABLE tb_coins  (idCoin INT AUTO_INCREMENT PRIMARY KEY, nameCoin VARCHAR(255), dateCoin DATE, highCoin FLOAT, lowCoin FLOAT, bidCoin FLOAT, askCoin FLOAT);
CREATE TABLE tb_share  (idShare INT AUTO_INCREMENT PRIMARY KEY, nameShare VARCHAR(255), dateShare DATE,openShare FLOAT, highShare FLOAT, lowShare FLOAT, closeShare FLOAT, volumeShare FLOAT);
CREATE TABLE tb_news   (idNews INT AUTO_INCREMENT PRIMARY KEY, news VARCHAR(300), dateNews DATE, isApproved BOOLEAN);/*CORRIGIR*/

ALTER TABLE tb_news CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


INSERT INTO tb_news (idNews,news,dateNews,isApproved) VALUES 
(1,'{"CRYPTO":"Canon apresenta câmeras EOS R1 e EOS R5 Mark II como novas mirrorless"}',     '2024-10-11', 0),
(2,'{"CRYPTO":"Novas câmaras EOS R1 e EOS R5 Mark II da Canon são uma ode à tecnologia"}',   '2024-10-11', 1),
(3,'{"CRYPTO":"Tether anuncia fim de cunhagem de USDT nas redes EOS e Algorand"}',           '2024-10-11', 1),
(4,'{"ACAO":"Ibovespa fecha em queda, aos 127.599 pontos, após balanços e com IPCA morno"}', '2024-10-11', 0),
(5,'{"ACAO":"Magazine Luiza (MGLU3): Resultados sólidos no 1T24"}',                          '2024-10-11', 0);


INSERT INTO tb_selic (idSelic, dateSelic, valueSelic) VALUES ( 5,'2024-10-11',0.0402);

INSERT INTO tb_crypto (idCrypto, nameCrypto, date, highCrypto, lowCrypto, volCrypto, lastCrypto, sellCrypto, buyCrypto) VALUES 
(27, 'BTC',  '2024-10-12', 356699,  349845,  20.3088, 355584,  355584,  355319),
(28, 'LTC',  '2024-10-12', 375.478, 364.373, 462,     374.557, 374.915, 370.198),
(29, 'ETH',  '2024-10-12', 14000,   13643.1, 177.908, 13956.7, 13948.4, 13938.1),
(30, 'XRP',  '2024-10-12', 3.0588,  3.01,    137379,  3.0322,  3.0379,  3.0304),
(31, 'BCH',  '2024-10-12', 1869.75, 1825.02, 8.5764,  1856.42, 1862.02, 1852.2),
(32, 'USDT', '2024-10-12', 5.6469,  5.6013,  251111,  5.6396,  5.6396,  5.6339),
(33, 'LINK', '2024-10-12', 62.7599, 60.9654, 1447.98, 61.97,   62.3669, 62.14),
(34, 'DOGE', '2024-10-12', 0.6322,  0.6162,  299972,  0.6275,  0.629,   0.6272),
(35, 'ADA',  '2024-10-12', 2.0098,  1.9688,  40444.6, 1.9862,  1.9889,  1.9862),
(36, 'EOS',  '2024-10-12', 2.8292,  2.5187,  16.6259, 2.7872,  2.7767,  2.5189),
(37, 'XLM',  '2024-10-12', 0.52,    0.5129,  7801.29, 0.5147,  0.5198,  0.5147),
(38, 'CHZ',  '2024-10-12', 0.4051,  0.3833,  332178,  0.4051,  0.4059,  0.4045),
(39, 'AXS',  '2024-10-12', 26.9033, 25.0024, 139.227, 26.5201, 26.7995, 25.8087);

INSERT INTO tb_coins (idCoin, nameCoin, dateCoin, highCoin, lowCoin, bidCoin, askCoin) VALUES 
(71, 'AED', '2024-10-11', 1.5393, 1.513,  1.5276, 1.5281),
(72, 'ARS', '2024-10-11', 0.0058, 0.0057, 0.0058, 0.0058),
(73, 'AUD', '2024-10-11', 3.8144, 3.7259, 3.789,  3.7939),
(74, 'BOB', '2024-10-11', 0.8145, 0.8015, 0.8085, 0.8086),
(75, 'CAD', '2024-10-11', 4.1086, 4.0388, 4.0768, 4.0821),
(76, 'CHF', '2024-10-11', 6.5887, 6.4467, 6.5448, 6.5533),
(77, 'CLP', '2024-10-11', 0.0061, 0.006,  0.0061, 0.0061),
(78, 'CNY', '2024-10-11', 0.8,    0.7872, 0.7939, 0.794),
(79, 'COP', '2024-10-11', 0.0014, 0.0013, 0.0013, 0.0013),
(80, 'DKK', '2024-10-11', 0.8285, 0.8154, 0.8225, 0.8226),
(81, 'EUR', '2024-10-11', 6.1819, 6.0695, 6.1338, 6.1418),
(82, 'GBP', '2024-10-11', 7.3897, 7.2633, 7.3305, 7.3344),
(83, 'HKD', '2024-10-11', 0.7273, 0.7157, 0.722,  0.7221),
(84, 'ILS', '2024-10-11', 1.5021, 1.4799, 1.4921, 1.4922),
(85, 'INR', '2024-10-11', 0.0672, 0.0662, 0.0667, 0.0667),
(86, 'JPY', '2024-10-11', 0.0379, 0.0373, 0.0376, 0.0376),
(87, 'MXN', '2024-10-11', 0.2923, 0.2866, 0.291,  0.291),
(88, 'NOK', '2024-10-11', 0.5282, 0.5181, 0.5245, 0.5246),
(89, 'NZD', '2024-10-11', 3.451,  3.3902, 3.4277, 3.4282),
(90, 'PEN', '2024-10-11', 1.5165, 1.4852, 1.4884, 1.4886),
(91, 'PLN', '2024-10-11', 1.44,   1.4182, 1.4294, 1.4296),
(92, 'PYG', '2024-10-11', 0.0007, 0.0007, 0.0007, 0.0007),
(93, 'RUB', '2024-10-11', 0.0589, 0.0576, 0.0586, 0.0586),
(94, 'SAR', '2024-10-11', 1.5051, 1.481,  1.4939, 1.4941),
(95, 'SEK', '2024-10-11', 0.5449, 0.5357, 0.5411, 0.5411),
(96, 'SGD', '2024-10-11', 4.3295, 4.2438, 4.3004, 4.306),
(97, 'THB', '2024-10-11', 0.1702, 0.1669, 0.1693, 0.1693),
(98, 'TRY', '2024-10-11', 0.1648, 0.1622, 0.1636, 0.1637),
(99, 'TWD', '2024-10-11', 0.1756, 0.1729, 0.1745, 0.1745),
(100,'USD', '2024-10-11', 5.6537, 5.5572, 5.6126, 5.6141),
(101,'USDT','2024-10-11', 5.48,   5.48,   5.48,   5.82),
(102,'UYU', '2024-10-11', 0.1351, 0.1329, 0.1341, 0.1341),
(103,'VEF', '2024-10-11', 0.1503, 0.1456, 0.1456, 0.1456),
(104,'XRP', '2024-10-12', 3.06,   3.01,   3.03,   3.04),
(105,'ZAR', '2024-10-11', 0.3247, 0.3185, 0.3225, 0.3225);


INSERT INTO tb_share (idShare, nameShare, dateShare, openShare, highShare, lowShare, closeShare, volumeShare) VALUES 
(71,	'PETR4.SA',	'2024-10-12',	 37.6,  37.65,	37.32, 37.62,	16343000),
(72,	'BBAS3.SA',	'2024-10-12',	 26.28,	26.46,	26.17, 26.33,	12175400),
(73,	'ITSA4.SA',	'2024-10-12',	 10.52,	10.54,	10.44, 10.47,	11660200),
(74,	'TRPL4.SA',	'2024-10-12',	 24.93,	25.34,	24.51, 24.71,	3648000),
(75,  'VALE3.SA',	'2024-10-12',	 60.99, 62.27,	60.98, 62.13, 20939400),
(76,	'CMIG4.SA',	'2024-10-12',	 11.12,	11.15,	10.93, 11.02,	12321600),
(77,	'SANB11.SA','2024-10-12',  28.74,	28.85,	28.52, 28.58,	4622300),
(78,	'USIM5.SA', '2024-10-12',  6.27,	6.27,	  6.17,	 6.25,	8909300),
(79,	'ABEV3.SA',	'2024-10-12',	 13.09,	13.12,	12.84, 12.88,	31193700),
(80,	'MGLU3.SA',	'2024-10-12',	 9.22,	9.47,	  8.93,	 9.45,	28500100);