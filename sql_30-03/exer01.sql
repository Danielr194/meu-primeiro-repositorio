CREATE DATABASE sprint2;
USE sprint2;
CREATE TABLE cliente (
idcliente INT PRIMARY KEY auto_increment,
nome VARCHAR(45),
sobrenome VARCHAR(45),
telefone_fixo VARCHAR(45),
telefone_celular VARCHAR(45),
endereço VARCHAR(45));

INSERT INTO cliente VALUES 
(null, 'roberto', 'rocha', '(11)8547-6347', '(11) 98541-2542', 'Rua ponto da areia, 232 Jd.Peri'),
(null, 'valdeci', 'santos', '(11)4852-3634', '(11) 91145-3577', 'Rua januário da cunha, 03 Jd.Helga'),
(null, 'David', 'Dias', '(11)6932-4582', '(11) 99574-6947', 'Rua manoel pedro de almeida, 444 Jd.Paris'),
(null, 'manoel', 'santos', '(11) 4004-8004', '(11) 94004-2554', 'Rua maria gomes da silva, 232 Jd.Angela');

CREATE TABLE pet(
idpet INT auto_increment, 
tipo VARCHAR(45),
nome VARCHAR(45),
raca VARCHAR(45),
dtNasc DATE,
fkc INT,
CONSTRAINT fkclient foreign key (fkc) REFERENCES cliente(idcliente), 
constraint pkpet primary key (idpet, fkc))auto_increment = 100;

INSERT INTO pet VALUES 
(null, 'cachorro', 'bob', 'salsinha', '2023-01-01', 1),
(null, 'gato', 'galfind', 'siames', '2022-06-08', 3),
(null, 'cachorro', 'snoopy', 'labrador', '2021-08-08', 2),
(null, 'gato', 'negrao', 'persa', '2020-11-20', 1),
(null, 'cobra', 'vibura', 'cascavel', '2020-11-20', 4),
(null, 'cachorro', 'thor', 'Poodle', '2019-01-03', 2);

SELECT * FROM cliente;
SELECT * FROM pet;


 