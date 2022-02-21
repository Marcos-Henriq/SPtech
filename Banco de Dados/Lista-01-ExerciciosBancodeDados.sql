create database bdEx1;

use bdEx1;

create table Atleta(
idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int
);

insert into Atleta values
(1,'Robertin','Basquete',2),
(2,'Juvenal','Basquete',5),
(3,'Clebervaldo','Atletismo',6),
(4,'Roberta','Atletismo',2),
(5,'Naruto','Futebol',5),
(6,'Sasuke','Futebol',7);



-- SELECTS

-- EXIBIR TODOS OS DADOS DA TABELA

SELECT * FROM Atleta;

-- EXIBIR apenas os nomes e quantidade de medalhas dos atletas.

SELECT nome,qtdMedalha FROM Atleta;

-- Exibir apenas os dados dos atletas de uma determinada modalidade

SELECT * FROM Atleta WHERE modalidade = 'Basquete';

-- Exibir os dados da tabela ordenados pela modalidade.

SELECT * FROM Atleta ORDER BY modalidade;

-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente

SELECT * FROM Atleta ORDER BY qtdMedalha desc;

-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s

SELECT * FROM Atleta where nome like '%s%';

-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.

SELECT * FROM Atleta WHERE nome like 'J%';

-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o

SELECT * FROM Atleta WHERE nome like '%o';

-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r

INSERT INTO Atleta VALUES (7,'Romero','Futebol',3);

SELECT * FROM Atleta WHERE nome like '%r_';

-- Eliminar a tabela.

drop table Atleta;



-- =====================================================================================
-- 2- Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40), artista (tamanho 40), 
-- genero (tamanho 40), sendo que idMusica é a chave primária da tabela.


