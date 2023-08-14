-- Seleciona o BANCO DE DADOS:
USE resilientes;

-- Consultas obrigatórias:
-- 1. Seleciona a quantidade total de ALUNOS cadastrados no BANCO DE DADOS:
SELECT COUNT(*) AS total_alunos
FROM aluno;

-- 2. Seleciona quais FACILITADORES atuam em mais de uma TURMA:
SELECT cmf.id_facilitador, f.nome, COUNT(DISTINCT cmf.id_curso) AS total_cursos
FROM curso_modulo_facilitador cmf
JOIN facilitador f ON cmf.id_facilitador = f.id_facilitador
GROUP BY cmf.id_facilitador
HAVING COUNT(DISTINCT cmf.id_curso) > 1;

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

-- 14. Calcula a média de idade dos ALUNOS PcD cadastrados no BANCO DE DADOS?
SELECT ROUND(AVG(DATEDIFF(CURRENT_DATE, data_nascimento) / 365)) AS media_idade_alunos_pcd
FROM aluno
WHERE pcd = 1;