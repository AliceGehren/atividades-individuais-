create database hotel; 

create table funcionario(
id serial primary key,
nome varchar(30),
cpf char(11), 
cargo_id int
);

create table cargo(
id serial primary key,
nome varchar(30)
);

create table hospede(
id serial  primary key,
nome varchar(30),
cpf char(11), 
endereco_id int
);

create table endereco(
id serial primary key, 
logradouro varchar(30),
localidade varchar(30), 
cep char(8), 
numero char(4), 
bairro varchar(30), 
uf varchar(30)
);

create table agenda(
id serial primary key,
data_checkin date, 
data_checkout date, 
hospede_id int, 
funcionario_id int
);

ALTER TABLE funcionario
ADD CONSTRAINT FK_cargo
FOREIGN KEY (id) REFERENCES cargo(id);

ALTER TABLE hospede
ADD CONSTRAINT FK_endereco
FOREIGN KEY (id) REFERENCES endereco(id);

ALTER TABLE agenda
ADD CONSTRAINT FK_funcionario
FOREIGN KEY (id) REFERENCES funcionario(id);

ALTER TABLE agenda
ADD CONSTRAINT FK_hospede
FOREIGN KEY (id) REFERENCES hospede(id);

insert into funcionario (nome, cpf, cargo_id) values
('maria', '12345678909', 1),
('alice', '12345678908', 2),
('ana', '12345678907', 3),
('gabi', '12345678906', 4),
('julia', '12345678905', 5);

INSERT INTO cargo (nome) VALUES
('Recepcionista'),
('Gerente'),
('Camareira'),
('Cozinheiro'),
('Segurança');


INSERT INTO hospede (nome, cpf, endereco_id) VALUES
('Carlos Silva', '11111111111', 1),
('Fernanda Souza', '22222222222', 2),
('Marcos Lima', '33333333333', 3),
('Paula Rocha', '44444444444', 4),
('Lucas Dias', '55555555555', 5);

INSERT INTO endereco (logradouro, localidade, cep, numero, bairro, uf) VALUES
('Rua A', 'São Paulo', '01001000', '101', 'Centro', 'SP'),
('Rua B', 'Rio de Janeiro', '20040030', '202', 'Copacabana', 'RJ'),
('Rua C', 'Belo Horizonte', '30140071', '303', 'Savassi', 'MG'),
('Rua D', 'Porto Alegre', '90010000', '404', 'Moinhos', 'RS'),
('Rua E', 'Curitiba', '80010020', '505', 'Batel', 'PR');

INSERT INTO agenda (data_checkin, data_checkout, hospede_id, funcionario_id) VALUES
('2025-07-01', '2025-07-05', 1, 1),
('2025-07-10', '2025-07-15', 2, 2),
('2025-07-12', '2025-07-14', 3, 3),
('2025-07-20', '2025-07-25', 4, 4),
('2025-07-28', '2025-08-01', 5, 5);

SELECT f.nome AS funcionario, f.cpf, c.nome AS cargo
FROM funcionario f
inner JOIN cargo c ON f.cargo_id = c.id;

SELECT * FROM cargo;

SELECT bairro, uf FROM endereco;




