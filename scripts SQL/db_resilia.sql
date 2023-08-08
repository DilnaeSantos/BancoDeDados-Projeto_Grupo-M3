-- Tabela aluno - Dilnae
-- Tabela status - Dilnae
-- Tabela pessoas facilitadoras - Denise
-- Tabela turmas - José
-- Tabela módulos - Em grupo
-- Tabela cursos - Tawany

-- Tabela Curso
CREATE TABLE `curso` (
    `id_curso` INT PRIMARY KEY AUTO_INCREMENT,
    `nome` VARCHAR(100) NOT NULL,
    `carga_horaria` INT
)  DEFAULT CHARSET=UTF8MB4;

-- Tabela Módulo
CREATE TABLE `modulo` (
    `id_modulo` INT PRIMARY KEY AUTO_INCREMENT,
    `numero_modulo` INT NOT NULL,
    `nome` VARCHAR(100) NOT NULL
)  DEFAULT CHARSET=UTF8MB4;

-- Tabela Status
CREATE TABLE `status` (
    `id_status` INT PRIMARY KEY AUTO_INCREMENT,
    `situacao` VARCHAR(255) NOT NULL
)  DEFAULT CHARSET=UTF8MB4;

-- Tabela Endereço
CREATE TABLE `endereco` (
    `id_endereco` INT PRIMARY KEY AUTO_INCREMENT,
    `logradouro` VARCHAR(200) NOT NULL,
    `cidade` VARCHAR(100) NOT NULL,
    `estado` VARCHAR(50) NOT NULL,
    `cep` VARCHAR(10) NOT NULL
)  DEFAULT CHARSET=UTF8MB4;

-- Tabela Turma
CREATE TABLE `turma` (
    `id_turma` INT PRIMARY KEY AUTO_INCREMENT,
    `nome` VARCHAR(255) NOT NULL,
    `quantidade_alunos` INT,
    `id_curso` INT,
    FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`)
)  DEFAULT CHARSET=UTF8MB4;

-- Tabela Facilitador
CREATE TABLE `facilitador` (
    `id_facilitador` INT PRIMARY KEY AUTO_INCREMENT,
    `cpf` CHAR(11) UNIQUE NOT NULL,
    `nome` VARCHAR(100) NOT NULL,
    `data_nascimento` DATE NOT NULL,
    `email` VARCHAR(100) UNIQUE NOT NULL,
    `telefone` VARCHAR(20) NOT NULL,
    `habilidade` VARCHAR(20) NOT NULL,
    `id_endereco` INT,
    `id_status` INT,
    FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`),
    FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`)
)  DEFAULT CHARSET=UTF8MB4;

-- Tabela Intermediária Curso-Módulo-Facilitador
CREATE TABLE `curso_modulo_facilitador` (
    `id_curso` INT,
    `id_modulo` INT,
    `id_facilitador` INT,
    FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`),
    FOREIGN KEY (`id_modulo`) REFERENCES `modulo` (`id_modulo`),
    FOREIGN KEY (`id_facilitador`) REFERENCES `facilitador` (`id_facilitador`)
)  DEFAULT CHARSET=UTF8MB4;

-- Tabela Aluno
CREATE TABLE `aluno` (
    `id_aluno` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `cpf` CHAR(11) UNIQUE NOT NULL,
    `nome` VARCHAR(255) NOT NULL,
    `data_nascimento` DATE NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `telefone` VARCHAR(20) NOT NULL,
    `pcd` BOOLEAN NOT NULL,
    `id_endereco` INT,
    `id_status` INT,
    `id_turma` INT,
    FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`),
    FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`),
    FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`)
)  DEFAULT CHARSET=UTF8MB4;

-- Tabela Log
CREATE TABLE `log` (
    `id_log` INT PRIMARY KEY AUTO_INCREMENT,
    `data_hora` TIMESTAMP NOT NULL,
    `acao` VARCHAR(100) NOT NULL,
    `id_aluno` INT,
    FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`)
)  DEFAULT CHARSET=UTF8MB4;