-- correção do exercicio Treinador x nadador

CREATE DATABASE natacao;
USE natacao;

CREATE TABLE treinador(
idTreinador INT PRIMARY KEY auto_increment,
nome varchar(45), -- + sobrenome = atrituto composto
sobrenome VARCHAR(45), 
telCel char(14), -- + telcomercial = atrivuto multivalorado
telcomercial CHAR(15), 
fkOrientador int,
constraint fkrecursiva foreign key (fkOrientador) references treinador (idTreinador));

-- cadastrar um treinador orientador = fk is null
INSERT INTO treinador VALUES
(null, 'azul', 'marinho', '(11)98765-1234',null, null);

SELECT * FROM treinador;

-- cadastrar os treinadores orientados pelo treinador 1
INSERT INTO treinador VALUES
(null, 'Rosa', 'pink', null, null, 1),
(null, 'Preto', 'fosco', null, '(48)33695566', 1);

SELECT * FROM treinador JOIN treinador as orientador  on orientador.idTreinador = treinador.fkOrientador;

-- A pergunt-- a do dia é: quem tem a fk ????????????????????????????????????????  

CREATE TABLE nadador(
idNadador INT auto_increment,
nome VARCHAR(45),
dtNasc DATE,
fkTreinador int, 
constraint fknadadortreinador foreign key (fkTreinador) 
references treinador(idTreinador),
constraint pkCompsto primary key (idNadador, fkTreinador)) auto_increment = 100;

INSERT INTO nadador VALUES
(null, 'Batman', '1937-01-01', 1),
(null, 'Spiderman', '1956-01-01', 2),
(null, 'Mulher maravilha', '1933-01-01', 3);

SELECT * FROM nadador;

SELECT nadador.nome as Nomenadador, treinador.nome as Nometreinador, 
orientador.nome as Nomeorientador FROM nadador JOIN treinador on nadador.fkTreinador = treinador.idTreinador
JOIN treinador as orientador 
on treinador.Fkorientador= orientador.idTreinador;





-- EXEMPLO DADO NA LOUSA

CREATE TABLE aluno(
idAluno INT primary KEY auto_increment,
nome varchar(45),
fkMonitor int, 
constraint fkAlunomonitor foreign key (fkMonitor)
references aluno(idAluno));

INSERT INTO aluno VALUES
	(null, 'Ben 10', null);
    
INSERT INTO aluno VALUES 
	(null, 'Ben SuperShock', 1),
	(null, 'Ben NãoShock', 1),
	(null, 'Ben HiperShock', 2);
    
SELECT * FROM aluno JOIN aluno as monitor on aluno.fkMonitor = monitor.idAluno;