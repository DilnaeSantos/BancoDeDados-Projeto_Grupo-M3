-- Criação do banco de dados

-- Tabela estudantes - Dilnae

-- Tabela pessoas facilitadoras - Denise

-- Tabela turmas - José

-- Tabela módulos - Em grupo

-- Tabela cursos - Tawany

CREATE TABLE `curso` (
    `id_curso` int PRIMARY KEY AUTO_INCREMENT,
    `nome` varchar(100),
    `carga_horaria` int
);

-- Tabela categorias de curso(extra) - Denise