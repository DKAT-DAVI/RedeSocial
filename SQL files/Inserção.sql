/*Inserções no BD*/
/*Tabela Pessoa*/
insert into pessoa(nome, senha, email, fotoPerfil,
perfilpv, perfilAberto, usuario) values
("Katerine Nayara",
"Kat123321",
"knrl@aluno.ifnmg.edu.br",
null,
"kat_ribeiro", 
"ka_ribeiro09", 
"@katerine_nayara");

insert into pessoa(nome, senha, email, fotoPerfil,
perfilpv, perfilAberto, usuario) values
("Kheuhy Barral",
"Keub321",
"kdcb@aluno.ifnmg.edu.br",
null,
"pvkeuhy", 
"kheuhybarral", 
"@kheuhydjovanna");

insert into pessoa(nome, senha, email, fotoPerfil,
perfilpv, perfilAberto, usuario) values
("Edson Mendes de Souza Junior",
"rural476",
"emsj@aluno.ifnmg.edu.br",
null,
"junim.alt", 
"edsonms_jr", 
"@edsonjunior");

insert into pessoa(nome, senha, email, fotoPerfil,
perfilpv, perfilAberto, usuario) values
("Gabriel Soares",
"Gabs777",
"esj@aluno.ifnmg.edu.br",
null,
"pvbiel", 
"gabrquel", 
"@gabrielsoares");

insert into pessoa(nome, senha, email, fotoPerfil,
perfilpv, perfilAberto, usuario) values
("George Lucas",
"gg427000",
"gl@aluno.ifnmg.edu.br",
null,
"pvd_lucasz", 
"gee.lucasz", 
"@georgelucas");

insert into pessoa(nome, senha, email, fotoPerfil,
perfilpv, perfilAberto, usuario) values
("Douglas Badaró",
"thisisme",
"djmb@aluno.ifnmg.edu.br",
null,
"thisisprivate", 
"thisisbadaro", 
"@douglasbadaro");

insert into pessoa(nome, senha, email, fotoPerfil,
perfilpv, perfilAberto, usuario) values
("Bruno Ferreira",
"calvao4decria2",
"bfr@aluno.ifnmg.edu.br",
null,
"brunipv", 
"brunu_fer", 
"@brunoferreira");

insert into pessoa(nome, senha, email, fotoPerfil,
perfilpv, perfilAberto, usuario) values
("Davi Kalel Andrade Teixeira",
"abóbora",
"dkat@aluno.ifnmg.edu.br",
null,
"private_dkat", 
"daviateixeira", 
"@davikalel");

/*Links das pessoas*/
insert into link(usuario, link)
values
("@katerine_nayara", "www.pequidogoias.com"),
("@kheuhydjovanna", "minhaarte.com"),
("@edsonjunior", "www.cruzeiro.com"),
("@edsonjunior", "https://www.youtube.com/channel/UCdCpty_cpcYL-FF2atKan3w"),
("@katerine_nayara", "www.meuposts.com"),
("@kheuhydjovanna", "www.ifnmg.edu.br"),
("@douglasbadaro", "www.steam.com"),
("@douglasbadaro", "www.ifnmg.edu.br"),
("@brunoferreira", "www.cruzeiro.com"),
("@brunoferreira", "www.mirabela.com"),
("@davikalel", "www.ifnmg.edu.br"),
("@davikalel", "www.oficinag3.com.br"),
("@gabrielsoares", "www.minhasartes.com"),
("@gabrielsoares", "www.paisagens.com"),
("@georgelucas", "www.gglucasz.com"),
("@georgelucas", "www.steam.com");

/*Perfis recusados*/
insert into recusa(recusado, recusador, datarecusa)
values
("@edsonjunior", "@kheuhydjovanna", "2022-06-18 00:12:00");

insert into recusa(recusado, recusador, datarecusa)
values
("@edsonjunior", "@katerine_nayara", "2021-12-25 14:30:16");

insert into recusa(recusado, recusador, datarecusa)
values
("@katerine_nayara", "@gabrielsoares", "2022-06-23 14:30:16");

insert into recusa(recusado, recusador, datarecusa)
values
("@gabrielsoares", "@brunoferreira", "2021-11-26 17:32:46");

insert into recusa(recusado, recusador, datarecusa)
values
("@douglasbadaro", "@davikalel", "2022-03-09 18:25:27");

insert into recusa(recusado, recusador, datarecusa)
values
("@douglasbadaro", "@kheuhydjovanna", "2020-12-30 17:32:46");

insert into recusa(recusado, recusador, datarecusa)
values
("@georgelucas", "@brunoferreira", "2019-11-15 11:12:26"),
("@georgelucas", "@edsonjunior", "2014-03-12 11:11:26"),
("@davikalel", "@katerine_nayara", "2021-11-15 11:12:26");


/*Tabela Post*/
insert into post(idPost, descTexto, datahora, foto, usuario)
values
(10,
"Não há dias cinzentos para quem sonha colorido",
"2022-05-10 18:32:00",
null,
"@katerine_nayara");

insert into post(idPost, descTexto, datahora, foto, usuario)
values
(11,
"Boas energias hoje e sempre!",
"2022-07-05 10:15:25",
null,
"@kheuhydjovanna");

