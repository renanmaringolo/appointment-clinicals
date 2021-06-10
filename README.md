# README

Este repositório foi criado para propor a solução do seguinte desafio: Desafio Challenge Built Code.

## <a name="tech_info"></a>Requisitos
* Docker: (v 20.10.7)

## Setup
1) Possuir Docker instalado na sua máquina (versão utilizada neste projeto de preferência)
2) Baixar este repositório com o comando: git clone git@github.com:renanmaringolo/challenge-bCode.git

### Testando a aplicação
Atualmente o projeto conta com xx,xx% de cobertura de teste, de acordo com o SimpleCov.

## Rodando o projeto localmente
1) Executar 'make web' em um terminal para subir o servidor na porta 3000.
2) Executar 'make udb' em um terminal para subir o Banco de Dados. Neste projeto usa-se o Postgres.
3) Caso queira fazer consultas no DB, execute 'make psql'

### Observação importante ao rodar a aplicação
* Essa aplicação está configurada para fazer o encaminhamento de porta na 3000, caso tenha outro projeto rodando nesta porta, será necessário mudar o docker-compose.yml ou derrubar a aplicação que está rodando nesta porta. A segunda opção é a mais adequada.

## Gems
* RSpec (um dos métodos possíveis dentro do Ruby/Rails para desenvolver as classes de testes. Gosto muito do padrão do RSpec);
* Simplecov (indica o percentual de cobertura de testes do seu projeto;
* Byebug (ferramenta para debuggin, caso preciso identificar alguma falha no meu teste e analisar como estão chegando dados);
* Devise (é uma solução de autenticação para Rails criada com Warden que prevê vários módulos de autenticação);
* Capybara (responsável por simular como um usuário interage com aplicações web);
