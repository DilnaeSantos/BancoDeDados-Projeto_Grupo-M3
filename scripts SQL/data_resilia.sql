-- Inserts tabela estudantes - Dilnae
-- Segundo conjunto de inserts (30 registros)
-- Inserts tabela pessoas facilitadoras - Denise
-- Inserts tabela turmas - José
-- Inserts tabela módulos - Em grupo
-- Inserts tabela cursos - Tawany

-- Inserts da tabela Curso
INSERT INTO curso (nome, carga_horaria)
VALUES
    ('Formação em Análise de Sistemas', 180),
    ('Formação em Data Analytics', 450),
    ('Formação em WebDev Full Stack Java', 360),
    ('Formação em WebDev Full Stack JavaScript', 500);

-- Inserts tabela endereço
INSERT INTO endereco (logradouro, cidade, estado, cep) VALUES
-- Endereço facilitadores
('Rua das Flores, 123', 'São Paulo', 'SP', '01234-567'),
('Avenida Principal, 456', 'Rio de Janeiro', 'RJ', '20000-001'),
('Praça da Liberdade, 789', 'Belo Horizonte', 'MG', '30140-010'),
('Travessa das Palmeiras, 234', 'Salvador', 'BA', '40000-000'),
('Rua das Laranjeiras, 567', 'Porto Alegre', 'RS', '90000-123'),
('Avenida Central, 890', 'Brasília', 'DF', '70000-000'),
('Rua do Comércio, 345', 'Curitiba', 'PR', '80000-456'),
('Alameda das Rosas, 678', 'Fortaleza', 'CE', '60000-789'),
('Estrada do Sol, 901', 'Recife', 'PE', '50000-234'),
('Rua das Oliveiras, 234', 'Vitória', 'ES', '29000-567'),
('Avenida do Mar, 567', 'São Luís', 'MA', '65000-890'),
('Travessa dos Coqueiros, 890', 'Belém', 'PA', '66000-123'),
('Rua das Estrelas, 123', 'Goiânia', 'GO', '70000-456'),
('Avenida das Palmeiras, 456', 'Manaus', 'AM', '69000-789'),
('Praça do Pôr do Sol, 789', 'Cuiabá', 'MT', '78000-234'),
('Travessa das Flores, 234', 'Natal', 'RN', '59000-567'),
('Rua da Praia, 567', 'Florianópolis', 'SC', '88000-890'),
('Avenida das Gaivotas, 890', 'João Pessoa', 'PB', '58000-123'),
('Alameda dos Ipês, 123', 'Campo Grande', 'MS', '79000-456'),
('Estrada da Serra, 456', 'Teresina', 'PI', '64000-789'),
-- Endereço estudantes
('Rua do Bosque, 789', 'Maceió', 'AL', '57000-234'),
('Avenida das Dunas, 234', 'Aracaju', 'SE', '49000-567'),
('Praça Central, 567', 'Boa Vista', 'RR', '69300-890'),
('Travessa das Águas, 890', 'Palmas', 'TO', '77000-123'),
('Rua do Cerrado, 123', 'Porto Velho', 'RO', '76800-456'),
('Avenida do Pantanal, 456', 'Macapá', 'AP', '68900-789'),
('Alameda das Seriemas, 789', 'Rio Branco', 'AC', '69900-234'),
('Estrada Verde, 234', 'Criciúma', 'SC', '88800-567'),
('Rua das Montanhas, 567', 'Itajaí', 'SC', '88300-890'),
('Avenida dos Rios, 890', 'Blumenau', 'SC', '89000-123'),
('Travessa do Lago, 123', 'Joinville', 'SC', '89200-456'),
('Praça das Araucárias, 456', 'Chapecó', 'SC', '89800-789'),
('Alameda das Cachoeiras, 789', 'Lages', 'SC', '88500-234'),
('Estrada das Neves, 234', 'Caxias do Sul', 'RS', '95000-567'),
('Rua das Vinhas, 567', 'Bento Gonçalves', 'RS', '95700-890'),
('Avenida das Colinas, 890', 'Passo Fundo', 'RS', '99000-123'),
('Travessa dos Vales, 123', 'Santa Maria', 'RS', '97000-456'),
('Praça das Oliveiras, 456', 'Pelotas', 'RS', '96000-789'),
('Alameda dos Pampas, 789', 'Uruguaiana', 'RS', '97500-234'),
('Estrada das Missões, 234', 'Santo Ângelo', 'RS', '98800-567'),
('Rua das Serras, 567', 'Caxias do Sul', 'RS', '95000-890'),
('Avenida das Uvas, 890', 'Bento Gonçalves', 'RS', '95700-123'),
('Travessa das Videiras, 123', 'Garibaldi', 'RS', '95720-456'),
('Praça dos Parreirais, 456', 'Farroupilha', 'RS', '95180-789'),
('Alameda das Oliveiras, 789', 'Vacaria', 'RS', '95200-234'),
('Estrada dos Vinhedos, 234', 'Bento Gonçalves', 'RS', '95700-567'),
('Rua dos Sabores, 567', 'Porto Alegre', 'RS', '90000-890'),
('Avenida das Churrascarias, 890', 'Novo Hamburgo', 'RS', '93400-123'),
('Travessa das Pizzas, 123', 'Canoas', 'RS', '92000-456'),
('Praça das Sobremesas, 456', 'Gramado', 'RS', '95670-789'),
('Alameda dos Restaurantes, 789', 'Caxias do Sul', 'RS', '95000-234'),
('Rua das Praias, 234', 'São Luís', 'MA', '65000-890'),
('Avenida das Dunas, 567', 'Teresina', 'PI', '64000-123'),
('Praça Central, 890', 'João Pessoa', 'PB', '58000-456'),
('Travessa das Águas, 123', 'Campina Grande', 'PB', '58400-789'),
('Rua do Cerrado, 456', 'Recife', 'PE', '50000-234'),
('Avenida do Pantanal, 789', 'Fortaleza', 'CE', '60000-567'),
('Alameda das Seriemas, 234', 'Natal', 'RN', '59000-890'),
('Estrada Verde, 567', 'Mossoró', 'RN', '59600-123'),
('Rua das Montanhas, 890', 'João Pessoa', 'PB', '58000-456'),
('Avenida dos Rios, 123', 'Camaçari', 'BA', '42800-789'),
('Travessa do Lago, 456', 'Feira de Santana', 'BA', '44000-234'),
('Praça das Araucárias, 789', 'Salvador', 'BA', '40000-567'),
('Alameda das Cachoeiras, 234', 'Camaçari', 'BA', '42800-890'),
('Estrada das Neves, 567', 'Aracaju', 'SE', '49000-123'),
('Rua das Vinhas, 890', 'Maceió', 'AL', '57000-456'),
('Avenida das Colinas, 123', 'Porto Seguro', 'BA', '45800-789'),
('Travessa dos Vales, 456', 'Ilhéus', 'BA', '45650-234'),
('Praça das Oliveiras, 789', 'Itabuna', 'BA', '45600-567'),
('Alameda dos Pampas, 234', 'Vitória da Conquista', 'BA', '45000-890'),
('Estrada das Missões, 567', 'Jequié', 'BA', '45200-123'),
('Rua das Serras, 890', 'Feira de Santana', 'BA', '44000-456'),
('Avenida das Uvas, 123', 'Petrolina', 'PE', '56300-789'),
('Travessa das Videiras, 456', 'Juazeiro', 'BA', '48900-234'),
('Praça dos Parreirais, 789', 'Recife', 'PE', '50000-567'),
('Alameda das Oliveiras, 234', 'Camaragibe', 'PE', '54750-890'),
('Estrada dos Vinhedos, 567', 'Olinda', 'PE', '53000-123'),
('Rua dos Sabores, 890', 'Maceió', 'AL', '57000-456'),
('Avenida das Churrascarias, 123', 'Arapiraca', 'AL', '57300-789');

