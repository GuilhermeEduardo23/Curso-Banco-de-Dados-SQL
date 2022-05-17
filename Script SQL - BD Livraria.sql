create database livraria;

create table livros (id serial primary key, nome_livro varchar(50), autor varchar(50), sexo char(1), num_paginas varchar(4), editora varchar(50), valor decimal(5,2), uf char(2), ano_publicacao char(4));

insert into livros (nome_livro, autor, sexo, num_paginas, editora, valor, uf, ano_publicacao) values ('Receitas Caseiras', 'Celia Tavares', 'F', '210', 'Atlas', 45, 'RJ', '2008'),
('Pessoas Efetivas', 'Eduardo Santos', 'M', '390', 'Beta', 78.99, 'RJ', '2018'),
('Hábitos Saudáveis', 'Eduardo Santos', 'M', '630', 'Beta', 150.98, 'RJ', '2019'),
('A Casa Marrom', 'Hermes Macedo', 'M', '250', 'Bubba', 60, 'MG', '2016'),
('Estácio Querido', 'Geraldo Francisco', 'M', '310', 'Insignia', 100, 'ES', '2015'),
('Pra Sempre Amigas', 'Leda Silva', 'F', '510', 'Insignia', 78.98, 'ES', '2011'),
('Copas Inesquecíveis', 'Marco Alcantara', 'M', '200', 'Larson', 130.98, 'RS', '2018'),
('O Poder da Mente', 'Clara Mafra', 'F', '120', 'Continental', 56.58, 'SP', '2017');

select nome_livro, editora from livros;

select nome_livro, uf from livros where sexo = 'm';

select nome_livro, num_paginas from livros where sexo = 'f';

select valor from livros where uf = 'sp';

select autor from livros where sexo = 'm' and uf = 'sp' or uf = 'rj';