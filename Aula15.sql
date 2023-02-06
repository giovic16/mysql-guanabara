use cadastro;

describe gafanhotos;

alter table gafanhotos
add column cursopreferido int; /* Adiciona nova coluna na tabela gafanhotos */

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso); /* Adiciona chave primaria na nova coluna e tem como referencia o idcurso */

select * from gafanhotos;
select * from cursos;

update gafanhotos 
set cursopreferido = '6'
where id = '1'; /* Atualiza o curso preferido de cada aluno */

delete from cursos
where idcurso = '6'; /* Não é possivel apagar um curso que seja referenciado na tabela gafanhotos */

select nome, cursopreferido from gafanhotos;

select nome, ano from cursos;

select g.nome, c.nome, c.ano from gafanhotos as g
inner join cursos as c on c.idcurso = g.cursopreferido
order by g.nome; /* Join para relacionar tabelas e ON para pegar a chame primária de cada tabela*/

select g.nome, c.nome, c.ano from gafanhotos as g
left outer join cursos as c on c.idcurso = g.cursopreferido
order by g.nome; /* OUTER mostra todos os alunos, left da preferencia na tabela da esquerda */

select g.nome, c.nome, c.ano from gafanhotos as g
right outer join cursos as c on c.idcurso = g.cursopreferido
order by g.nome; /* OUTER mostra todos os alunos, right da preferencia na tabela da direita */
















