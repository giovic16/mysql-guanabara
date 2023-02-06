/* Aula 7 - Manipulando Registro/Linhas/Tuplas (UPDATE, DELETE e TRUNCATE) */

insert into cursos values 
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à linguagem Java','10','29','2000'),
('6','MySQL','Banco de dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','Youtuber','Gerar polêmica e ganhar inscritos','5','2','2018');

select * from cursos;

/* Modifica cursos configurando o nome para HTML5, onde o idcurso é igual a 1 */
update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
Limit 1; /* Limita a lateração a uma linha*/

/* Update que atualiza mais de uma linha, funciona apenas qnd o safe update está desligado*/
update cursos
set carga = '0', ano = '2018'
where ano = '2050';

delete from cursos 
where idcurso = '8';

delete from cursos 
where ano = '2050'
limit 2;

truncate table cursos; /* Apaga todos os registros da tabela */

