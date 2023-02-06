create database cadastro
default character set utf8
default collate utf8_general_ci; /* Cria a base de dados/banco de dados, utf8 para aceitar os caracteres brasileiros */

drop database cadastro; /* Apaga a base de dados/banco de dados */

use cadastro; /* inicializa o banco de dados */

create table pessoas ( /* Cria a tabela e dentro as colunas */
	id int not null auto_increment,
	nome varchar(30) not null,
    nascimento date,
    sexo enum('M','F'),
    peso decimal(5,2),
    altura decimal(3,2),
    nacionalidade varchar(20) default 'Brasil',
    primary key(id)
)default charset = utf8;

describe pessoas; /* Retorna informacoes da tabela */

insert into pessoas values /* Insere dados na tabela */
(default, 'Ana','1975-12-22','F','52.3','1.45', 'EUA'),
(default, 'Pedro','2000-07-15','M','52.3','1.45', 'Brasil'),
(default, 'Maria','1999-05-30','F','75.9','1.70', 'Portugal');

select * from pessoas; /* Selecione TUDO da tabela pessoas*/


