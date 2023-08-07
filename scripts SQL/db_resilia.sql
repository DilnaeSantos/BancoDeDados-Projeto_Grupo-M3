-- Tabela pessoas facilitadoras
CREATE TABLE `facilitador` (
  `id_facilitador` int PRIMARY KEY AUTO_INCREMENT,
  `cpf` varchar(11) UNIQUE NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `email` varchar(100) UNIQUE NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `habilidade` varchar(20) NOT NULL,
  `id_endereco` int,
  `id_status` int,
  FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`),
  FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`)
) default charset = utf8mb4;

-- Tabela endereço

CREATE TABLE `endereco` (
  `id_endereco` int PRIMARY KEY AUTO_INCREMENT,
  `logradouro` varchar(200) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cep` varchar(10) NOT NULL
) default charset = utf8mb4;

--Tabela intermediária curso_modulo_facilitador

CREATE TABLE `curso_modulo_facilitador` (
  `id_curso` int,
  `id_modulo` int,
  `id_facilitador` int,
    FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`),
    FOREIGN KEY (`id_modulo`) REFERENCES `modulo` (`id_modulo`),
    FOREIGN KEY (`id_facilitador`) REFERENCES `facilitador` (`id_facilitador`)
) default charset = utf8mb4;
   
--Tabela modulo
CREATE TABLE `modulo` (
  `id_modulo` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `numero_modulo` int NOT NULL
) default charset = utf8mb4;

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
