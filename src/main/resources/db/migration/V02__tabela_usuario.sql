CREATE TABLE usuario(

id BIGINT(20) AUTO_INCREMENT,
nome VARCHAR(25) NOT NULL,
email VARCHAR(25) NOT NULL,
senha VARCHAR(80) NOT NULL,
PRIMARY KEY(id)

)ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO usuario(id, nome, email, senha) VALUES (1, 'Administrador', 'admin@admin.com', '$2a$10$.BYpiCZ8rcvxdPoj5zrJE.KxpMSMhZHtp/T/fNOArMueSj6oBriO2');
INSERT INTO usuario(id, nome, email, senha) VALUES (2, 'Vendedor', 'vendedor@vendedor.com', '$2a$10$jf1B6i3zftieyTo6wk/7i.lq7Uiw4g/te0sWYWJ.eiHh8G3J.hhUO');