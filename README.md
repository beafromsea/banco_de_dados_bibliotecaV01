# 📊Banco de Dados Biblioteca
## 🔍Introdução: 
Este repositório contém um banco de dados modelado para atender às necessidades de uma biblioteca. O objetivo principal é gerenciar o fluxo de empréstimo de livros, criando um sistema de entidades e relacionamentos estruturado para mapear todas as etapas do processo, desde a aquisição dos exemplares até a retirada pelos frequentantes.


## 📝Requisitos:
Antes de executar o banco de dados localmente, certifique-se de ter as seguintes ferramentas instaladas em sua máquina:

```
* MySQL Server
* MySQL Workbench
```
A ordem correta para o funcionamento é:

* <a href="./scripts/biblioteca-real.sql">biblioteca-real</a>
* <a href="./scripts/insercoes-de-arquivos.sql">insercoes-de-arquivos</a>

## 🗺️Estrutura do Banco de Dados:
O banco de dados da biblioteca é composto pelas seguintes tabelas:

<h3>Livros:</h3> Contém informações sobre os livros presentes na biblioteca, como título, autor, gênero, ISBN, entre outros.

<h3>Empréstimos:</h3> Registra os empréstimos realizados, associando um usuário a um exemplar de livro, contendo seu estado e data de aquisição assim como a de devolução.

<h3>Usuários:</h3> Armazena dados da senha escolhida pelo usuario para acesso a biblioteca.

<h3>Autores:</h3> Faz menção a quantidade de livros existentes na biblioteca do mesmo autor, afim de facilitar a busca na hora do empréstimo.

<h3>Gêneros:</h3> Contém informações sobre os gêneros dos livros existentes na biblioteca.

<h3>Pessoas:</h3> Armazena dados dos frequentadores da biblioteca, incluindo nome, endereço, telefone, e-mail, etc. Também emgloba os funcionarios e autores.

<h3>Funcionários:</h3> Contém os dados como data de admissão, seus respectivos cargos e suas senhas pra acesso aos sistemas. 

<h3>Endereços:</h3> Registra o endereço de nossos usuarios assim como dos funcionarios e autores.

<h3>Editoras:</h3> Tabela que determina de que editora pertence tal livro.