-- Criação do banco de dados
-- Tabela estudantes - Dilnae
-- Tabela pessoas facilitadoras - Denise
-- Tabela turmas - José
CREATE TABLE `turma` (
  `id_turma` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `quantidade_alunos` int,
  `id_curso` int
)default charset = utf8mb4;
-- Tabela módulos - Em grupo
-- Tabela cursos - Tawany
CREATE TABLE
    `curso` (
        `id_curso` int PRIMARY KEY AUTO_INCREMENT,
        `nome` varchar(100) NOT NULL,
        `carga_horaria` int
    );
-- Tabela categorias de curso(extra) - Denise

