CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(40),
    idade int,
    serie varchar(20),
    turno varchar(15),
    matricula varchar(7),
    
    primary key (id)
);

SELECT * from tb_estudantes;

INSERT INTO tb_estudantes(nome, idade, serie, turno, matricula) VALUES("Gisele", 14, "9ºano", "Manhã", "G920221"); 
INSERT INTO tb_estudantes(nome, idade, serie, turno, matricula) VALUES("Diego", 11, "6ºano", "Tarde", "D620222");
INSERT INTO tb_estudantes(nome, idade, serie, turno, matricula) VALUES("Andressa", 15, "1ºano E.M.", "Manhã", "A120221");
INSERT INTO tb_estudantes(nome, idade, serie, turno, matricula) VALUES("Larissa", 17, "3ºano E.M.", "Manhã", "L320221");
INSERT INTO tb_estudantes(nome, idade, serie, turno, matricula) VALUES("Igor", 18, "3ºano E.M.", "Manhã", "I320221");
INSERT INTO tb_estudantes(nome, idade, serie, turno, matricula) VALUES("Evelyn", 8, "4ºano", "Tarde", "E420222");
INSERT INTO tb_estudantes(nome, idade, serie, turno, matricula) VALUES("Sofia", 12, "7ºano", "Manhã", "S720221");
INSERT INTO tb_estudantes(nome, idade, serie, turno, matricula) VALUES("Rogério", 10, "5ºano", "Tarde", "R520222");

SELECT * from tb_estudantes where idade > 10;

SELECT * from tb_estudantes where idade <= 10;

UPDATE tb_estudantes SET idade = 9 where id = 8;

SELECT * from tb_estudantes;