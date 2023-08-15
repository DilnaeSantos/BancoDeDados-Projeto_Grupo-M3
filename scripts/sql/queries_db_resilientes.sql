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

-- Consulta obrigatória que combina pelo menos 3 tabelas:
-- 1. Seleciona os FACILITADORES que estão ativos, mas estão disponíveis para novas TURMAS:


-- Consultas extras | Tema - Alunos PcD:
-- 1. Seleciona a quantidade total de ALUNOS PcD cadastrados no BANCO DE DADOS:
SELECT COUNT(*) AS total_alunos_pcd
FROM aluno
WHERE pcd = 1;

-- 2. Calcula a média de idade dos ALUNOS PcD cadastrados no BANCO DE DADOS:
SELECT ROUND(AVG(DATEDIFF(CURRENT_DATE, data_nascimento) / 365)) AS media_idade_alunos_pcd
FROM aluno
WHERE pcd = 1;

-- 3. Qual o principal Estado de origem dos ALUNOS PcD?

-- 4. Cria uma view que seleciona a quantidade de ALUNOS PcD agrupados por CURSO:
CREATE VIEW view_alunos_pcd_por_curso AS
SELECT curso.nome, COUNT(*) AS quantidade_alunos_pcd
FROM aluno
INNER JOIN turma ON aluno.id_turma = turma.id_turma
INNER JOIN curso ON turma.id_curso = curso.id_curso
WHERE aluno.pcd = 1
GROUP BY curso.nome;

-- 5. Quantos ALUNOS PcD por turma?

-- 6. Quantos ALUNOS PcD com status ativo?

SELECT
COUNT(*) AS total_alunos,
SUM(CASE WHEN a.pcd = TRUE AND s.situacao = 'Ativo' THEN 1 ELSE 0 END) AS alunos_pcd_ativos,
(SUM(CASE WHEN a.pcd = TRUE AND s.situacao = 'Ativo' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS percentual_pcd_ativos
FROM aluno a
JOIN status s ON a.id_status = s.id_status;


-- 7. Quantos ALUNOS PcD com status inativo?

SELECT
COUNT(*) AS total_alunos,
SUM(CASE WHEN a.pcd = TRUE AND s.situacao = 'Inativo' THEN 1 ELSE 0 END) AS alunos_pcd_inativos,
(SUM(CASE WHEN a.pcd = TRUE AND s.situacao = 'Inativo' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS percentual_pcd_inativos
FROM aluno a
JOIN status s ON a.id_status = s.id_status;

-- 8. Quantos ALUNOS PcD com status evadido?

-- 9. Quantos ALUNOS PcD com status reprovado?

SELECT
COUNT(*) AS total_alunos,
SUM(CASE WHEN a.pcd = TRUE AND s.situacao = 'Reprovado' THEN 1 ELSE 0 END) AS alunos_pcd_reprovados,
(SUM(CASE WHEN a.pcd = TRUE AND s.situacao = 'Reprovado' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS percentual_pcd_reprovados
FROM aluno a
JOIN status s ON a.id_status = s.id_status;

-- 10. Quantos com status concluído?

