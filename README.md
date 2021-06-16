# README

Este repositório foi criado para propor a solução do seguinte desafio: Desafio Built Code.

## <a name="tech_info"></a>Requisitos
* Docker: (v 20.10.7)

## Setup
1) Possuir Docker instalado na sua máquina (versão utilizada neste projeto de preferência)
2) Possuir Docker Compose instalado
3) Baixar este repositório com o comando: git clone git@github.com:renanmaringolo/appointment-clinicals.git

### Testando a aplicação
Atualmente o projeto conta com xx,xx% de cobertura de teste, de acordo com o SimpleCov.

## Rodando o projeto localmente
1) Executar 'docker-compose build web'
2) Executar 'docker-compose up'
4) Entre no container e execute: 'docker-compose run web bash'
5) Executar 'yarn'
6) Caso queira fazer consultas no DB, execute 'make psql' no seu terminal (fora do container)

### Observação importante ao rodar a aplicação
* Essa aplicação está configurada para fazer o encaminhamento de porta na 3000, caso tenha outro projeto rodando nesta porta, será necessário mudar o docker-compose.yml ou derrubar a aplicação que está rodando nesta porta. A segunda opção é a mais adequada.

* Se após esses passos a aplicação ainda peça para configurar webpacker/yarn, volte no setor "Rodando o projeto localmente", entre no container e execute as linhas de comando a seguir:
  - curl https://deb.nodesource.com/setup_12.x | bash
  - curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add
  - echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
  - apt update && apt install nodejs yarn

## Gems
* RSpec (um dos métodos possíveis dentro do Ruby/Rails para desenvolver as classes de testes. Gosto muito do padrão do RSpec);
* Simplecov (indica o percentual de cobertura de testes do seu projeto;
* Byebug (ferramenta para debuggin, caso preciso identificar alguma falha no meu teste e analisar como estão chegando dados);
* Devise (é uma solução de autenticação para Rails criada com Warden que prevê vários módulos de autenticação);
* Capybara (responsável por simular como um usuário interage com aplicações web);
* SimpleCalendar (é uma ferramenta para renderizar dados em forma de calendário. Pode resolver uma questão de frontend de forma bem simples e clara)
* Faker (é uma ferramenta que tem o intuito de criar dados falsos: nome de pessoas, endereços, CEPs, emails, telefones..);
* Factory Bot (gerar objetos para os testes automatizados de forma pré-definida, alterando uma informação do obejto somente se necessário);