-- Inserts da tabela Módulo
INSERT INTO modulo (numero_modulo, nome)
VALUES
    (0, 'Introdução ao Curso'), -- Referente a todos os cursos.
    (1, 'Introdução ao Front-End e Criação de Hábitos'), -- Referente aos cursos "WebDev Full Stack JavaScript" e "WebDev Full Stack Java".
    (1, 'Fundamentos de Data Analytics e Pensamento Analítico Fundacional'), -- Referente ao curso "Data Analytics".
    (1, 'Fundamentos da Análise de Sistemas e Resolução de Problemas'), -- Referente ao curso "Análise de Sistemas".
    (2, 'Orientação a Objetos e Inteligência Emocional'), -- Referente aos cursos "WebDev Full Stack JavaScript" e "WebDev Full Stack Java".
    (2, 'Análise Exploratória de Dados e Descoberta de Insights'), -- Referente ao curso "Data Analytics".
    (2, 'Técnicas de Levantamento de Requisitos e Gerenciamento de Projetos'), -- Referente ao curso "Análise de Sistemas".
    (3, 'Modelos de Armazenamento de Dados e Relacionamento Interpessoal'), -- Referente aos cursos "WebDev Full Stack JavaScript", "Data Analytics" e "WebDev Full Stack Java".
    (3, 'Verificação de Requisitos e Inovação'), -- Referente ao curso "Análise de Sistemas".
    (4, 'Tecnologias Back-End e Metodologias Ágeis'), -- Referente ao curso "WebDev Full Stack JavaScript".
    (4, 'Modelagem de Sistemas e Comunicação de Resultados Complexos'), -- Referente aos cursos "Data Analytics" e "Análise de Sistemas".
    (4, 'Desenvolvimento Back-End com Java e Aprendizado Contínuo'), -- Referente ao curso "WebDev Full Stack Java".
    (5, 'Tecnologias Front-End e Postura Profissional'), -- Referente ao curso "WebDev Full Stack Java".
    (5, 'Big Data e Pensamento Estratégico'), -- Referente ao curso "Data Analytics".
    (5, 'Construção de Aplicações Full Stack e Colaboração'), -- Referente ao curso "WebDev Full Stack Java".
    (5, 'Implementação de Sistemas e Liderança'); -- Referente ao curso "Análise de Sistemas".

