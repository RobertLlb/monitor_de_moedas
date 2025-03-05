# Monitor de Moedas

![Badge em Desenvolvimento](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow)

## Descrição

O **Monitor de Moedas** é uma aplicação Ruby on Rails que permite aos usuários acompanhar as taxas de câmbio de diversas moedas em tempo real. A aplicação oferece gráficos interativos, alertas personalizados e histórico de cotações, facilitando a análise e o monitoramento das flutuações cambiais.

## Funcionalidades

- Visualização de taxas de câmbio em tempo real.
- Gráficos interativos das variações cambiais.
- Configuração de alertas personalizados para determinadas cotações.
- Histórico detalhado das taxas de câmbio.
- Suporte a múltiplas moedas e idiomas.

## Tecnologias Utilizadas

- [Ruby on Rails](https://rubyonrails.org/) - Framework principal.
- [PostgreSQL](https://www.postgresql.org/) - Banco de dados relacional.
- [Chart.js](https://www.chartjs.org/) - Biblioteca de gráficos.
- [Docker](https://www.docker.com/) - Containerização da aplicação.
- [Kamal](https://kamal.io/) - Ferramenta de deploy.
- [Brakeman](https://brakemanscanner.org/) e [Rubocop](https://rubocop.org/) - Análise estática de segurança e estilo de código.

## Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas em seu sistema:

- [Git](https://git-scm.com/)
- [Ruby 2.7.0](https://www.ruby-lang.org/)
- [Rails 6.0.3](https://rubyonrails.org/)
- [Docker](https://www.docker.com/) (opcional, para execução em container)

## Instalação

1. **Clone o repositório:**

   ```bash
   git clone https://github.com/RobertLlb/monitor_de_moedas.git
   cd monitor_de_moedas
   ```

2. Instale as dependências:

   ```bash
    bundle install
    Configure o banco de dados:
    ```

3. Copie o arquivo de exemplo e ajuste as configurações conforme necessário:

   ```bash
    cp config/database.yml.example config/database.yml
    ```
4.     Crie e migre o banco de dados:
   ```bash
    rails db:create
    rails db:migrate
    ```

5. Inicie o servidor:
   ```bash
    rails server
    ```

A aplicação estará disponível em http://localhost:3000.



## Tests
Para executar a suíte de testes, utilize:
    ```bash
    rails test
    ```

Certifique-se de que todos os testes estejam passando antes de realizar deploys ou contribuições.

Contribuição
Contribuições são bem-vindas! Siga os passos abaixo para contribuir:

    ```bash
    Faça um fork deste repositório.
    Crie uma branch para sua feature (git checkout -b feature/nova-feature).
    Commit suas alterações (git commit -m 'Adiciona nova feature').
    Faça o push para a branch (git push origin feature/nova-feature).
    Abra um Pull Request.
    ```
   
## Licença

Este projeto está licenciado sob a MIT License.