-- comentários
-- a linha abaixo cria um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o banco de dados
use dbinfox;
-- o bloco de instruções abaixo cria uma tabela
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
); 
-- o comando abaixo descreve a tabela
describe tbusuarios;
-- a linha abaixo insere dados  na tabela (CRUD)
-- creater -> insert
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(1, 'Flávio Ferreira de Souza','9999-9999','flavio','123@Senac');
-- a linha abaixo exibe os dados da tabela (CRUD)
-- read -> select
select * from tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2, 'Administrador','9999-9999','admin','123@Senac');
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3, 'Bill Gates','9999-9999','bill','123@Senac');

-- a linha abaixo modifica dados na tabela (CRUD)
-- update -> update
update tbusuarios set fone='8888-8888' where iduser=2;

-- a linha abaixo apagar um registro da tabela (CRUD)
-- delete -> delete
delete from tbusuarios where iduser=3;

select * from tbusuarios;

create table tbclientes(
idcli int primary key auto_increment,
nomeclie varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50)
);

describe tbclientes;

insert into tbclientes(nomeclie,endcli,fonecli,emailcli)
values('Linus Torvalds','Rua Tux, 2015','9999-9999','linus@linux.com');

select * from tbclientes;

use dbinfox;

create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipammento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)
);

describe tbos;

insert into tbos(equipammento,defeito,servico,tecnico,valor,idcli)
values ('Notebook','Não liga','Troca da fonte','Flávio',87.50,1);

select * from tbos;

-- o código abaixo traz informações de duas tabelas
select
O.os,equipammento,defeito,servico,valor,
C.nomeclie,fonecli
from tbos as O
inner join tbclientes as C
on (O.idcli = C.idcli);



