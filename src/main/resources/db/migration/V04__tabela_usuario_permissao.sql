CREATE TABLE usuario_permissao (

usuario_id BIGINT(20) NOT NULL,
permissao_id BIGINT(20) NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuario(id),
FOREIGN KEY (permissao_id) REFERENCES permissao(id)

)ENGINE = InnoDB DEFAULT CHARSET = utf8;


INSERT INTO usuario_permissao(usuario_id , permissao_id) VALUES (1,1);
INSERT INTO usuario_permissao(usuario_id , permissao_id) VALUES (1,2);
INSERT INTO usuario_permissao(usuario_id , permissao_id) VALUES (1,3);
INSERT INTO usuario_permissao(usuario_id , permissao_id) VALUES (1,4);

INSERT INTO usuario_permissao(usuario_id , permissao_id) VALUES (2,1);