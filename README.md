# Projeto Data Science: Banco de Dados para Biblioteca Universitária

## Descrição

Este projeto aplicou conhecimentos práticos em Análise de Dados, Ciência de Dados, SQL e Oracle Database para modelar, estruturar e implementar um banco de dados relacional focado no contexto de uma biblioteca universitária.

Foi utilizada modelagem conceitual e relacional, com diagramas Entidade-Relacionamento (ER), além da integração com ferramentas de Inteligência Artificial para levantamento de requisitos e geração de dados fictícios em Excel, posteriormente importados para o Oracle Database.

## Tecnologias Utilizadas

- Oracle Database  
- Linguagem SQL  
- Processos de ETL (Extração, Transformação e Carga)  
- Modelagem Entidade-Relacionamento (ER)  
- Inteligência Artificial para suporte à concepção e geração de dados  

## Objetivos

- Desenvolver um banco de dados capaz de gerenciar usuários (alunos, professores, funcionários), recursos (livros, computadores) e processos (empréstimos, reservas, devoluções, multas).  
- Aplicar regras de negócio específicas para diferentes perfis de usuários.  
- Garantir integridade, consistência e desempenho do banco usando constraints, índices e princípios ACID.  

## Principais Funcionalidades

- Cadastro e controle de usuários com permissões diferenciadas  
- Gerenciamento de empréstimos com limites e prazos distintos para alunos e professores  
- Processos automatizados de devoluções, renovações e multas  
- Sistema de reservas com fila de espera automática  
- Controle de disponibilidade de exemplares em tempo real  
- Cadastro e associação de livros a múltiplos autores e categorias  

## Estrutura do Banco de Dados

### Entidades e Atributos Principais

| Entidade  | Atributos                                    |
|-----------|----------------------------------------------|
| Livros    | ID, Título, ISBN, Autor(es), Categoria, Editora, Ano, Quantidade de exemplares |
| Usuários  | Nome completo, Tipo (Aluno/Professor), Matrícula/Registro, Telefone, Situação, Data de cadastro |
| Autores   | Nome completo, Código interno |
| Categorias| Nome, Código, Descrição (opcional)           |
| Empréstimos | ID usuário, ID livro, Data empréstimo, Data devolução, Status, Multa gerada |
| Relação Livro-Autor | ID livro, ID autor                    |

### Relacionamentos Principais

- Usuários – Empréstimos: 1:N  
- Livros – Empréstimos: 1:N (controle por exemplares)  
- Usuários – Reservas: 1:N  
- Livros – Reservas: 1:N  
- Livros – Autores: N:M  
- Livros – Categorias: N:1  
- Empréstimos – Multas: 1:0..1  

## Regras de Negócio

| Regra              | Descrição                                 |
|--------------------|-------------------------------------------|
| Limite de empréstimos | Alunos: até 3 livros; Professores: até 5  |
| Prazos de devolução | Alunos: 7 dias; Professores: 15 dias       |
| Renovações         | Permitidas se não houver reserva pendente |
| Multas             | R$5,00 por dia de atraso; bloqueio para inadimplentes |
| Cadastro de livros | Apenas por funcionários autorizados        |

## Principais Processos

- Verificação e registro de empréstimos  
- Registro de devoluções com cálculo automático de multas  
- Processamento de renovações mediante regras específicas  
- Gestão automatizada de reservas e filas de espera  
- Controle de disponibilidade e atualização do acervo  

## Instalação

1. Instale o [Oracle Database](https://www.oracle.com/br/database/sqldeveloper/) na sua máquina.  
2. Importe os scripts SQL fornecidos neste repositório para criar e popular as tabelas.  
3. Utilize ferramentas SQL como SQL Developer para interagir com o banco.  

## Uso

- Execute consultas para gerenciar usuários, empréstimos, reservas e multas.  
- Utilize os scripts para simular operações do dia a dia da biblioteca.  
- Ajuste regras e parâmetros conforme necessidade.  

## Contato

Para dúvidas, sugestões ou trocas sobre o projeto, entre em contato:  
- **Taina de Oliveira**  
- Email: med.oliveira689@gmail.com
- LinkedIn: [linkedin.com/in/alex]([https://linkedin.com/in/alex](https://www.linkedin.com/in/tainaalvesdeoliveira/))  

---

*Obrigado por visitar este projeto!*
