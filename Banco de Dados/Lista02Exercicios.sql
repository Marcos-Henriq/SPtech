create database sprint1;
use sprint1;

create table Atleta(
idAtleta int primary key auto_increment,
nome varchar(40),
modalidade varchar(40),
qtdmedalha inT
);

insert into Atleta(nome,modalidade,qtdMedalha) values
('Rogerinho','Basquete',5),
('Naruto','Natação',3),
('Claudinho','Basquete',6),
('Douglas','Basquete',6),
('Dilma','Vôlei',10);


-- • Exibir todos os dados da tabela.

select * from Atleta;

-- Atualizar a quantidade de medalhas do atleta com id=1;

update Atleta set qtdMedalha = 10 where idAtleta = 1;

-- Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;

update Atleta set qtdMedalha = 20 where idAtleta in (3,4);

-- Atualizar o nome do atleta com o id=4;

update Atleta set nome = "Ednaldo" where idAtleta = 4;
 
-- • Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date;

alter table Atleta add column dtNasc date;

update Atleta set dtNasc = '1980-03-02' where idAtleta = 1;
update Atleta set dtNasc = '1982-02-24' where idAtleta = 2;
update Atleta set dtNasc = '1990-05-26' where idAtleta = 3;
update Atleta set dtNasc = '1998-02-04' where idAtleta = 4;
update Atleta set dtNasc = '2000-05-05' where idAtleta = 5;
 
select * from Atleta;

-- Excluir o atleta com o id=5;

delete from Atleta where idAtleta = 5; 

-- Exibir os atletas onde a modalidade é diferente de natação;

select * from Atleta where modalidade != 'Natação';

-- Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3;

select * from Atleta where qtdMedalha >= 3;

-- Modificar o campo modalidade do tamanho 40 para o tamanho 60;

alter table Atleta modify column modalidade varchar(60);

-- Descrever os campos da tabela mostrando a atualização do campo modalidade;

desc Atleta;

-- Limpar os dados da tabela;

truncate Atleta;


-- =================================================================================
-- Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40), artista (tamanho 40), genero (tamanho 40), sendo que idMusica é a chave primária da tabela.
-- Inserir dados na tabela, procurando colocar um gênero de música que tenha mais de uma música, e um artista, que tenha mais de uma música cadastrada. Procure inserir pelo
-- menos umas 7 músicas.

