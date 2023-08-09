-- Inserts tabela estudantes - Dilnae
-- Inserts tabela pessoas facilitadoras - Denise
-- Inserts tabela turmas - José
-- Inserts tabela módulos - Em grupo
-- Inserts tabela cursos - Tawany
-- Inserts tabela categorias de curso(extra) - Denise

-- Inserts tabela endereço
INSERT INTO endereco 
  (logradouro, cidade, estado, cep) 
VALUES
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
('Alameda dos Restaurantes, 789', 'Caxias do Sul', 'RS', '95000-234');

INSERT INTO status
	(id_status, situacao)
VALUES
(default, 'Ativo'),
(default, 'Inativo'),
(default, 'Evadido'),
(default, 'Concluido'),
(default, 'Reprovado');

INSERT INTO curso 
  (nome, carga_horaria)
VALUES
    ('Formação em Análise de Sistemas', 180),
    ('Formação em Data Analytics', 400),
    ('Formação em Hacker de Negócios', 240),
    ('Formação em Iniciação em Cultura Digital', 180),
    ('Formação em Upskilling e Reskilling', 300),
    ('Formação em WebDev Full Stack Java', 360),
    ('Formação em WebDev Full Stack JavaScript', 500),
    ('Programa de Estágio Resilia', 120),
    ('Programa de Liderança Inovadora', 180),
    ('Programa de Trainee Resilia', 240);
    
INSERT INTO turma (nome, quantidade_alunos, id_curso)
VALUES
    ('VAMO AI', 25, 1), -- Onde 1 é o id do curso 'Formação em Análise de Sistemas'
    ('codigo do amanha', 20, 2), -- Onde 2 é o id do curso 'Formação em Data Analytics'
    ('resilia', 25, 3), -- Onde 3 é o id do curso 'Formação em WebDev Full Stack Java'
    ('senac', 20, 4); -- Onde 4 é o id do curso 'Formação em WebDev Full Stack JavaScript'
  
-- Inserts para a tabela 'facilitador'
INSERT INTO facilitador (cpf, nome, data_nascimento, email, telefone, habilidade, id_endereco, id_status) VALUES
('12345678901', 'João da Silva', '1985-03-10', 'joao@gmail.com', '(11) 98765-4321', 'Hardskill', 1, 1),
('23456789012', 'Carlos Oliveira', '1988-06-20', 'carlos@hotmail.com', '(21) 98765-4322', 'Hardskill', 2, 1),
('34567890123', 'Ana Pereira', '1986-01-15', 'ana@outlook.com', '(31) 98765-4323', 'Hardskill', 3, 1),
('45678901234', 'Mariana Santos', '1995-09-05', 'mariana@gmail.com', '(41) 98765-4324', 'Hardskill', 4, 1),
('56789012345', 'Pedro Oliveira', '1990-03-18', 'pedro@hotmail.com', '(51) 98765-4325', 'Hardskill', 5, 2),
('67890123456', 'Maria Almeida', '1987-11-30', 'maria@outlook.com', '(61) 98765-4326', 'Hardskill', 6, 2),
('78901234567', 'José da Silva', '1988-08-22', 'jose@gmail.com', '(71) 98765-4327', 'Hardskill', 7, 2),
('89012345678', 'Carla Oliveira', '1990-06-12', 'carla@hotmail.com', '(81) 98765-4328', 'Hardskill', 8, 2),
('90123456789', 'Lucas Santos', '1995-02-03', 'lucas@gmail.com', '(12) 98765-4329', 'Hardskill', 9, 1),
('01234567890', 'Fernanda Rodrigues', '1990-12-28', 'fernanda@gmail.com', '(22) 98765-4330', 'Softskill', 10, 1),
('12345678909', 'Rafael Lima', '1988-04-15', 'rafael@hotmail.com', '(32) 98765-4331', 'Softskill', 11, 1),
('23456789098', 'Isabela Souza', '1989-07-01', 'isabela@outlook.com', '(42) 98765-4332', 'Softskill', 12, 2),
('34567890187', 'Gustavo Fernandes', '1990-01-10', 'gustavo@gmail.com', '(52) 98765-4333', 'Softskill', 13, 2),
('45678901276', 'Camila Alves', '1984-11-20', 'camila@hotmail.com', '(62) 98765-4334', 'Softskill', 14, 1),
('56789012365', 'Thiago Santos', '1990-07-05', 'thiago@outlook.com', '(72) 98765-4335', 'Hardskill', 15, 1),
('67890123454', 'Amanda Silva', '2002-09-30', 'amanda@gmail.com', '(82) 98765-4336', 'Hardskill', 16, 2),
('78901234543', 'Matheus Oliveira', '1985-03-17', 'matheus@hotmail.com', '(92) 98765-4337', 'Hardskill', 17, 1),
('89012345632', 'Larissa Rodrigues', '1984-05-26', 'larissa@outlook.com', '(02) 98765-4338', 'Hardskill', 18, 2),
('90123456721', 'Bruno Lima', '1983-08-11', 'bruno@gmail.com', '(13) 98765-4339', 'Softskill', 19, 2),
('01234567810', 'Juliana Fernandes', '1996-02-28', 'juliana@gmail.com', '(23) 98765-4340', 'Hardskill', 20, 1);

INSERT INTO aluno 
	(cpf, nome, data_nascimento, email, telefone, pcd, id_endereco, id_status, id_turma)
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
#('', '', '', '', '', 0, 45, 3, 3),
#('', '', '', '', '', 0, 20, 4, 2),
#('', '', '', '', '', 0, 17, 1, 1),
#('', '', '', '', '', 0, 49, 1, 4),
#('', '', '', '', '', 0, 18, 4, 2),
#('', '', '', '', '', 0, 35, 3, 1),
#('', '', '', '', '', 1, 40, 2, 4),
#('', '', '', '', '', 0, 38, 5, 3),
#('', '', '', '', '', 0, 30, 1, 2),
#('', '', '', '', '', 0, 13, 1, 4),
#('', '', '', '', '', 0, 36, 4, 3),
#('', '', '', '', '', 0, 39, 1, 1),
#('', '', '', '', '', 0, 44, 3, 3),
#('', '', '', '', '', 0, 6, 1, 1),
#('', '', '', '', '', 0, 50, 5, 4),
#('', '', '', '', '', 0, 21, 1, 2),
#('', '', '', '', '', 0, 8, 1, 1),
#('', '', '', '', '', 0, 33, 3, 4),
#('', '', '', '', '', 0, 16, 4, 3),
#('', '', '', '', '', 1, 7, 2, 2),
#('', '', '', '', '', 0, 34, 1, 3),
#('', '', '', '', '', 0, null, 1, 1),
#('', '', '', '', '', 0, null, 1, 4),
#('', '', '', '', '', 0, null, 4, 2),
#('', '', '', '', '', 0, null, 2, 1),
#('', '', '', '', '', 0, null, 1, 4),
#('', '', '', '', '', 0, null, 1, 2),
#('', '', '', '', '', 0, null, 5, 3),
#('', '', '', '', '', 0, null, 2, 2),
#('', '', '', '', '', 0, null, 1, 4);