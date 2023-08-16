-- Seleciona o BANCO DE DADOS:
USE resilientes;

-- Tabela Curso 
CREATE TABLE IF NOT EXISTS `curso` (
    `id_curso` INT PRIMARY KEY AUTO_INCREMENT,
    `nome` VARCHAR(100) NOT NULL,
    `carga_horaria` INT
)  DEFAULT CHARSET=UTF8MB4;

-- Tabela Módulo 
CREATE TABLE IF NOT EXISTS `modulo` (
    `id_modulo` INT PRIMARY KEY AUTO_INCREMENT,
    `numero_modulo` INT NOT NULL,
    `nome` VARCHAR(100) NOT NULL
)  DEFAULT CHARSET=UTF8MB4

-- Tabela Status
CREATE TABLE IF NOT EXISTS `status` (
    `id_status` INT PRIMARY KEY AUTO_INCREMENT,
    `situacao` VARCHAR(255) NOT NULL
)  DEFAULT CHARSET=UTF8MB4

-- Tabela Endereço
CREATE TABLE IF NOT EXISTS `endereco` (
    `id_endereco` INT PRIMARY KEY AUTO_INCREMENT,
    `logradouro` VARCHAR(200) NOT NULL,
    `cidade` VARCHAR(100) NOT NULL,
    `estado` VARCHAR(50) NOT NULL,
    `cep` VARCHAR(10) NOT NULL
)  DEFAULT CHARSET=UTF8MB4

-- Tabela Turma
CREATE TABLE IF NOT EXISTS `turma` (
    `id_turma` INT PRIMARY KEY AUTO_INCREMENT,
    `nome` VARCHAR(255) NOT NULL,
    `quantidade_alunos` INT,
    `id_curso` INT,
    FOREIGN KEY (`id_curso`)
        REFERENCES `curso` (`id_curso`)
)  DEFAULT CHARSET=UTF8MB4

ALTER TABLE `turma`
ADD COLUMN `id_status` INT,
ADD FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`);

-- Tabela Facilitador
CREATE TABLE IF NOT EXISTS `facilitador` (
    `id_facilitador` INT PRIMARY KEY AUTO_INCREMENT,
    `cpf` CHAR(11) UNIQUE NOT NULL,
    `nome` VARCHAR(100) NOT NULL,
    `data_nascimento` DATE NOT NULL,
    `email` VARCHAR(100) UNIQUE NOT NULL,
    `telefone` VARCHAR(20) NOT NULL,
    `habilidade` VARCHAR(20) NOT NULL,
    `id_endereco` INT,
    `id_status` INT,
    FOREIGN KEY (`id_endereco`)
        REFERENCES `endereco` (`id_endereco`),
    FOREIGN KEY (`id_status`)
        REFERENCES `status` (`id_status`)
)  DEFAULT CHARSET=UTF8MB4

-- Tabela Intermediária Curso-Módulo-Facilitador
CREATE TABLE IF NOT EXISTS `curso_modulo_facilitador` (
    `id_curso` INT,
    `id_modulo` INT,
    `id_facilitador` INT,
    FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`),
    FOREIGN KEY (`id_modulo`) REFERENCES `modulo` (`id_modulo`),
    FOREIGN KEY (`id_facilitador`) REFERENCES `facilitador` (`id_facilitador`)
)  DEFAULT CHARSET=UTF8MB4;

-- Tabela Aluno
CREATE TABLE IF NOT EXISTS `aluno` (
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
CREATE TABLE IF NOT EXISTS `log` (
    `id_log` INT PRIMARY KEY AUTO_INCREMENT,
    `data_hora` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `status_anterior` VARCHAR(50) NOT NULL,
    `id_aluno` INT,
    `id_status` INT, -- Referente ao "Status Atual" do aluno no Curso-Turma-Módulo.
    FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`),
    FOREIGN KEY (`id_status`) REFERENCES `aluno` (`id_status`)
)  DEFAULT CHARSET=UTF8MB4;