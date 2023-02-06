/* Aula 6*/

alter table pessoas /* Altera uma tabela adicionando uma nova coluna nela */
add column profissao varchar(10);

alter table pessoas /* Altera uma tabela removendo uma coluna dela */
drop column profissao;

alter table pessoas /* Altera uma tabela adicionando uma nova coluna apos de um certo campo */
add column profissao varchar(10) after nome;

alter table pessoas 
add column codigo int first; /* O comando first faz com que o campo se posicione em primeiro */

alter table pessoas 
modify column profissao varchar(20); /* O comando modify altera as configuracoes da coluna */

alter table pessoas 
change column profissao prof varchar(20); /* O comando change utilizado altera o nome da coluna */

alter table gafanhotos
rename to pessoas; /* O comando rename serve para renomear o nome da tabela */

create table if not exists cursos ( /* if not null so cria uma tabela se ela nao existir */
	nome varchar(30) not null unique, 
    descricao text,
    carga int unsigned,
    totalaulas int unsigned,
    ano year default '2023'
)default charset = utf8;

alter table cursos 
add column idcurso int first;

describe cursos;

alter table cursos
add primary key (idcurso);