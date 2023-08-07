CREATE TABLE `status` (
  `id_status` INT PRIMARY KEY AUTO_INCREMENT,
  `situacao` VARCHAR(255)
)default charset = utf8mb4;

CREATE TABLE `aluno` (
  `id_aluno` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `cpf` CHAR(11) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `pcd` boolean not null,
  `id_endereco` INT,
  `id_status` INT,
  `id_turma` INT,
  fOREIGN KEY (id_endereco) REFERENCES endereco (id_endereco),
  FOREIGN KEY (id_status) REFERENCES status (id_status),
  FOREIGN KEY (id_turma) REFERENCES turma (id_turma)
)default charset = utf8mb4;