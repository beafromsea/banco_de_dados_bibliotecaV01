-- Inserindo registros na tabela Enderecos
INSERT INTO BIBLIOTECA.Enderecos(logradouro, complemento, numero, cep, bairro, cidade, estado, pais)
	VALUES
		('Rua Conde dos Arcos', 'Casa 01', '217', '81010120', 'Lindóia', 'Curitiba', 'PR','BR'),
        ('Rua XV de Novembro', 'Ap 01 Bloco 02', '1517', '80060907', 'Centro', 'Curitiba', 'PR','BR'),
        ('Rua Brigadeiro Franco', 'Loja 101', '2300', '80250903', 'Centro', 'Curitiba', 'PR','BR'),
        ('Avenida Cândido de Abreu', 'Casa 02', ' 817', '80530908', 'Centro Cívico', 'Curitiba', 'PR','BR'),
        ('Rua Engenheiro Ariel Villar Tacla', 'Ap 02 Bloco 03', '500', '81350971', 'Cidade Industrial', 'Curitiba', 'PR','BR'),
        ('Rua João Negrão', 'Loja 102', '1251', '80230973', 'Rebouças', 'Curitiba', 'PR','BR'),
        ('Rua Raul Pompéia', 'Casa 02', '2446', '81260150', 'Cidade Industrial de Curitiba', 'Curitiba', 'PR','BR'),
        ('Avenida República Argentina', 'Casa 05', '825', '80240210', 'Água Verde', 'Curitiba', 'PR','BR'),
        ('Avenida Manoel Ribas', 'Loja 10', '4557', '82400000', 'Santa Felicidade', 'Curitiba', 'PR','BR'),
        ('Rua Francisco Derosso', 'Bloco 07 Ap 01', '1726', '81720000', 'Xaxim', 'Curitiba', 'PR','BR'),
        ('Rua São José dos Pinhais ', 'Casa 02', '528', '81910010', 'Sítio Cercado', 'Curitiba', 'PR','BR'),
        ('Rua João Bettega', 'casa 01', '21', '81070000', 'Portão', 'Curitiba', 'PR','BR'),
        ('Rua Izaac Ferreira da Cruz', 'Loja 13', '1836', '81900000', 'Sítio Cercado', 'Curitiba', 'PR','BR'),
        ('Avenida Winston Churchill', 'Ap 13 Bloco 08', '1959', '81130000', 'Capão Raso', 'Curitiba', 'PR','BR'),
        ('Rua Marechal Deodoro', 'Loja 01', '298', '80010970', 'Centro', 'Curitiba', 'PR','BR');

-- Inserindo registros na tabela Generos
INSERT INTO BIBLIOTECA.Generos(genero)
	VALUES
    ('Ação'),
    ('Comédia'),
    ('Drama'),
    ('Ficcao'),
    ('Romance'),
    ('Suspense'),
    ('Terror');

-- Inserindo registros na tabela Editoras
INSERT INTO BIBLIOTECA.editoras(empresa, cnpj, tel, email)
	VALUES
	('moderna', '003944679', '41996687651', 'editoramoderna@moderna.com.br'),
    ('globo', '0699153800', '4196687652', 'editoraglobo@globo.com.br'),
    ('garamond', '0145765700', '4196687653', 'editoragaramond@garamond.com.br'),
    ('gaivota', '1320616600', '2296687654', 'editoragaivota@gaivota.com.br'),
    ('allbook', '313704790', '4196687655', 'allbookeditora@allbook.com.br');

