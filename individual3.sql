create database estacionamento;

create table vaga(
vaga_id serial primary key,
numero char(10) not null unique
);

create table carro(
carro_id serial primary key,
marca varchar(30) not null,
modelo varchar(30) not null,
chassi char(17) not null unique, 
vaga_id int,
foreign key (vaga_id) references vaga(vaga_id)
);

create table tempo(
tempo_id serial primary key,
data_hora_chegada timestamp not null,
data_hora_saida timestamp not null,
carro_id int,
vaga_id int,
foreign key (carro_id) references carro(carro_id),
foreign key (vaga_id) references vaga(vaga_id)
);