-- Inserts da tabela Status
INSERT INTO status (situacao)
VALUES
    ('Ativo'),
    ('Inativo'),
    ('Evadido'),
    ('Concluído'),
    ('Reprovado');

-- Inserts da tabela Turma
INSERT INTO turma (nome, quantidade_alunos, id_curso)
VALUES
    ('Vamo Ai - iFood', 15, 1), -- Onde 1 é o id do curso "Formação em Análise de Sistemas".
    ('Códigos do Amanhã - EBANX', 15, 2), -- Onde 2 é o id do curso "Formação em Data Analytics".
    ('Resilia', 15, 3), -- Onde 3 é o id do curso "Formação em WebDev Full Stack Java".
    ('Senac RJ', 15, 4); -- Onde 4 é o id do curso "Formação em WebDev Full Stack JavaScript".

-- Inserts da tabela Facilitador
INSERT INTO facilitador (cpf, nome, data_nascimento, email, telefone, habilidade, id_endereco, id_status)
VALUES
    ('12345678901', 'João da Silva', '1985-03-10', 'joao@gmail.com', '(11) 98765-4321', 'Hard Skill', 1, 1),
    ('23456789012', 'Carlos Oliveira', '1988-06-20', 'carlos@hotmail.com', '(21) 98765-4322', 'Hard Skill', 2, 1),
    ('34567890123', 'Ana Pereira', '1986-01-15', 'ana@outlook.com', '(31) 98765-4323', 'Hard Skill', 3, 1),
    ('45678901234', 'Mariana Santos', '1995-09-05', 'mariana@gmail.com', '(41) 98765-4324', 'Hard Skill', 4, 1),
    ('56789012345', 'Pedro Oliveira', '1990-03-18', 'pedro@hotmail.com', '(51) 98765-4325', 'Hard Skill', 5, 2),
    ('67890123456', 'Maria Almeida', '1987-11-30', 'maria@outlook.com', '(61) 98765-4326', 'Hard Skill', 6, 2),
    ('78901234567', 'José da Silva', '1988-08-22', 'jose@gmail.com', '(71) 98765-4327', 'Hard Skill', 7, 2),
    ('89012345678', 'Carla Oliveira', '1990-06-12', 'carla@hotmail.com', '(81) 98765-4328', 'Hard Skill', 8, 2),
    ('90123456789', 'Lucas Santos', '1995-02-03', 'lucas@gmail.com', '(12) 98765-4329', 'Hard Skill', 9, 1),
    ('01234567890', 'Fernanda Rodrigues', '1990-12-28', 'fernanda@gmail.com', '(22) 98765-4330', 'Soft Skill', 10, 1),
    ('12345678909', 'Rafael Lima', '1988-04-15', 'rafael@hotmail.com', '(32) 98765-4331', 'Soft Skill', 11, 1),
    ('23456789098', 'Isabela Souza', '1989-07-01', 'isabela@outlook.com', '(42) 98765-4332', 'Soft Skill', 12, 2),
    ('34567890187', 'Gustavo Fernandes', '1990-01-10', 'gustavo@gmail.com', '(52) 98765-4333', 'Soft Skill', 13, 2),
    ('45678901276', 'Camila Alves', '1984-11-20', 'camila@hotmail.com', '(62) 98765-4334', 'Soft Skill', 14, 1),
    ('56789012365', 'Thiago Santos', '1990-07-05', 'thiago@outlook.com', '(72) 98765-4335', 'Hard Skill', 15, 1),
    ('67890123454', 'Amanda Silva', '2002-09-30', 'amanda@gmail.com', '(82) 98765-4336', 'Hard Skill', 16, 2),
    ('78901234543', 'Matheus Oliveira', '1985-03-17', 'matheus@hotmail.com', '(92) 98765-4337', 'Hard Skill', 17, 1),
    ('89012345632', 'Larissa Rodrigues', '1984-05-26', 'larissa@outlook.com', '(02) 98765-4338', 'Hard Skill', 18, 2),
    ('90123456721', 'Bruno Lima', '1983-08-11', 'bruno@gmail.com', '(13) 98765-4339', 'Soft Skill', 19, 2),
    ('01234567810', 'Juliana Fernandes', '1996-02-28', 'juliana@gmail.com', '(23) 98765-4340', 'Hard Skill', 20, 1);

