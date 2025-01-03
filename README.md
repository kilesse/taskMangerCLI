# Task Manager CLI

Este é um simples gerenciador de tarefas no estilo CLI (Command Line Interface) feito em Elixir. O projeto permite que você adicione, liste, complete e remova tarefas através de um terminal, com persistência de dados em um arquivo JSON. É uma ótima introdução para aprender Elixir e manipulação de arquivos.

## Funcionalidades
- **Adicionar Tarefas**: Crie tarefas com título e descrição (opcional).
- **Listar Tarefas**: Exiba todas as tarefas, indicando se estão pendentes ou concluídas.
- **Completar Tarefas**: Marque tarefas como concluídas.
- **Remover Tarefas**: Apague tarefas utilizando o ID.
- **Armazenamento Persistente**: Salve e recupere tarefas de um arquivo `tasks.json`.

## Tecnologias Usadas
- **Elixir**: Linguagem de programação utilizada no projeto.
- **JSON**: Formato para persistência de dados.
- **Terminal**: Interface para interação com o usuário.

## Pré-requisitos
- Elixir instalado na sua máquina.

### Instalação do Elixir
Para instalar o Elixir, siga as instruções da [documentação oficial](https://elixir-lang.org/install.html).
Após a instalação, verifique se está funcionando:
```bash
elixir --version
```
Isso deve retornar a versão instalada do Elixir.

## Como Rodar o Projeto

### 1. Clonando o Repositório
Clone o repositório e navegue até a pasta do projeto:
```bash
git clone "git@github.com:kilesse/taskMangerCLI.git"
cd task_manager_cli
```

### 2. Instalando Dependências
Instale a biblioteca `Jason` para manipulação de JSON:
```bash
mix deps.get
```

### 3. Compilando o Projeto
Compile o projeto:
```bash
mix compile
```

### 4. Rodando a Aplicação
Inicie o terminal interativo da aplicação:
```bash
elixir -S mix run -e "TaskManagerCLI.main()"
```

## Comandos Disponíveis
Os comandos podem ser executados no seguinte formato:
```bash
elixir -S mix run -e "TaskManagerCLI.main()" -- <comando> <parâmetros>
```

### Adicionar uma Tarefa
Adicione uma nova tarefa com título e descrição (opcional):
```bash
elixir -S mix run -e "TaskManagerCLI.main()" -- add "<título>" "<descrição>"
```
**Exemplo:**
```bash
elixir -S mix run -e "TaskManagerCLI.main()" -- add "Estudar Elixir" "Aprender o básico de Elixir"
```

### Listar Tarefas
Liste todas as tarefas armazenadas:
```bash
elixir -S mix run -e "TaskManagerCLI.main()" -- list
```
**Saída Exemplo:**
```plaintext
1. [pending] Estudar Elixir - Aprender o básico de Elixir
2. [pending] Estudar Elixir Avançado - Aprender mais sobre Elixir
```

### Completar uma Tarefa
Marque uma tarefa como concluída utilizando o ID:
```bash
elixir -S mix run -e "TaskManagerCLI.main()" -- complete <id>
```
**Exemplo:**
```bash
elixir -S mix run -e "TaskManagerCLI.main()" -- complete 1
```

### Remover uma Tarefa
Remova uma tarefa pelo ID:
```bash
elixir -S mix run -e "TaskManagerCLI.main()" -- remove <id>
```
**Exemplo:**
```bash
elixir -S mix run -e "TaskManagerCLI.main()" -- remove 1
```

## Estrutura do Projeto
```
task_manager_cli/
│
├── lib/
│   ├── task_manager.ex        # Lógica de gerenciamento de tarefas
│   └── task_manager_cli.ex    # Interface CLI
│
├── tasks.json                 # Armazena as tarefas
├── mix.exs                    # Configuração do projeto Elixir
└── README.md                  # Documentação do projeto
```

## Como Funciona o Armazenamento
As tarefas são armazenadas no arquivo `tasks.json` em formato JSON. Exemplo de conteúdo:
```json
[
  {
    "id": 1,
    "title": "Estudar Elixir",
    "description": "Aprender o básico de Elixir",
    "status": "pending"
  }
]
```

## Contribuindo
1. Faça um fork do repositório.
2. Crie uma nova branch:
   ```bash
   git checkout -b feature/nova-feature
   ```
3. Realize as alterações desejadas.
4. Teste as alterações.
5. Envie um pull request.

---

