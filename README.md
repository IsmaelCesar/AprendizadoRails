# Maratona de Aprendizado Rails
Desafios da equipe Ruby Lovers para prática de aprendizados de ruby on rails

- *Advertência 1:* Já que trata-se de um trabalho fullstack é necessário observar aspectos como layout e usabilidade do site
- *Advertência 2:* Todas as tabelas devem ter timestamps
- *Advertência 3:* Dê preferência ao i18n para parametrização dos capos e menus no site.

Para gerenciamento de login pode-se utilizar a gem [Devise](https://rubygems.org/gems/devise) 

## Tarefa 1
  ### CryptoWallet++
  Refazer o CryptoWallet do curso de Ruby on Rails do Inicio ao fim de Jackson Pires. Com um incremento a mais. 
  Usuários (com nome) podem ter uma ou mais carteiras (cada Carteira com seu nome) de coins. E os coins Podem pertencer a uma ou mais carteiras.
  
  ### Queries SQL
  - Mostrar os cois com seus mining types específicos (Descrição e sigla do coin, e sigla do mining type)
  - Listar todos os coins em uma carteira específica (Nome do proprietário da carteira, nome da carteira, Descrição e Sigla do Coin)
  (Pode escolher um usuario e uma carteira do mesmo para fazer a listagem)

## Tarefa 2
  ### Bookflix
  Aplicação de leitura de e-books. 
  Para acessar a aplicação um usuario tem que se cadastrar. 
  Cada usuário tem uma lista de livros que ele deseja ler e pode acessar uma listagem geral para adicionar mais livros a sua lista.
  Um usuario pode ter login, senha e nome. Cada usuario só pode ter uma única lista de livros, porém cada livro pode pertencer a varias listas.
  Um livro tem Título, autor, gênero, sinopse, e uma imagem da capa. 
  Um livro pode ter muitos autores, e um autor pode ter escrito vários livros. 
  Um autor só precisa ter o nome cadastrado. 
  Basicamente um netflix de livros ;D
  
  ### Queries SQL
  - Mostrar Autores com os livros que eles escreveram (Título e gênero)
  - Mostrar os usuários com os livros que estão na sua lista (Título autor)
 
## Tarefa 3
  ### Agendamento de consultas
  Aplicação para agendamento de consulta.
  Uma paciente (Com nome, endereço e telefone), pode marcar consultas com vários especialistas (Dentista, Otorrino, Cardiologista, Psicólogo). 
  Um especíalista (Com nome, especialidade e telefone) pode ter várias consultas marcadas.
  Uma consulta tem como propriedades data, hora, e tempo de duração (Consultas que acontecem no mesmo dia não para um especialista não podem ser cadastradas caso o horário delas se sobreporem). 
  
  ### Queries SQL
  - Mostrar consultas agendadas por especialista - (Listar nome do especialista, especialidade, data e hora da consulta)
  - Mostrar os pacientes com consultas marcadas por especialista - (Listar nome do paciente, especialidade do especialista, data, hora e tempo de duração da consulta)
  
## Tarefa 4
  ### Aluguel de Carros
  Aplicação para trackear o aluguel de carros. 
  Um cliente (Com nome) pode alugar um único carro por vez. Um carro (Com modelo, ano, número de portas, preço de locação) só pode ser alugado por um cliente por vez.
  A locadora também deseja manter um histórico das locações efetuadas. Histórico com data e hora da locação. 
  
  ### Queries SQL
  - Listar carros que já foram alugados por cliente - (Nome do cliente, modelo do carro, data e hora da locação)

# Regras
É necessário criar um branch com o seu nome e no seu branch criar uma pasta com seu nome, e dentro desta e uma pasta para cada tarefa efetuada. 
A ideia é que no final fazer uma apresentação das soluções que fizemos mostrado a aplicação funcionando e queries sql dos bancos de dados criados

 
