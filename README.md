# Projeto Integrador - PowerPlants 🌿

PowerPlants é um website dedicado à promover um estilo de vida saudável através de uma alimentação equilibrada. O site cresceu e se expandiu para incluir uma equipe de especialistas em nutrição, culinária e bem-estar. O PowerPlants tornou-se uma referência em colaboração com conceituados profissionais de saúde. O site se tornou global, alcançando seguidores em todo o mundo e impactando positivamente a vida das pessoas. <br>

## Setup do PHP e do Banco de dados

Esta aplicação está utilizando SQLite3 como SGBD. O diretório database contém o script para estruturar o banco de dados (database.sql) e o banco de dados (powerplant.db). **Não é necessário utilizar o script database.sql pois o banco já está devidamente estruturado e populado.**

1 - Baixe o SQLite3 em seu computador, de acordo com seu sistema operacional. https://www.tutorialspoint.com/sqlite/sqlite_installation.htm <br/>

2 - Instale o PHP 8.0 (pode ser via instalação no seu sistema operacional, ou via plataformas como XAMMP ou WAMP) https://www.php.net/manual/pt_BR/install.php <br/>

3 - Configurar seu PHP para habilitar o PDO do SQLite3:
3.1 - Descomentar a linha 'extension=pdo_sqlite' do arquivo php.ini
3.2 - Instalar a biblioteca 'libsqlite3-0' no seu servidor PHP.

4 - No arquivo js/server.js altere o valor da variável USE_DATABASE para true, caso queira utilizar o banco de dados (o valor false fará com que se utilize os dados do arquivo js/mock.js).

## Como testar a aplicação desenvolvida. (instalação e visualização) 😎

1 - Baixe o Git em sua máquina. https://git-scm.com/download/win <br>
2 - Com o git instalado, abra a aplicação 'Git Bash'. <br>
Caso queira, você consegue abrir a aplicação na pasta que deseja salvar o arquivo. <br>
Clicando com o botão direito do mouse na pasta. <br>
Selecione 'mostrar mais opções', 'git bash here'. <br>
3 - Com o terminal aberto no diretório do seu servidor PHP, digite o seguinte comando:

```
git clone https://github.com/Ec0n0m1st/PROJETO-INTEGRADOR.git
```

4 - Com o projeto já baixado, clique na pasta 'PROJETO-INTEGRADOR' em seguida, no arquivo index.html.
Você terá acesso ao arquivo local e poderá navegar tranquilamente pelo projeto. <br>

5 - Outra forma de visualizar o projeto é abrindo o projeto com o visual studio code. https://code.visualstudio.com/ <br>
Baixando a extensão Live Server. <br>
_Id da extensão: ritwickdey.LiveServer._ <br>
No rodapé do vscode vai ter um icone com a escrita 'Go live', basta clicar em cima que a extensão abrirá o projeto local. <br>

## Integrantes do grupo:

Enzo Firmo <br>
Felipe Gomes de Sousa <br>
Felipe Matheus Pinheiro Bem Rodrigues Santana <br>
Evelyn Santos Rodrigues <br>
Fernando Silva Ferreira Portela <br>
Felipe Silva Vianna da Silva <br>
Estevão Terci da Silva <br>
