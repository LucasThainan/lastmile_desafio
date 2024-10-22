# LastMile - Plataforma de Logística

**LastMile** é uma plataforma de gestão de entregas que oferece uma solução eficiente para empresas que operam no setor de logística de última milha. A plataforma permite o monitoramento em tempo real de entregadores e facilita a interação com os status de cada entrega.

## Funcionalidades Principais

- **Rastreamento em Tempo Real**: Visualize a localização de todos os entregadores diretamente no mapa, com atualizações contínuas.
- **Interação com o Status dos Entregadores**: Acompanhe o status de cada entregador (Pendente, Em rota, Entregue, etc.) e faça ajustes em tempo real.
- **Gerenciamento de Entregas**: Atribua entregas de maneira eficiente com base na localização atual e status dos entregadores.

## Tecnologias Utilizadas

- **Frontend**: Angular
- **Backend**: Nest.js
- **Banco de Dados**: MySQL
- **Mapas**: Google Maps API para exibição da localização em tempo real

## Requisitos Necessários

- **Frontend**: Angular v18.2.0
- **Backend**: Nest.js v10.4.5
- **Banco de Dados**: MySQL 8.0
- **Mapas**: Chave pública do Google Maps API
- **Build**: Node v20.18.0, npm v10.9.0

## Como Executar o Frontend Localmente

1. Clone este repositório:
   ```bash
   git clone https://github.com/LucasThainan/Lastmile.git

2. Instale as dependências do projeto:
   ```bash
   cd lastmile_painel
   npm install

3. Configure as variáveis de ambiente na pasta src/environments o arquivo environments.ts com os seguintes parametros:
   ```bash
   base_url: para a rota utilizada pela api
   google_maps_key: chave publica do google_maps para utilização da integração.

4. Execute o projeto:
   ```bash
   ng serve

## Como Executar o Backend Localmente

1. Clone este repositório:
   ```bash
   git clone https://github.com/LucasThainan/Lastmile.git

2. Instale as dependências do projeto:
   ```bash
   cd lastmile_api
   npm install

3. Configure as variáveis de ambiente no arquivo .env com os seguintes parametros:
   ```bash
   BD_HOST: para definir o host utilizado pelo MySQL
   BD_USER: para definir o user de login do MySQL
   BD_PASSWORD: para definir a senha de login pelo MySQL
   BD_NAME: para definir o nome do schema utilizado pelo MySQL
   JWT_SECRET_KEY: chave aleatória utilizada para criação de access_token JWT.

4. Execute o projeto:
   ```bash
   npm run start:dev

## Como Acessar a documentação do Backend

1. Acesse a base_url definida na rota /api/docs
   ```bash
   Ex: http://localhost:3000/api/docs

## Como Executar o Backend Localmente

1. Acesse a pasta mysql
   ```bash
   cd mysql

2. Abra o arquivo Lastmile.sql através do MySQL Workbench

3. Crie ou inicie uma conexão no MySQL Workbench

4. Execute o script Lastmile.sql

## Detalhes de Criação

1. Usuario deverá ser cadastrado na tela de cadastro
   ```bash
   Ex: http://localhost:4200/signup

2. Entregador deverá ser cadastrado internamente através da api/documentação seguindo os detalhes de criação
   ```bash
   POST http://localhost:3000/usuarios
   type: 2

## Imagens da plataforma

Tela de Login
![image](https://github.com/user-attachments/assets/08c5cc53-7e64-4f8d-8a9c-ff5985f90b5e)

Tela de Cadastro
![image](https://github.com/user-attachments/assets/30153470-6e67-4a61-8cb9-a92aeb03f9fa)

Dashboard Principal
![image](https://github.com/user-attachments/assets/381cc360-5c0c-4055-903f-50db78b2f84c)

Tela de Pedidos do Cliente
![image](https://github.com/user-attachments/assets/786c58c2-fffa-4bc0-ab62-db1082541929)

Tela de Entregas Disponíveis do Entregador
![image](https://github.com/user-attachments/assets/cbb2cb78-a217-4a3a-a8bf-95f98fbb23ff)

Modal de Cadastro de Pedidos
![image](https://github.com/user-attachments/assets/05ca9df5-abcb-4245-98c3-a23f7ece0c13)

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The application will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.dev/tools/cli) page.
