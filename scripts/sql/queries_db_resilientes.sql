-- Seleciona o BANCO DE DADOS:
USE resilientes;

-- Consultas obrigatórias:
-- 1. Seleciona a quantidade total de ALUNOS cadastrados no BANCO DE DADOS:
SELECT COUNT(*) AS total_alunos
FROM aluno;

-- 2. Seleciona quais FACILITADORES atuam em mais de uma TURMA:
SELECT facilitador.nome, COUNT(DISTINCT turma.id_turma) AS quantidade_turmas
FROM facilitador 
INNER JOIN curso_modulo_facilitador AS cmf ON facilitador.id_facilitador = cmf.id_facilitador
INNER JOIN turma ON cmf.id_curso = turma.id_curso
GROUP BY facilitador.id_facilitador, facilitador.nome
HAVING COUNT(DISTINCT turma.id_turma) > 1;

-- 3. Cria uma view que seleciona a % de ALUNOS com STATUS "Evadido" agrupados por TURMA:

-- 4. Insere um novo dado na tabela de LOG quando o atributo STATUS de um ALUNO é atualizado:
    -- Os dados foram inseridos manualmente no "INSERT INTO log".

-- Consulta obrigatória que combina pelo menos 3 tabelas:
-- 1. Seleciona os FACILITADORES que estão ativos, mas estão disponíveis para novas TURMAS:
SELECT
    facilitador.nome,
    facilitador.habilidade
FROM
    facilitador
LEFT JOIN
    curso_modulo_facilitador AS cmf ON facilitador.id_facilitador = cmf.id_facilitador
LEFT JOIN
    turma ON cmf.id_curso = turma.id_curso AND turma.id_status = 1
WHERE
    facilitador.id_status = 1
    AND turma.id_curso IS NULL
GROUP BY
    facilitador.nome, facilitador.habilidade
ORDER BY
    facilitador.habilidade;

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

-- 7. Quantos ALUNOS PcD com status inativo?

-- 8. Quantos ALUNOS PcD com status evadido?
SELECT
    turma.nome AS nome_turma,
    COUNT(aluno.id_aluno) AS total_alunos,
    (SELECT COUNT(*) FROM aluno AS aluno_pcd WHERE aluno_pcd.id_turma = turma.id_turma AND aluno_pcd.pcd = true) AS total_alunos_pcd,
    (SELECT COUNT(*) FROM aluno AS aluno_evasao WHERE aluno_evasao.id_turma = turma.id_turma AND aluno_evasao.pcd = true AND aluno_evasao.id_status = 4) AS total_evasao_pcd,
    ROUND(((SELECT COUNT(*) FROM aluno AS aluno_evasao WHERE aluno_evasao.id_turma = turma.id_turma AND aluno_evasao.pcd = true AND aluno_evasao.id_status = 4) / (SELECT COUNT(*) FROM aluno AS aluno_pcd WHERE aluno_pcd.id_turma = turma.id_turma AND aluno_pcd.pcd = true)) * 100, 2) AS porcentagem_evasao
FROM
    turma 
LEFT JOIN aluno ON turma.id_turma = aluno.id_turma
GROUP BY turma.nome;

-- 9. Quantos ALUNOS PcD com status reprovado?

-- 10. Quantos com status concluído?

