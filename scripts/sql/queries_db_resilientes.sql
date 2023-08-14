-- Seleciona o BANCO DE DADOS:
USE resilientes;

-- Consultas obrigatórias:
-- 1. Seleciona a quantidade total de ALUNOS cadastrados no BANCO DE DADOS:
SELECT COUNT(*) AS total_alunos
FROM aluno;

-- 2. Seleciona quais FACILITADORES atuam em mais de uma TURMA:

-- 3. Cria uma view que seleciona a % de ALUNOS com STATUS "Evadido" agrupados por TURMA:

-- 4. Insere um novo dado na tabela de LOG quando o atributo STATUS de um ALUNO é atualizado:
    -- Os dados foram inseridos manualmente no "INSERT INTO log".

-- Consultas extras:
    -- Tema: Alunos PcD
-- 5. Cria uma view que selecione a % de ALUNOS com STATUS "Concluído" agrupados por ALUNOS PcD e por CURSO:

-- 6. Seleciona a quantidade total de ALUNOS PcD cadastrados no BANCO DE DADOS:
SELECT COUNT(*) AS total_alunos_pcd
FROM aluno
WHERE pcd = 1;

-- 7. Quantos ALUNOS PcD por curso?

-- 8. Quantos ALUNOS PcD por turma?

-- 9. Quantos ALUNOS PcD com status evadido?

-- 10. Quantos ALUNOS PcD com status ativo?

-- 11. Quantos ALUNOS PcD com status inativo?

-- 12. Quantos ALUNOS PcD com status reprovado?

-- 13. Qual o principal Estado de origem dos ALUNOS PcD?

-- 14. Qual a média de idade dos ALUNOS PcD?





