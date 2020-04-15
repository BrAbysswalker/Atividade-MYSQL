show databases;
create database agenda;
use agenda;
show tables;
create table tbcontatos(
	id int primary key,
	nome varchar(50) not null,
	fone varchar(15) not null,
	email varchar(50)
);
show tables;
describe tbcontatos;
insert into tbcontatos(id,nome,fone,email)
values(1,'Lucas Gomes','1111-1111','lucasgomes@outlook.com');

insert into tbcontatos(id,nome,fone,email)
values(2,'Vinicius Bueno','2222-2222','viniciusbueno@gmai.com');

insert into tbcontatos(id,nome,fone,email)
values(3,'Gabriel Costa','3333-3333','dadecosta@gmail.com');

insert into tbcontatos(id,nome,fone)
values(4,'Luan','6666-6666');

insert into tbcontatos(id,nome,fone,email)
values(5,'Lucas dos Anjos','5555-5555','anjoéocaralho@gmail.com');
select * from tbcontatos;

select * from tbcontatos where id = 2;
select * from tbcontatos where nome = 'ALEATORIO';
select * from tbcontatos where nome like 'B%';
select * from tbcontatos order by nome asc;
select nome,fone from tbcontatos;
select nome as contato, fone as telefone from tbcontatos;
update tbcontatos set nome='Jailton' where id = 1;
update tbcontatos set email='jailton@gmail.com' where id = 4;
update tbcontatos set fone='9999-1234', email='linus@tux.com' where id = 2;
select * from tbcontatos;
delete from tbcontatos where id = 5;
select * from tbcontatos;