-- Inserts da tabela Intermediária Curso-Módulo-Facilitador
INSERT INTO curso_modulo_facilitador (id_curso, id_modulo, id_facilitador)
VALUES
    (),
    ();

-- Inserts da tabela Aluno
INSERT INTO aluno (cpf, nome, data_nascimento, email, telefone, pcd, id_endereco, id_status, id_turma)
VALUES
    ('24177311260', 'Marli Clarice Aragão', '1951-05-15', 'marli_clarice_aragao@hotmail.com', '(79) 98338-0188', 0, 37, 1, 2),
    ('80974846767', 'Oliver Fernando Novaes"', '1956-03-23', 'oliver.fernando.outlook.com', '(86) 98190-2171', 0, 28, 1, 3),
    ('81233563661', 'Brenda Esther Pereira', '1994-06-13', 'brendaestherpereira@gmail.com', '(84) 98811-0712', 0, 22, 1, 1),
    ('53105490213', 'Juan Iago Souza', '1971-08-18', 'juan.iago.souza@gmail.com', '(84) 98783-0206', 0, 42, 4, 4),
    ('31889666017', 'Marcela Valentina Nicole Fogaça', '1976-02-26', 'marcela-fogaca80@hotmail.com', '(98) 99510-3986', 0, 15, 2, 2),
    ('79043184071', 'Levi Tomás Cauê Moura', '1998-04-08', 'levitomasmoura@gmail.com', '(66) 98754-8805', 0, 47, 3, 3),
    ('98975732916', 'Antônia Marli Malu Martins', '1980-05-03', 'antonia.marli.martins@outlook.com', '(83) 99133-8884', 0, 12, 1, 4),
    ('21469389193', 'Julia Nina Mariana da Rocha', '1978-05-07', 'julia_darocha@gmail.com', '(55) 99207-5621', 0, 3, 1, 1),
    ('77177901060', 'Francisca Beatriz Moraes', '1998-03-27', 'francisca-moraes71@hotmail.com', '(53) 98717-9569', 0, 6, 3, 3),
    ('14544703646', 'Raquel Daiane Sales', '2001-01-25', 'raquel_daiane_sales@gmail.com', '(82) 98203-4351', 1, 25, 1, 4),
    ('72309637530', 'Matheus Enrico Costa', '1987-06-14', 'matheus-costa97@gmail.com', '(92) 99861-5221', 0, 10, 4, 1),
    ('15110679690', 'Cristiane Louise Gonçalves', '1993-08-30', 'cristiane_louise_goncalves@hotmail.com', '(67) 98445-9241', 0, 2, 1, 2),
    ('99692734692', 'Bryan Elias Gabriel Rodrigues', '1997-11-28', 'bryan.elias.rodrigues@gmail.com', '(61) 99305-1080', 0, 4, 1, 4),
    ('12839080508', 'Murilo Vinicius da Conceição', '1989-03-08', 'murilo.vinicius.daconceicao@outlook.com', '(11) 98475-7173', 0, 46, 1, 1),
    ('75447842239', 'Clarice Antônia da Luz', '1992-07-14', 'clarice_antonia_daluz@gmail.com', '(95) 98660-8546', 0, 1, 5, 2),
    ('55565871409', 'Raul Bento Santos', '2001-12-17', 'raul_santos@gmail.com', '(84) 98437-0865', 0, 41, 1, 3),
    ('89546445622', 'Lucca Juan Carvalho', '2004-07-03', 'luccajuancarvalho@gmail.com', '(83) 99113-7991', 1, 27, 3, 2),
    ('16125666506', 'Emilly Emanuelly Corte Real', '2000-04-16', 'emilly_cortereal@hotmail.com', '(47) 99478-2235', 0, 43, 1, 4),
    ('14826685726', 'Lúcia Nina da Paz', '2001-12-06', 'lucia.nina.dapaz@outlook.com', '(83) 99494-5459', 0, 32, 4, 1),
    ('16117977565', 'Pedro Bento Monteiro', '1999-08-25', 'pedro-monteiro93@hotmail.com', '(61) 99531-0992', 0, 9, 2, 1),
    ('53140811993', 'Carolina Isadora Carolina Campos', '2003-10-24', 'carolina-campos98@gmail.com', '(83) 99884-2257', 0, 11, 1, 3),
    ('75173890339', 'Laís Camila Lúcia Ferreira', '1997-03-17', 'lais.camila.ferreira@gmail.com', '(11) 98827-5584', 0, 51, 1, 4),
    ('06738094710', 'Benedita Amanda Laís Melo', '2001-06-02', 'benedita.amanda.melo@gmail.com', '(79) 98241-5580', 0, 31, 1, 2),
    ('80163436789', 'Vanessa Bianca Rosângela Pinto', '1998-12-01', 'vanessa_bianca_pinto@gmail.com', '(79) 98608-2086', 0, 48, 3, 4),
    ('68279649573', 'Liz Sophia Isis Oliveira', '1995-02-26', 'liz_sophia_oliveira@outlook.com', '(84) 98253-4623', 0, 26, 2, 3),
    ('64026464580', 'Victor Vicente Baptista', '2000-04-03', 'victor_vicente_baptista@gmail.com', '(92) 98149-4442', 1, 24, 1, 1),
    ('52975470592', 'Nair Letícia das Neves', '1993-08-25', 'nair_dasneves@hotmail.com', '(62) 98565-3799', 0, 5, 1, 1),
    ('24647146820', 'Betina Giovanna da Silva', '1997-08-15', 'betina-dasilva82@gmail.com', '(96) 99184-5381', 0, 14, 5, 4),
    ('19477526509', 'Victor Igor Benjamin da Mota', '2002-11-27', 'victorigordamota@gmail.com', '(41) 98940-6683', 0, 19, 1, 2),
    ('01987331435', 'Julio Vinicius Gomes', '1993-09-16', 'julio-gomes71@gmail.com', '(92) 98887-6062', 0, 29, 1, 3);
    ('27640613724', 'Lucas Gabriel Silva', '2003-05-12', 'lucas.gabriel.silva@gmail.com', '(67) 99111-2233', 0, 51, 1, 2),
    ('74930253618', 'Isabelle Carla de Paula', '1995-10-20', 'isabelle.carla.paula@hotmail.com', '(83) 98555-6677', 0, 52, 3, 3),
    ('41630587168', 'Lavinia Alana Camila Rodrigues', '2002-01-11', 'lavinia.alana.camila@hotmail.com', '(92) 98272-5566', 0, 53, 4, 4),
    ('10987654321', 'Eduardo Ribeiro', '2000-09-05', 'eduardo.ribeiro@gmail.com', '(86) 98888-0000', 0, 54, 1, 1),
    ('99988877766', 'João Victor Silva', '1998-11-30', 'joao_victor_silva@gmail.com', '(92) 99111-1111', 0, 55, 1, 2),
    ('55544433322', 'Caroline Camila Lima', '1999-12-10', 'caroline.camila.lima@hotmail.com', '(11) 98765-4321', 1, 56, 1, 3),
    ('11122233344', 'Pedro Henrique Oliveira', '2002-07-18', 'pedro.henrique.oliveira@gmail.com', '(84) 98888-1111', 0, 57, 2, 4),
    ('66655544433', 'Lucas Gabriel Pereira', '2003-03-09', 'lucas.gabriel.pereira@hotmail.com', '(21) 98765-4321', 0, 58, 3, 1),
    ('77788899900', 'Giovanna Lima', '2004-01-20', 'giovanna.lima@hotmail.com', '(92) 99999-8888', 0, 59, 1, 2),
    ('98765432109', 'Rafael Martins', '2001-06-15', 'rafael.martins@gmail.com', '(81) 98888-7777', 0, 60, 1, 3),
    ('12345678909', 'Larissa Sousa', '2002-10-18', 'larissa.sousa@hotmail.com', '(98) 98888-6666', 0, 61, 3, 4),
    ('34567890123', 'Ana Laura Silva', '2000-09-30', 'ana.laura.silva@gmail.com', '(83) 98888-5555', 0, 62, 1, 1),
    ('56789012345', 'Felipe Oliveira', '2001-03-25', 'felipe.oliveira@hotmail.com', '(92) 98888-4444', 0, 63, 2, 2),
    ('78901234567', 'Mariana Almeida', '2003-08-05', 'mariana.almeida@gmail.com', '(81) 98888-3333', 0, 64, 3, 3),
    ('90123456789', 'Vinicius Santos', '2004-11-10', 'vinicius.santos@hotmail.com', '(86) 98888-2222', 0, 65, 1, 4),
    ('32109876543', 'Juliana Lima', '1999-04-07', 'juliana.lima@hotmail.com', '(21) 98888-1111', 1, 66, 1, 1),
    ('65432109876', 'Matheus Silva', '2001-12-22', 'matheus.silva@gmail.com', '(84) 98888-0000', 0, 67, 1, 2),
    ('87654321098', 'Gabriela Oliveira', '1998-02-14', 'gabriela.oliveira@hotmail.com', '(98) 98888-9999', 0, 68, 3, 3),
    ('23456789012', 'Lucas Santos', '2003-07-09', 'lucas.santos@gmail.com', '(81) 98888-8888', 0, 69, 2, 4),
    ('45678901234', 'Isabela Almeida', '2002-09-12', 'isabela.almeida@hotmail.com', '(86) 98888-7777', 0, 70, 4, 1),
    ('67890123456', 'Rafaela Lima', '2000-05-23', 'rafaela.lima@gmail.com', '(21) 98888-6666', 0, 71, 1, 2),
    ('09876543210', 'Pedro Oliveira', '2004-10-17', 'pedro.oliveira@hotmail.com', '(92) 98888-5555', 0, 72, 3, 3),
    ('34567890123', 'Ana Laura Silva', '2000-09-30', 'ana.laura.silva@gmail.com', '(83) 98888-4444', 0, 73, 1, 4),
    ('56789012345', 'Felipe Oliveira', '2001-03-25', 'felipe.oliveira@hotmail.com', '(92) 98888-3333', 0, 74, 2, 1),
    ('78901234567', 'Mariana Almeida', '2003-08-05', 'mariana.almeida@gmail.com', '(81) 98888-2222', 1, 75, 3, 2),
    ('90123456789', 'Vinicius Santos', '2004-11-10', 'vinicius.santos@hotmail.com', '(86) 98888-1111', 0, 76, 4, 3),
    ('34567890123', 'Ana Laura Silva', '2000-09-30', 'ana.laura.silva@gmail.com', '(83) 98888-0000', 0, 77, 1, 4),
    ('56789012345', 'Felipe Oliveira', '2001-03-25', 'felipe.oliveira@hotmail.com', '(92) 98888-9999', 0, 78, 2, 1),
    ('78901234567', 'Mariana Almeida', '2003-08-05', 'mariana.almeida@gmail.com', '(81) 98888-8888', 0, 79, 3, 2),
    ('90123456789', 'Vinicius Santos', '2004-11-10', 'vinicius.santos@hotmail.com', '(86) 98888-7777', 0, 80, 4, 3);

-- Inserts da tabela Log
INSERT INTO log (acao, status_anterior, status_atual, id_aluno)
VALUES
    (),
    ();