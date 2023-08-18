
# Projeto Resilientes: Modelagem e Análise de Dados

O objetivo deste projeto é otimizar a organização e o acesso aos dados do setor educacional da EdTech Resilia. Isso é alcançado por meio da criação de um banco de dados relacional, que permite armazenar e relacionar informações sobre cursos, módulos, turmas, facilitadores e alunos. As tabelas foram projetadas de forma a permitir consultas eficientes e fornecer uma visão completa do cenário educacional da empresa.

## Estrutura do Banco de Dados

O banco de dados foi modelado com as seguintes tabelas:

- **Curso:** Armazena informações sobre os cursos oferecidos pela Resilia.
- **Módulo:** Contém detalhes dos módulos de ensino.
- **Status:** Registra os diferentes estados possíveis para alunos, facilitadores e turmas.
- **Endereço:** Armazena detalhes de endereços, que podem ser associados a facilitadores e alunos.
- **Turma:** Registra informações das turmas, incluindo o curso ao qual pertencem.
- **Facilitador:** Contém os detalhes dos facilitadores envolvidos no ensino.
- **Curso_Módulo_Facilitador:** Tabela intermediária que relaciona cursos, módulos e facilitadores.
- **Aluno:** Armazena informações dos alunos matriculados nas turmas.
- **Log:** Registra mudanças de status dos alunos ao longo do tempo.

## Decisões Tomadas

Neste projeto, modernizamos a infraestrutura de armazenamento de dados da Resilia, transformando planilhas dispersas em um banco de dados relacional estruturado. Algumas das principais escolhas do projeto incluem:

- Utilização do MySQL como sistema de gerenciamento de banco de dados, devido à sua robustez e suporte a relacionamentos complexos.
- Modelagem cuidadosa das tabelas para garantir a integridade e a eficiência das consultas.
- Uso de chaves primárias e estrangeiras para criar relacionamentos entre as tabelas.
- Implementação de consultas que abordam desafios específicos da Resilia, como cálculos de evasão e identificação de facilitadores disponíveis.
- Para melhorar a acessibilidade do projeto, optou-se por permitir sua implementação tanto diretamente no MySQL Workbench quanto através do Docker. A escolha do Docker como meio de execução visa facilitar o processo, criando um container isolado que incorpora todas as configurações necessárias. Essa abordagem assegura a consistência do ambiente e reduz possíveis problemas de compatibilidade.
- Também criamos um dashboard no Power BI com gráficos interativos para simplificar a visualização e análise dos dados pela equipe da Resilia, gerando insights relevantes para a tomada de decisões. Você pode interagir com o dashboard acessando nossa [página](https://dilnaesantos.github.io/BancoDeDados-Projeto_Grupo-M3/).

## Passo a Passo para implementar o Projeto Resilientes

1. Verifique se você possui o MySQL Workbench ou qualquer outro cliente MySQL instalado em sua máquina.

2. Faça o download dos scripts SQL fornecidos no repositório.

3. Abra o MySQL Workbench e conecte-se ao servidor de banco de dados onde deseja criar o projeto.

4. Abra o arquivo `cria_db_resilientes.sql` no MySQL Workbench e execute-o para criar a base de dados necessária.

5. Abra o arquivo `db_resilientes.sql` e execute-o para criar as tabelas e suas relações.

6. Abra o arquivo `populando_db_resilientes.sql` e execute-o para inserir dados fictícios de exemplo.

7. Abra o arquivo `queries_db_resilientes.sql` e execute as consultas para obter informações específicas.


### Implementar Usando Docker (Opcional)

1. Certifique-se de ter o Docker instalado em sua máquina.
2. Abra o terminal e navegue até a pasta `docker` do projeto.
3. Execute o seguinte comando para construir a imagem Docker:

```sh
docker build -t mysql-image ./
```

4. Depois de criar a imagem, execute o projeto usando o docker-compose:

```sh
docker-compose up
```

## Conclusão

Seguindo essas instruções, você terá configurado e implementado o projeto Resilientes, podendo escolher entre a implementação diretamente no MySQL Workbench ou utilizando o Docker. O resultado será um banco de dados estruturado com tabelas relacionais que armazenam informações sobre cursos, módulos, turmas, facilitadores e alunos. Além disso, você pode usar as consultas fornecidas para extrair informações relevantes para a tomada de decisões e análise das operações acadêmicas da Resilia.

