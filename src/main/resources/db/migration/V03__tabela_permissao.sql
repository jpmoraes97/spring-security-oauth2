CREATE TABLE permissao (

id BIGINT(20) AUTO_INCREMENT,
descricao VARCHAR(25) NOT NULL,
PRIMARY KEY(id)

)ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO permissao(id, descricao) VALUES (1, 'ROLE_PESQUISAR_CARRO');
INSERT INTO permissao(id, descricao) VALUES (2, 'ROLE_CADASTRAR_CARRO');
INSERT INTO permissao(id, descricao) VALUES (3, 'ROLE_ATUALIZAR_CARRO');
INSERT INTO permissao(id, descricao) VALUES (4, 'ROLE_DELETAR_CARRO');
