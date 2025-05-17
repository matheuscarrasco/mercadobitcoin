1º passo: Criar um ambiente virtual para instalar as dependências do projeto, impedindo que as mesmas sejam instaladas globalmente e interfiram em outros projetos. Podemos criar esse ambiente virtual no VS Code da seguinte forma:
 
Com um arquivo Python aberto (.py), clique na informação de ambiente (número da versão do Python) no canto inferior direito do VS Code;
Clique em "Criar ambiente virtual";
 
Em "Selecionar tipo de ambiente Python" escolha "venv";
Selecione a instalação do Python que deseja utilizar;
Aguarde a criação do ambiente virtual.
 
Após a criação do ambiente virtual, clique novamente na informação de ambiente e selecione o ambiente criado.
Abra o terminal do Powershell no VS Code.
Para ativar o ambiente virtual, primeiro mude a política de execução do Powershell com o comando:
 
Plain Text
Set-ExecutionPolicy Bypass -Scope Process
 
Em seguida execute o script de ativação com o comando:
Plain Text
.\.venv\Scripts\Activate.ps1`
 
2º passo: Para conectar nossa aplicação com o banco de dados, ultilize o MySQL. Para isso, precisa instalar uma dependência, o pacote mysql-connector-python:
Plain Text
pip install mysql-connector-python
 
3º passo: Para proteger nossas credenciais de acesso ao banco de dados, criamos um arquivo .env na raiz do projeto. Esse arquivo contem as variáveis de ambiente que serão utilizadas para conectar a aplicação ao banco de dados. precisa, então, instalar a dependência python-dotenv:
Plain Text
pip install python-dotenv
 
4º passo: Criamos um arquivo .env na raiz do projeto com as seguintes variáveis:
Plain Text
BD_HOST = 'localhost' # host do banco de dados
BD_USER = '' # usuário do banco de dados
BD_PSWD = '' # senha do banco de dados
BD_DATABASE = 'criptos' # nome do banco de dados
 
Adicionalmente, criamos um arquivo .env.example com as variáveis de ambiente, mas sem os valores, e adicionamos ao repositório. Assim, os colaboradores do projeto poderão copiar o arquivo .env.example e criar o arquivo .env com suas próprias credenciais.
 
5º passo: Para utilizar as variáveis de ambiente do arquivo .env, precisa importar a biblioteca dotenv e carregar as variáveis de ambiente no arquivo app.py:
Plain Text
from dotenv import load_dotenvload_dotenv() # carrega as variáveis de ambiente do arquivo .env
 
Você poderá acessar as variáveis de ambiente do arquivo .env da seguinte forma:
Plain Text
from os import getenvgetenv('BD_HOST')getenv('BD_USER')getenv('BD_PSWD')getenv('BD_DATABASE')
 
IMPORTANTE: O arquivo .env não deve ser versionado. Para isso, criamos um arquivo .gitignore na raiz do projeto e adicionamos o arquivo *.env nele. Adicione também os diretórios __pycache__ e .venv ao arquivo .gitignore.
 
Como instalgar as dependencias:
 
abra o terminal com o atalho ctrl " após abrir o terminal faça o download dos parametros do arquivo requirements.
 
para fazer o download use o comando 'pip instal -r requirements'
 
assim será instalada todas as dependencias necessarias para a utilização do nosso projeto.
 
Pra rodar um script SQL no MySQL, você pode usar o terminal com um
 comando que basicamente joga o conteúdo do arquivo direto no
 banco. Também dá pra entrar no MySQL e usar o comando `source`
  pra carregar o script. Se tiver usando o MySQL Workbench, é só
   abrir o arquivo e clicar pra executar.
 
No modo de desenvolvimento, a API roda com recarregamento
automático e exibe erros detalhados para facilitar testes e
ajustes, mas não é segura nem performática. Já no modo de
produção, a API roda com servidores otimizados (como Gunicorn),
sem recarregamento automático, com mais segurança e melhor
desempenho, adequada para uso real.