create table Musica (
idMusica int primary key auto_increment,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

insert into Musica(titulo,artista,genero) values
('Urubus','Matuê','Rap/Hip Hop'),
('Invincible','Pop smoke','Rap/Hip Hop'),
('Dior','Pop smoke','Rap/Hip Hop'),
('We Are!','Hiroshi Kitadani','Anime'),
('We Go!','Hiroshi Kitadani','Anime'),
('Who you foolin','Gunna','Rap/Hip Hop'),
('Beat it','Michael Jackson','Pop'),
('Billie Jean','Michael JAckson','Pop');

-- Exibir todos os dados da tabela

select * from Musica;

-- Adicionar o campo curtidas do tipo int na tabela;

alter table Musica add column curtidas int;

--  Atualizar o campo curtidas de todas as músicas inseridas;

update Musica set curtidas = 10 where idMusica = 1;
update Musica set curtidas = 5 where idMusica = 2;
update Musica set curtidas = 29 where idMusica = 3;
update Musica set curtidas = 23 where idMusica = 4;
update Musica set curtidas = 33 where idMusica = 5;
update Musica set curtidas = 22 where idMusica = 6;
update Musica set curtidas = 55 where idMusica = 7;
update Musica set curtidas = 66 where idMusica = 8;

-- Modificar o campo artista do tamanho 40 para o tamanho 80

alter table Musica modify column artista varchar(50);

-- Atualizar a quantidade de curtidas da música com id=1;

update Musica set curtidas = 90 where idMusica = 1;

-- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;

update Musica set curtidas = 50 where idMusica in(2,3);

-- Atualizar o nome da música com o id=5;

update Musica set titulo = 'We Go' where idMusica = 5;

-- Excluir a música com o id=4;

delete from Musica where idMusica = 4;

-- Exibir as músicas onde o gênero é diferente de funk;

select * from Musica where genero != 'Funk';

-- Exibir os dados das músicas que tem curtidas maior ou igual a 20;

select * from Musica where curtidas >= 20;

-- Descrever os campos da tabela mostrando a atualização do campo artista;

desc Musica;

-- Limpar os dados da tabela; 

Truncate Musica;


-- ==========================================================================================================
-- Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero (tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela.
-- Inserir dados na tabela, procurando colocar um gênero de filme que tenha mais de um filme, e um diretor, que tenha mais de um filme cadastrado. Procure inserir pelo menos uns 7 filmes.


create table Filme(
idFilme int primary key auto_increment,
titulo varchar(50),
genero varchar(40),
diretor varchar(40)
);

insert into FIlme(titulo,genero,diretor) values
('Avengers: Endgame','Ficção científica','Anthony Russo'),
('Invocação do Mal','Terror','James Wan'),
('A Freira','Terror','Corin Hardy'),
('Bee Movie','Comédia','Steve Hickner'),
('Shrek','Comédia','Andrew Adamson'),
('Cars','Comédia','John Lasseter'),
('Star Wars: Episode VII — The Force Awakens','Ficção científica','J. J. Abrams'),
('Rogue One: A Star Wars Story','Ficção científica','Gareth Edwards');

alter table FIlme rename to Filme;

-- Exibir todos os dados da tabela

select * from Filme;

-- Adicionar o campo protagonista do tipo varchar(50) na tabela;

alter table Filme add column protagonista varchar(50);

-- Atualizar o campo protagonista de todas os filmes inseridos;

update Filme set protagonista = 'Mingau' where idFilme = 1;
update Filme set protagonista = 'Naruto' where idFilme = 2;
update Filme set protagonista = 'Sei lá' where idFilme = 3;
update Filme set protagonista = 'Barry' where idFilme = 4;
update Filme set protagonista = 'Shrek' where idFilme = 5;
update Filme set protagonista = 'Mcqueen' where idFilme = 6;
update Filme set protagonista = 'Jedi' where idFilme = 7;
update Filme set protagonista = 'Han solo' where idFilme = 8;


-- Modificar o campo diretor do tamanho 40 para o tamanho 150;

alter table Filme modify column diretor varchar(150);

-- Atualizar o diretor do filme com id=5;

update Filme set diretor = 'Ednaldo' where idFilme = 5;

-- Atualizar o diretor dos filmes com id=2 e com o id=7;

update Filme set diretor = 'Claudinho Roberto' where idFilme in(2,7);

-- Atualizar o título do filme com o id=6;

update Filme set titulo = 'Minecraft' where idFilme = 6;

-- Excluir o filme com o id=3;

delete from Filme where idFilme = 3;

-- Exibir os filmes em que o gênero é diferente de drama;

select * from Filme where genero != 'Drama';

-- Exibir os dados dos filmes que o gênero é igual ‘suspense’;

select * from filme where genero = 'suspense';

-- Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor;

desc Filme;

-- Limpar os dados da tabela;

truncate Filme;

-- ===============================================================================

-- datetime = yyyy-mm-dd | hh:mm:ss

-- comando check
-- alter table Filme add column statusFilme varchar(50),
-- ADD CHECK (statusFilme = 'lançamento'or statusFilme = 'pré-estreia');
-- create table Tabela(
-- idTabela int primary key auto_increment,
-- statusTabela char(1),
-- check (statusTabela = 'a' or statusTabela = 'f')
-- );

-- setando os unicos valores validos na hora de cadastrar dados.alter


-- maneira mais rapida 

-- add check (in('lançamento','pré-estreia'));

-- Criar a tabela chamada Professor para conter os dados: idProfessor, nome (tamanho 50),
-- especialidade (tamanho 40), dtNasc (date), sendo que idProfessor é a chave primária da tabela.
-- Exemplo do campo data: ‘AAAA-MM-DD’, ‘1983-10-13’.

create Table Professor(
idProfessor int primary key auto_increment,
nome varchar(50),
especialidade varchar(40),
dtNasc date
);

insert into Professor(nome,especialidade,dtNasc) values
('Edno','TI','1999-10-02'),
('Jaron jackson Jr.','TI','2000-02-03'),
('Dilma','BD','1999-07-15'),
('Cristiano Ronaldo','BD','1980-09-20'),
('Rogerinho','TI','1985-03-23'),
('Ednaldo','DESIGN','1970-03-25'),
('Edvaldo','DESIGN','1980-04-20'),
('Clébisvaldo','BD','1950-05-05');

-- Exibir todos os dados da tabela

select * from Professor;

-- Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’,‘assistente’ ou ‘titular’;

alter table Professor add column funcao varchar(50),
add check(funcao = 'monitor' or funcao = 'assistente' or funcao = 'titular');

-- Atualizar os professores inseridos e suas respectivas funções;

update Professor set funcao = 'monitor' where idProfessor in(1,2,3);
update Professor set funcao = 'assistente'where idProfessor in(4,5,6);
update Professor set funcao = 'titular' where idProfessor in(7,8);

-- Inserir um novo professor;

insert into Professor(nome, especialidade,dtNasc,funcao) values
('Genisvaldo','TI','1987-02-20','titular');

-- Excluir o professor onde o idProfessor é igual a 5;

delete from Professor where idProfessor = 5;

-- Exibir apenas os nomes dos professores titulares;

select nome from Professor where funcao = 'titular';

--  Exibir apenas as especialidades e as datas de nascimento dos professores monitores;

select especialidade, dtNasc from Professor where funcao = 'monitor';	

-- Atualizar a data de nascimento do idProfessor igual a 3;

update Professor set dtNasc = '1999-02-09' where idProfessor = 3;

-- Limpar a tabela Professor;

truncate Professor;


-- ===================================================================================================
-- Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50),
 -- sigla (tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela.
 
 create table Curso(
	idCurso int primary key auto_increment,
	nome varchar(50),
	sigla char(3),
    coordenador varchar(50)
 );
 
 insert into Curso(nome,sigla,coordenador) values 
 ('Banco de Dados','BD','Rogerinho'),
 ('Design','DG','Claudia'),
 ('Basquete','BQ','Ednaldo'),
 ('Java','JA','Naruto');
 
 -- Exibir todos os dados da tabela.

select * from Curso;

-- Exibir apenas os coordenadores dos cursos.

select coordenador from Curso;
 
-- Exibir apenas os dados dos cursos de uma determinada sigla.

select * from Curso where sigla = 'JA';

-- Exibir os dados da tabela ordenados pelo nome do curso.

select * from Curso order by nome;

-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.

select * from Curso order by nome desc;

-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.

select * from Curso where nome like 'J%';

-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.

select * from Curso where nome like '%a';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.

select * from Curso where nome like '_a%';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.

select * from Curso where nome like '%v_';

-- Elimine a tabela 

drop table Curso;

-- Você vai criar uma tabela para armazenar os dados de revistas (como por ex: Veja, Isto é,Epoca, Quatro Rodas, Claudia, etc).
-- Escreva e execute os comandos para: Criar a tabela chamada Revista para conter os campos: idRevista (int e chave primária da tabela),
-- nome (varchar, tamanho 40),categoria (varchar, tamanho 30).Os valores de idRevista devem iniciar com o valor 1 e ser incrementado automaticamente pelo sistema.
-- Inserir 4 registros na tabela, mas sem informar a categoria.

create table Revista(
idRevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30)
);
alter table Revista modify column categoria varchar(40), 
add check(categoria = 'Entretenimento' or categoria = 'Esporte' or categoria = 'Informante');

insert into Revista(nome) values
('Isto é'),
('Veja'),
('Quatro Rodas'),
('Epoca');

-- • Exibir todos os dados da tabela.

select * from Revista;

-- Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente.

update Revista set categoria ='Entretenimento' where idRevista in(1,2,4);
update Revista set categoria = 'Esporte' where idRevista = 3;


-- Insira mais 3 registros completos

insert into Revista(nome,categoria) values 
('Revista ESPN','Esporte'),
('Placar','Esporte'),
('Mingau','Entretenimento');

-- Exibir novamente os dados da tabela.

select * from Revista;

-- Exibir a descrição da estrutura da tabela.

desc Revista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres

alter table Revista modify column categoria varchar(50);

-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria

desc Revista;