create table Musica(
idMusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

INSERT INTO Musica VALUES 
(1,'Como É Que tá?','Major RD','Rap/Hip Hop'),
(2,'60k','Major RD','Rap/Hip Hop'),
(3,'Freio da Blazer','L7NNON','Rap/Hip Hop'),
(4,'We Are!','Hiroshi Kitadani','Anime'),
(5,'We Go!','Hiroshi Kitadani','Anime'),
(6,'Watermelon Sugar','Harry Styles','Pop/Alternative'),
(7,'Up','Cardi B','Rap/Hip Hop'),
(8,'Beat It','Michael Jackson','Pop'),
(9,'Billie Jean','Michael Jackson','Pop'),
(10,'Kurt Cobain','Duzz','Rap/Hip Hop');

-- Exibir todos os dados da tabela

SELECT * FROM Musica;

-- Exibir apenas os títulos e os artistas das músicas

SELECT titulo,artista FROM Musica;

-- Exibir apenas os dados das músicas de um determinado gênero.

SELECT * FROM Musica WHERE genero = 'Rap/Hip Hop';

-- Exibir apenas os dados das músicas de um determinado artista.

SELECT * FROM Musica WHERE artista = 'Major RD';

-- Exibir os dados da tabela ordenados pelo título da música.

SELECT * FROM Musica ORDER BY titulo;

-- Exibir os dados da tabela ordenados pelo artista em ordem decrescente.

SELECT * FROM Musica ORDER BY  artista desc; 

-- Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.

SELECT * FROM Musica WHERE titulo LIKE 'B%';

-- Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.

SELECT * FROM Musica WHERE titulo LIKE '%n';

-- Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.

SELECT * FROM Musica WHERE genero LIKE '_a%';

-- Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.

SELECT * FROM Musica WHERE titulo LIKE '%a_';

-- Elimine a tabela

drop table Musica;

-- =========================================================================
-- 3- Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero
-- (tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela.


create table Filme(
idFilme int primary key,
titulo varchar(50),
genero varchar(40),
diretor varchar(40)
);

insert into Filme Values 
(1,'Star Wars: The Last Jedi','Ficção científica','Rian Johnson'),
(2,'Avengers: Endgame','Ficção científica','Anthony Russo'),
(3,'Spider-Man: No Way Home','Aventura','Jon Watts'),
(4,'2 Fast 2 Furious','Ação','John Singleton'),
(5,'Bee Movie','Comédia','Simon J. Smith'),
(6,'Shrek','Comédia','Vicky Jenson'),
(7,'Cars','Comédia','John Lasseter'),
(8,'Kimetsu no Yaiba: Mugen Ressha-hen','Ação','Haruo Sotozaki');

-- Exibir todos os dados da tabela

select * from Filme;

-- Exibir apenas os títulos e os diretores dos filmes

select titulo,diretor from Filme;

-- Exibir apenas os dados dos filmes de um determinado gênero

select * from Filme where genero = "Ficção científica";

-- Exibir apenas os dados dos filmes de um determinado diretor

select * from Filme where diretor = 'John Singleton';

-- Exibir os dados da tabela ordenados pelo título do filme

select * from Filme order by titulo;

-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.

select * from Filme order by diretor desc;

-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra

select * from Filme where titulo like 'S%';

-- Exibir os dados da tabela, dos filmes cujo artista termine com uma determinada letra.

select * from Filme where titulo like '%e';

-- Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra.

select * from Filme where genero like '_o%';

-- Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra.

select * from Filme where titulo like '%e_';

-- Elimine a tabela.

drop table Filme;


-- =====================================================================================
-- 4- Criar a tabela chamada Professor para conter os dados: idProfessor, nome (tamanho 50),
-- especialidade (tamanho 40), dtNasc (date), sendo que idProfessor é a chave primária da tabela.


create table Professor(
idProfessor int primary key,
nome varchar(50),
especialidade varchar(40),
dtNasc date
);

insert into Professor values
(1,'Claudio Bravo','Matemática','1981-03-01'),
(2,'Carlito Teves','Português','1984-02-05'),
(3,'Willian','Geografia','1988-10-09'),
(4,'Daniel','Matemática','1990-05-09'),
(5,'Guilherme Pereira','Português','1992-11-18'),
(6,'Edna','Geografia','1989-04-04'),
(7,'Ednaldo','Matemática','1994-09-03'),
(8,'Claudio','Artes','1995-10-02');

-- Exibir todos os dados da tabela

select * from Professor;

-- Exibir apenas as especialidades dos professores.

select especialidade from Professor;

-- Exibir apenas os dados dos professores de uma determinada especialidade.

select * from Professor where especialidade = 'Matemática';

-- Exibir os dados da tabela ordenados pelo nome do professor.

select * from Professor order by nome;

-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente

select * from Professor order by dtNasc desc;

-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.

select * from Professor where nome like 'E%';

-- Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra.

select * from Professor where nome like'%a';

-- Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra.

select * from Professor where nome like '_d%';

-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra.

select * from Professor where nome like '%d_';

-- Elimine a tabela.

drop table Professor;


-- ========================================================================================
-- 5- Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50), sigla
-- (tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela.

create table Curso (
idCurso int primary key,
nome varchar(50),
sigla varchar(3),
coordenador varchar(50)
);

insert into Curso values
(1,'Banco de Dados','BD','Rogerinho'),
(2,'UX Design','UX','Paula Antunes'),
(3,'Técnicas de Programação em Java','TPJ','Ednaldo Pereira'),
(4,'Introdução Adobe Illustrator','IAI','Dilma');

-- Exibir todos os dados da tabela.

select * from Curso;

-- Exibir apenas os coordenadores dos cursos

select coordenador from Curso;

-- Exibir apenas os dados dos cursos de uma determinada sigla

select * from Curso where sigla = 'UX';

-- Exibir os dados da tabela ordenados pelo nome do curso.

select * from Curso order by nome;

-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente

select * from Curso order by coordenador desc;

-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.

select * from Curso where nome like 'I%';

-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.

select * from Curso where nome like '%a';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.

select * from Curso where nome like '_e%';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.

select * from Curso where nome like '%o_';

-- Elimine a tabela

drop table Curso;


-- ==============================================================================
-- 6-Escreva e execute os comandos para: Criar a tabela chamada Revista para conter os campos:
-- idRevista (int e chave primária da tabela), nome (varchar, tamanho 40), categoria (varchar, tamanho 30).
-- Os valores de idRevista devem iniciar com o valor 1 e ser incrementado automaticamente pelo sistema.
-- Inserir 4 registros na tabela, mas sem informar a categoria.

create table Revista (
idRevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30)
);

insert into Revista Values
(null,'Isto é',null),
(null,'Época',null),
(null,'Veja',null),
(null,'WOOW',null);

-- Exibir todos os dados da tabela.

select * from Revista;

-- Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente.

update Revista set categoria = 'Informação' where idRevista = 1;
update Revista set categoria = 'Entretenimento' where idRevista = 2;
update Revista set categoria = 'Entrenimento' where idRevista = 3;
update Revista set categoria = 'Informação' where idRevista = 4;

-- • Insira mais 3 registros completos

insert into Revista Values
(null,'Newsweek','Informação'),
(null,'Businessweek','Informação'),
(null,'National Geographic','Entretenimento');

select * from Revista;

-- Exibir a descrição da estrutura da tabela

describe Revista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres

Alter table Revista modify categoria varchar(40);

-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria

describe Revista;

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15).

alter table Revista add periocidade varchar(15);

select * from Revista;

-- • Excluir a coluna periodicidade da tabela.

alter table Revista drop periocidade;

select * from Revista;

-- EXCLUIR O BANCO DE DADOS

drop database bdex1;
