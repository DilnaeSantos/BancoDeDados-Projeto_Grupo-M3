-- Inserts tabela estudantes - Dilnae
-- Inserts tabela pessoas facilitadoras - Denise
-- Inserts tabela turmas - José
-- Inserts tabela módulos - Em grupo
-- Inserts tabela cursos - Tawany
INSERT INTO
    curso (nome, carga_horaria)
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
-- Endereço estudantes