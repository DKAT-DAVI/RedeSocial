/*Criação do Banco de Dados*/
create database RedeSocial;
use RedeSocial;

/*Tabela Pessoa*/
create table pessoa(
nome varchar(50),
senha varchar(20),
email varchar(40) unique,
fotoPerfil blob,
perfilpv varchar(20),
perfilAberto varchar(20),
usuario varchar(20) primary key);

/*Atributo multivalorado*/
create table link(
usuario varchar(20),
link varchar(100),
primary key(usuario, link),
foreign key (usuario)
references pessoa(usuario)
);

/*Tabela de autorelação*/
create table recusa(
recusado varchar(20), 
recusador varchar(20),
datarecusa datetime,
foreign key (recusado)  references pessoa(usuario), 
foreign key (recusador)  references pessoa(usuario),
primary key(recusado, recusador, datarecusa));

/*Tabela Post*/
create table post(
idPost int,
descTexto text,
dataHora datetime,
foto blob,
usuario varchar(20),
primary key(idPost, usuario),
foreign key(usuario)
references pessoa(usuario)
);

/*Tabelas de relação entre Post e Pessoa*/
create table marca(
idPost int,
usuario varchar(20),
primary key (usuario, idPost),
foreign key (idPost) references post(idPost),
foreign key (usuario) references pessoa(usuario)
);

create table reagegostei(
idPost int,
usuario varchar(20),
primary key (usuario, idPost),
foreign key (idPost) references post(idPost),
foreign key (usuario) references pessoa(usuario)
);

/*Tabela Comentário*/
create table comentario(
idComentario int,
texto text,
link varchar(100),
dataHora datetime,
usuario varchar(20),
idPost int,
primary key (idComentario, usuario, idPost),
foreign key (idPost) references post(idPost),
foreign key (usuario) references pessoa(usuario)
);

/*Tabela Tag*/
create table tag (
idTag int primary key,
palavraChave varchar(20) 
);

/*Tabela de relação entre Post e Tag*/
create table contemTag(
idTag int,
idPost int,
primary key (idTag, idPost),
foreign key (idTag) references tag(idTag),
foreign key (idPost) references post(idPost)
);
