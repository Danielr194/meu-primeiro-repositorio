CREATE DATABASE pratica6;
USE pratica6;
CREATE TABLE projeto (
idProjeto INT PRIMARY KEY auto_increment,
nome VARCHAR(45),
descprojeto VARCHAR(45));
alter table projeto MODIFY COLUMN descprojeto VARCHAR(100);

INSERT INTO projeto VALUES
(null, 'estacionamento', 'Utilizar o sensor de bloqueio em vagas de estacionamento'),
(null, 'Caminhão frigorifico', 'Utilizar o sensor de temperatura em caminhoes frigorificos');

CREATE TABLE aluno(
Ra INT PRIMARY KEY auto_increment,
nome VARCHAR(45),
sobrenome VARCHAR(45),
telefone CHAR(14),
fkAluno int, 
constraint fkalunorepre foreign key (fkAluno) references aluno(Ra),
fkprojeto int, constraint fkproj foreign key (fkprojeto) references projeto(idProjeto));

INSERT INTO aluno VALUES
(null, 'Daniel', 'Rocha', '(11)98541-1279', null, 2);
INSERT INTO aluno VALUES
(null, 'Gaby', 'Gallione', '(11)98987-1478', null, 1);

INSERT INTo aluno VALUES 
(null, 'poliana', 'militão', '(11)98746-5211', 2, 1),
(null, 'vinicius', 'cruz', '(11)92563-7854', 1, 2),
(null, 'relampago', 'marquinhos', '(11)97854-3216', 2, 2),
(null, 'md', 'chefe', '(11)97853-3226', 1, 1),
(null, 'dj', 'arana', '(11)99853-3225', 2, 1),
(null, 'daniel', 'zapatta', '(11)99836-3145', 2, 2);

CREATE TABLE acompanhante(
idAcompanhantes INT,
nome VARCHAR(45),
Tipo_relacao VARCHAR(45),
fkAluno int, constraint fkAlunos foreign key (fkAluno) references aluno(Ra),
constraint pkcomposta primary key (idAcompanhantes, fkAluno));

INSERT INTO acompanhante VALUES
(10, 'David', 'irmão', 1),
(11, 'Guilherme', 'irmão', 2),
(12, 'Regiane', 'mãe',2),
(13, 'Luan santana', 'amigo',3),
(14, 'sergio', 'Tio',4),
(15, 'seli', 'namorada',5),
(16, 'Blue label', 'namorada',6),
(17, 'mc lan', 'amigo',7),
(18, 'bryan', 'namorado',8);

SELECT * FROM projeto;
SELECT * FROM aluno;
SElECT * FROM acompanhante;
SELECT * FROM aluno JOIN projeto on fkprojeto = idProjeto;
SELECT * FROM aluno join acompanhante on acompanhante.fkAluno = Ra;
SELECT * FROM aluno join aluno as representante on aluno.fkAluno = representante.Ra;
SELECT * FROM aluno join projeto on fkprojeto = idProjeto WHERE projeto.nome like 'estacionamento';
SELECT * FROM aluno JOIN projeto join acompanhante on fkprojeto = idProjeto;