insert into post(idPost, descTexto, datahora, foto, usuario)
values
(12,
"Pessoas silenciosas têm as mentes mais barulhentas",
"2021-12-25 10:15:25",
null,
"@gabrielsoares"),
(13,
"Na fazenda :)",
"2022-07-25 18:10:25",
null,
"@edsonjunior"),
(14,
"Curtindo Mirabela",
"2022-08-12 18:15:25",
null,
"@brunoferreira"),
(15,
"I'm Badaro",
"2021-06-15 12:15:55",
null,
"@douglasbadaro"),
(16,
"Sem legenda :)",
"2022-09-04 10:15:25",
null,
"@davikalel"),
(17,
"Assistindo um animê e jogando um joguinho.",
"2015-07-25 12:20:25",
null,
"@georgelucas");

/*Relação marcar no post*/
insert into marca(idPost, usuario)
values
(11, "@katerine_nayara"),
(10, "@kheuhydjovanna");

insert into marca(idPost, usuario)
values
(12, "@georgelucas"),
(13, "@douglasbadaro"),
(14, "@brunoferreira"),
(15, "@edsonjunior"),
(16, "@brunoferreira"),
(17, "@gabrielsoares");

insert into marca(idPost, usuario)
values
(11, "@edsonjunior"),
(10, "@georgelucas"),
(12, "@davikalel"),
(13, "@davikalel"),
(14, "@edsonjunior"),
(15, "@douglasbadaro"),
(16, "@douglasbadaro"),
(17, "@edsonjunior");

/*Reações nos posts*/
insert into reagegostei(idPost, usuario)
values
(11, "@katerine_nayara"),
(10, "@kheuhydjovanna");

insert into reagegostei(idPost, usuario)
values
(10, "@katerine_nayara");

insert into reagegostei(idPost, usuario)
values
(12, "@katerine_nayara"),
(15, "@katerine_nayara"),
(17, "@katerine_nayara"),
(13, "@katerine_nayara"),
(12, "@davikalel"),
(17, "@davikalel"),
(14, "@davikalel"),
(15, "@davikalel"),
(12, "@brunoferreira"),
(16, "@brunoferreira"),
(15, "@brunoferreira"),
(11, "@brunoferreira"),
(17, "@douglasbadaro"),
(15, "@douglasbadaro"),
(12, "@douglasbadaro"),
(10, "@douglasbadaro"),
(12, "@kheuhydjovanna"),
(16, "@kheuhydjovanna"),
(17, "@kheuhydjovanna"),
(11, "@kheuhydjovanna"),
(14, "@georgelucas"),
(15, "@georgelucas"),
(17, "@georgelucas"),
(16, "@georgelucas"),
(16, "@edsonjunior"),
(14, "@edsonjunior"),
(17, "@edsonjunior"),
(10, "@edsonjunior"),
(10, "@gabrielsoares"),
(11, "@gabrielsoares"),
(12, "@gabrielsoares"),
(16, "@gabrielsoares");

/*Comentários*/
insert into comentario(idComentario, texto,
link, dataHora, usuario, idPost) values
(111,
"aí meu coração",
null,
"2022-05-10 19:00:00",
"@kheuhydjovanna",
10);

insert into comentario(idComentario, texto,
link, dataHora, usuario, idPost) values
(112, 
"Gatinho.",
null,
"2022-07-10 19:00:00",
"@kheuhydjovanna",
13),
(113, 
"Caiu aí oh!",
null,
"2022-08-12 18:00:00",
"@davikalel",
15),
(114, 
"Lindo",
null,
"2022-09-10 15:00:00",
"@gabrielsoares",
17),
(115, 
"Pena que namora :(",
null,
"2022-08-10 19:00:00",
"@edsonjunior",
14),
(116, 
"Linda migah <3",
null,
"2022-07-12 18:00:00",
"@katerine_nayara",
11);

insert into comentario(idComentario, texto,
link, dataHora, usuario, idPost) values
(117, 
"Feliz aniversário!",
null,
"2022-09-05 12:00:00",
"@brunoferreira",
16),
(118, 
"Gatão!",
null,
"2022-08-23 00:00:00",
"@georgelucas",
12);

/*Tags (# no início)*/
insert into tag(idTag, palavrachave)
values
(1000, "#debemcomavida"),
(1001, "#livreleveesolta"),
(1002, "#felicidade");

insert into tag(idTag, palavrachave)
values
(1003, "#behappy"),
(1004, "#sentimentosbons"),
(1005, "#sentindosefeliz"),
(1006, "#admirando"),
(1007, "#ruralzao"),
(1008, "#fromfarm"),
(1009, "#cute"),
(1010, "#natureza");

/*Relação Tag e Post*/
insert into contemTag(idTag, idPost)
values
(1000, 10),
(1001, 10);

insert into contemTag(idTag, idPost)
values
(1004, 10),
(1000, 11),
(1002, 11),
(1004, 11),
(1003, 12),
(1010, 12),
(1008, 12),
(1007, 13),
(1008, 13),
(1010, 13),
(1004, 14),
(1006, 14),
(1003, 14),
(1010, 15),
(1007, 15),
(1008, 15),
(1006, 16),
(1001, 16),
(1003, 16),
(1009, 17),
(1004, 17),
(1005, 17);