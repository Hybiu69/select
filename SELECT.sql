create database FUNCIONARIO_BD;

use FUNCIONARIO_BD;

create table func (

codfunc int auto_increment primary key not null,
nomefunc varchar(100) not null,
sfun varchar(100) not null,
bfun varchar(100) not null,
salfun dec (10,2) not null,
setfun varchar(100) not null
);

insert into func (nomefunc,sfun,bfun,salfun,setfun)
values ("Larissa Menezes","F","Jabaquara",1200.00,"Marketing"),
		("Selma Nunes","F","Grajaú",3800.00,"Vedas"),
		("Leandro Henrique","M","Socorro",2950.00,"RH"),
        ("Amélia Jeremias","F","Socorro",4200.00,"Marketing"),
        ("Claúdio Jorge Silva","M","Jabaquara",1480.00,"Vendas"),
        ("Luciano Souza","M","Pedreira",1500.00,"Vendas"),
        ("Gabriela Santos Nunes","F","Jurubatuba",4150.00,"RH"),
        ("Rafaela Vieira Jr.","F","Jabaquara",700.00,"Marketing"),
        ("Suzana Crispim","F","Grajaú",5600.00,"Produção"),
        ("Sabrina Oliveira Castro","F","Predeira",2900.00,"Marketing"),
        ("Jarbas Silva Nunes","M","Jurubatuba",5300.00,"Produção"),
        ("Ralf Borges","M","Jabaquara",1600.00,"Marketing");

select * from func;

select sum(salfun) as Soma_salarios
from func;

select count(setfun) as Funcionarios_Marketing
from func
where setfun="Marketing";

select setfun, avg(salfun) as Media_Salarios
from func
group by setfun
order by Media_Salarios desc;

select count(*) as Quantidade_Funcionarios_Socorro
from func
where salfun<3000
and bfun = "Socorro";

select setfun as Setor, count(*) as Quantidade_Funcionarios
from func
group by setfun
having count(*) > 1;
