CREATE TABLE carro (

id BIGINT(20) AUTO_INCREMENT,
modelo VARCHAR(20) NOT NULL,
marca VARCHAR(20) NOT NULL,
ano VARCHAR(4) NOT NULL,
PRIMARY KEY(id)

)ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO carro(id, modelo, marca, ano) VALUES (1, 'Gol', 'Volkswagen', '2006');
INSERT INTO carro(id, modelo, marca, ano) VALUES (2, 'Corsa', 'Chevrolet', '2010');
INSERT INTO carro(id, modelo, marca, ano) VALUES (3, 'i30', 'Hyundai', '2012');
INSERT INTO carro(id, modelo, marca, ano) VALUES (4, 'Fusion', 'Ford', '2014');