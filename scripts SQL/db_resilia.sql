-- Criação do banco de dados
-- Tabela estudantes - Dilnae
-- Tabela pessoas facilitadoras - Denise
-- Tabela turmas - José
-- Tabela módulos - Em grupo

-- Tabela cursos - Tawany
CREATE TABLE
    `curso` (
        `id_curso` int PRIMARY KEY AUTO_INCREMENT,
        `nome` varchar(100) NOT NULL,
        `carga_horaria` int
) default charset = utf8mb4;

-- Tabela categorias de curso(extra) - Denise