-- Inserindo registros na tabela Pessoas
INSERT INTO BIBLIOTECA.Pessoas(nome, email, cpf, tel, data_nasc)
	VALUES
    ('Lucas Silva de Castro', 'lukinha@balatensa.com.br', '12345678910', '41996687651', '2009-08-01'),
    ('Evan Thomas Peters', 'tatelangdon@ahs.com.br', '11121314151', '41996686661', '1987-01-20'),
    ('Min Yoon-gi', 'suga@agustd.com.br', '61718192021', '41896697654', '1993-03-09'),
    ('Janna a Fúria da Tormenta', 'janna@dolol.com.br', '3332425262', '41209199170', '2009-09-02'),
    ('Lulu a Fada Feiticeira', 'lulu@dolol.com.br', '22232445262', '41933199170', '2012-03-20'),
    ('Lux a Dama da Luz', 'lux@dolol.com.br', '11132425262', '41599199170', '2010-10-19'),
    ('Morganaa Caídas', 'morgana@dolol.com.br', '22232425266', '41999199171', '2009-02-21'),
    ('Nami a Conjuradora das Marés', 'nami@dolol.com.br', '22232425272', '41999199172', '2012-12-07'),
    ('Riven a Exilada', 'riven@dolol.com.br', '22232815262', '41999199173', '2011-09-14'),
    ('Soraka a Filha das Estrelas', 'soraka@dolol.com.br', '22232425123', '41999199174', '2009-02-21'),
    ('Sona a Mestra das Cordas', 'sona@dolol.com.br', '22232425554', '41999199175', '2010-09-21'),
    ('Teemo o Explorador Veloz', 'teemo@dolol.com.br', '22232425112', '41999199176', '2009-02-21'),
    ('Vi a Defensora de Piltover', 'vi@dolol.com.br', '22232425444', '41999199177', '2012-12-19'),
    ('Yuumi de Bandópolis', 'yuumi@gatamagica.com.br', '22232425262', '41999199170', '2019-05-01'),
    ('Leona de Monte Targon', 'leona@amadiana.com.br', '72829303132', '41886689651', '2011-07-13');

-- Inserindo registros na tabela Usuarios
INSERT INTO BIBLIOTECA.Usuarios(senha, id_pessoa_fk)
	VALUES
    ('BR12345678', '1'),
    ('EUA12345678', '2'),
	('KR12345678', '3'),
    ('LOL12345678', '4'),
    ('MAIN12345678', '5');
    
-- Inserindo registros na tabela Funcionarios
INSERT INTO BIBLIOTECA.Funcionarios(cargo, senha, data_adm, id_pessoa_fk)
	VALUES
    ('bibliotecario', 'BI12345678', '1995-02-20', '6'),
    ('auxiliar de biblioteca', 'AUX12345678', '1995-02-21', '7'),
    ('auxiliar administrativo', 'ADM12345678', '1995-02-22', '8'),
    ('recepcionista', 'REC12345678', '1995-02-23', '9'),
    ('estoquista', 'EST12345678', '1995-02-24', '10');

-- Inserindo registros na tabela Autores
INSERT INTO BIBLIOTECA.Autores(qtd_livros, id_pessoa_fk)
	VALUES
    ('23', '11'),
    ('24', '12'),
    ('25', '13'),
    ('26', '14'),
    ('26', '15');

-- Inserindo registros na tabela Livros
INSERT INTO BIBLIOTECA.Livros(titulo, ano, edicao, editora, isbn, disponibilidade, id_genero_fk, id_autor_fk, id_editora_fk)
	VALUES
    ('As Crônicas de Nárnia', '2023-03-01', '01', 'editora Moderna', '65600501', '0', '1', '1', '1'),
    ('Harry Potter e o Prisioneiro de Azkaban', '2004-01-3', '02', 'editora Globo', '85325310', '1', '2', '2', '2'),
    ('As aventuras de Sherlock Holmes', '2019-08-03', '03', 'editora Garamond', '65600501', '0', '3', '3', '3'),
    ('Grimório das Bruxas', '2021-05-05', '04', 'editora Gaivota', '978655598', '1', '4', '4', '4'),
    ('Violet Bent Backwards Over the Grass', '2020-11-10', '05', 'editora Allbook', '19821672', '0', '5', '5', '5');
    
-- Inserindo registros na tabela Emprestimo
INSERT INTO BIBLIOTECA.Emprestimos(data_emprestimo, data_devolucao, id_livro_fk, id_usuario_fk, id_funcionario_fk)
	VALUES
    ('2023-01-12', '2023-03-12','1', '1', '1'),
	('2023-02-23', '2023-04-23','2', '2', '2'),
    ('2023-03-11', '2023-05-11', '3','3', '1'),
    ('2023-04-08', '2023-06-08','4', '4', '2'),
    ('2023-06-01', '2023-08-01', '5', '5', '1');