-- Criado Banco de Dados Biblioteca
CREATE DATABASE IF NOT EXISTS `Biblioteca`;

-- Usando BD Biblioteca
USE Biblioteca;

-- Criado entidade Enderecos
CREATE TABLE `Enderecos` (
  `id_endereco` INT UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `logradouro` VARCHAR(100),
  `complemento` VARCHAR(50),
  `numero` INT,
  `cep` INT,
  `bairro` VARCHAR(100),
  `cidade` VARCHAR(100),
  `estado` VARCHAR(2),
  `pais` VARCHAR(50)
);

-- Criado entidade Generos
CREATE TABLE `Generos` (
  `id_genero` INT UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `genero` ENUM ('Ação', 'Comédia', 'Drama','Ficcao', 'Romance', 'Suspense', 'Terror')
);

-- Criado entidade Editoras
CREATE TABLE `Editoras` (
  `id_editora` INT UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `empresa` VARCHAR(100),
  `cnpj` BIGINT,
  `tel` BIGINT,
  `email` VARCHAR(60)
);

-- Criado entidade Pessoas
CREATE TABLE `Pessoas` (
  `id_pessoa` INT UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60),
  `email` VARCHAR(60),
  `cpf` VARCHAR(11),
  `tel` BIGINT,
  `data_nasc` DATE,
  `id_endereco_fk` INT,
  FOREIGN KEY (id_endereco_fk) REFERENCES Enderecos(id_endereco) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Criado entidade Usuarios
CREATE TABLE `Usuarios` (
  `id_usuario` INT UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `senha` VARCHAR(32),
  `id_pessoa_fk` INT,
  FOREIGN KEY (id_pessoa_fk) REFERENCES Pessoas(id_pessoa) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Criado entidade Fucionarios 
CREATE TABLE `Funcionarios` (
  `id_funcionario` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `cargo` VARCHAR(100),
  `senha` VARCHAR(32),
  `data_adm` DATE,
  `id_pessoa_fk` INT,
  FOREIGN KEY (id_pessoa_fk) REFERENCES Pessoas(id_pessoa) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Criado entidade Autores
CREATE TABLE `Autores` (
  `id_autor` INT UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `qtd_livros` INT,
  `id_pessoa_fk` INT,
  FOREIGN KEY (id_pessoa_fk) REFERENCES Pessoas(id_pessoa) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Criado entidade Livros
CREATE TABLE `Livros` (
  `id_livro` INT UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100),
  `ano` DATE,
  `edicao` VARCHAR(50),
  `editora` VARCHAR(100),
  `isbn` BIGINT,
  `disponibilidade` BOOLEAN,
  `id_genero_fk` INT,
  `id_autor_fk` INT,
  `id_editora_fk` INT,
  FOREIGN KEY (id_genero_fk) REFERENCES Generos(id_genero) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_autor_fk) REFERENCES Autores(id_autor) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_editora_fk) REFERENCES Editoras(id_editora) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Criado entidade Emprestimo
CREATE TABLE `Emprestimos` (
  `id_emprestimo` INT UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `data_emprestimo` DATETIME,
  `data_devolucao` DATE,
  `id_livro_fk` INT,
  `id_usuario_fk` INT,
  `id_funcionario_fk` INT,
  FOREIGN KEY (id_livro_fk) REFERENCES Livros(id_livro) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_usuario_fk) REFERENCES Usuarios(id_usuario) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_funcionario_fk) REFERENCES Funcionarios(id_funcionario) ON UPDATE CASCADE ON DELETE CASCADE
);