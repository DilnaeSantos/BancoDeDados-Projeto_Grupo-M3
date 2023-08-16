-- Seleciona o BANCO DE DADOS:
USE resilientes;

-- Consultas obrigatórias:
-- 1. Seleciona a quantidade total de ALUNOS cadastrados no BANCO DE DADOS:
SELECT 
    COUNT(*) AS total_alunos
FROM
    aluno

-- 2. Seleciona quais FACILITADORES atuam em mais de uma TURMA:
SELECT 
    facilitador.nome,
    COUNT(DISTINCT turma.id_turma) AS quantidade_turmas
FROM
    facilitador
        INNER JOIN
    curso_modulo_facilitador AS cmf ON facilitador.id_facilitador = cmf.id_facilitador
        INNER JOIN
    turma ON cmf.id_curso = turma.id_curso
GROUP BY facilitador.id_facilitador , facilitador.nome
HAVING COUNT(DISTINCT turma.id_turma) > 1

-- 3. Cria uma view que seleciona a % de ALUNOS com STATUS "Evadido" agrupados por TURMA:
CREATE VIEW view_porcentagem_evasao AS
    SELECT 
        t.nome AS nome_turma,
        COUNT(a.id_aluno) AS total_alunos,
        SUM(CASE
            WHEN st.situacao = 'Evadido' THEN 1
            ELSE 0
        END) AS total_evasao,
        (SUM(CASE
            WHEN st.situacao = 'Evadido' THEN 1
            ELSE 0
        END) / COUNT(a.id_aluno)) * 100 AS porcentagem_evasao
    FROM
        turma t
            LEFT JOIN
        aluno a ON t.id_turma = a.id_turma
            LEFT JOIN
        status st ON a.id_status = st.id_status
    GROUP BY t.nome 

-- 4. Insere um novo dado na tabela de LOG quando o atributo STATUS de um ALUNO é atualizado:
SELECT 
    facilitador.nome, facilitador.habilidade
FROM
    facilitador
        LEFT JOIN
    curso_modulo_facilitador AS cmf ON facilitador.id_facilitador = cmf.id_facilitador
        LEFT JOIN
    turma ON cmf.id_curso = turma.id_curso
        AND turma.id_status = 1
WHERE
    facilitador.id_status = 1
        AND turma.id_curso IS NULL
GROUP BY facilitador.nome , facilitador.habilidade
ORDER BY facilitador.habilidadensultas extras | Tema - Alunos PcD:
-- 1. Seleciona a quantidade total de ALUNOS PcD cadastrados no BANCO DE DADOS:
SELECT COUNT(*) AS total_alunos_pcd
FROM aluno
WHERE pcd = 1;

-- 2. Calcula a média de idade dos ALUNOS PcD cadastrados no BANCO DE DADOS:
SELECT ROUND(AVG(DATEDIFF(CURRENT_DATE, data_nascimento) / 365)) AS media_idade_alunos_pcd
FROM aluno
WHERE pcd = 1;

-- 3. Cria uma view que seleciona a quantidade de ALUNOS PcD agrupados por estado de origem e organiza o resultado em ordem decrescente:
CREATE VIEW view_alunos_pcd_por_estado AS
SELECT endereco.estado, COUNT(*) AS quantidade_alunos_pcd
FROM aluno
INNER JOIN endereco ON aluno.id_endereco = endereco.id_endereco
WHERE aluno.pcd = 1
GROUP BY endereco.estado
ORDER BY quantidade_alunos_pcd DESC;


-- 4. Cria uma view que seleciona a quantidade de ALUNOS PcD agrupados por CURSO:
CREATE VIEW view_alunos_pcd_por_curso AS
SELECT curso.nome, COUNT(*) AS quantidade_alunos_pcd_curso
FROM aluno
INNER JOIN turma ON aluno.id_turma = turma.id_turma
INNER JOIN curso ON turma.id_curso = curso.id_curso
WHERE aluno.pcd = 1
GROUP BY curso.nome;

-- 5. Quantos ALUNOS PcD por turma?
SELECT turma.nome, COUNT(*) AS quantidade_alunos_pcd_turma
FROM aluno
INNER JOIN turma ON aluno.id_turma = turma.id_turma
WHERE aluno.pcd = 1
GROUP BY turma.nome;

-- 6. Quantos ALUNOS PcD com status ativo?
SELECT
    turma.id_turma,
    turma.nome AS nome_turma,
    COUNT(aluno.id_aluno) AS total_alunos,
    (SELECT COUNT(*) FROM aluno AS aluno_pcd WHERE aluno_pcd.id_turma = turma.id_turma AND aluno_pcd.pcd = true) AS total_alunos_pcd,
    (SELECT COUNT(*) FROM aluno AS aluno_ativo WHERE aluno_ativo.id_turma = turma.id_turma AND aluno_ativo.pcd = true AND aluno_ativo.id_status = 1) AS total_ativos_pcd,
    ROUND(((SELECT COUNT(*) FROM aluno AS aluno_ativo WHERE aluno_ativo.id_turma = turma.id_turma AND aluno_ativo.pcd = true AND aluno_ativo.id_status = 1) / (SELECT COUNT(*) FROM aluno AS aluno_pcd WHERE aluno_pcd.id_turma = turma.id_turma AND aluno_pcd.pcd = true)) * 100, 2) AS porcentagem_ativos
FROM
    turma 
LEFT JOIN aluno ON turma.id_turma = aluno.id_turma
GROUP BY turma.id_turma, turma.nome;



-- 7. Quantos ALUNOS PcD com status inativo?
SELECT
    turma.id_turma,
    turma.nome AS nome_turma,
    COUNT(aluno.id_aluno) AS total_alunos,
    (SELECT COUNT(*) FROM aluno AS aluno_pcd WHERE aluno_pcd.id_turma = turma.id_turma AND aluno_pcd.pcd = true) AS total_alunos_pcd,
    (SELECT COUNT(*) FROM aluno AS aluno_inativo WHERE aluno_inativo.id_turma = turma.id_turma AND aluno_inativo.pcd = true AND aluno_inativo.id_status = 2) AS total_inativos_pcd,
    ROUND(((SELECT COUNT(*) FROM aluno AS aluno_inativo WHERE aluno_inativo.id_turma = turma.id_turma AND aluno_inativo.pcd = true AND aluno_inativo.id_status = 2) / (SELECT COUNT(*) FROM aluno AS aluno_pcd WHERE aluno_pcd.id_turma = turma.id_turma AND aluno_pcd.pcd = true)) * 100, 2) AS porcentagem_inativos
FROM
    turma 
LEFT JOIN aluno ON turma.id_turma = aluno.id_turma
GROUP BY turma.id_turma, turma.nome;

-- 8. Quantos ALUNOS PcD com status evadido?

SELECT
    turma.id_turma,
    turma.nome AS nome_turma,
    COUNT(aluno.id_aluno) AS total_alunos,
    (SELECT COUNT(*) FROM aluno AS aluno_pcd WHERE aluno_pcd.id_turma = turma.id_turma AND aluno_pcd.pcd = true) AS total_alunos_pcd,
    (SELECT COUNT(*) FROM aluno AS aluno_evasao WHERE aluno_evasao.id_turma = turma.id_turma AND aluno_evasao.pcd = true AND aluno_evasao.id_status = 3) AS total_evasao_pcd,
    ROUND(((SELECT COUNT(*) FROM aluno AS aluno_evasao WHERE aluno_evasao.id_turma = turma.id_turma AND aluno_evasao.pcd = true AND aluno_evasao.id_status = 3) / (SELECT COUNT(*) FROM aluno AS aluno_pcd WHERE aluno_pcd.id_turma = turma.id_turma AND aluno_pcd.pcd = true)) * 100, 2) AS porcentagem_evasao
FROM
    turma 
LEFT JOIN aluno ON turma.id_turma = aluno.id_turma
GROUP BY turma.id_turma, turma.nome;



-- 9. Quantos ALUNOS PcD com status reprovado?

SELECT
    turma.id_turma,
    turma.nome AS nome_turma,
    COUNT(aluno.id_aluno) AS total_alunos,
    (SELECT COUNT(*) FROM aluno AS aluno_pcd WHERE aluno_pcd.id_turma = turma.id_turma AND aluno_pcd.pcd = true) AS total_alunos_pcd,
    (SELECT COUNT(*) FROM aluno AS aluno_reprovado WHERE aluno_reprovado.id_turma = turma.id_turma AND aluno_reprovado.pcd = true AND aluno_reprovado.id_status = 5) AS total_reprovados_pcd,
    ROUND(((SELECT COUNT(*) FROM aluno AS aluno_reprovado WHERE aluno_reprovado.id_turma = turma.id_turma AND aluno_reprovado.pcd = true AND aluno_reprovado.id_status = 5) / (SELECT COUNT(*) FROM aluno AS aluno_pcd WHERE aluno_pcd.id_turma = turma.id_turma AND aluno_pcd.pcd = true)) * 100, 2) AS porcentagem_reprovados
FROM
    turma 
LEFT JOIN aluno ON turma.id_turma = aluno.id_turma
GROUP BY turma.id_turma, turma.nome;


-- 10. Quantos com status concluído?
 
SELECT
    turma.id_turma,
    turma.nome AS nome_turma,
    COUNT(aluno.id_aluno) AS total_alunos,
    (SELECT COUNT(*) FROM aluno AS aluno_pcd WHERE aluno_pcd.id_turma = turma.id_turma AND aluno_pcd.pcd = true) AS total_alunos_pcd,
    (SELECT COUNT(*) FROM aluno AS aluno_concluido WHERE aluno_concluido.id_turma = turma.id_turma AND aluno_concluido.pcd = true AND aluno_concluido.id_status = 4) AS total_concluidos_pcd,
    ROUND(((SELECT COUNT(*) FROM aluno AS aluno_concluido WHERE aluno_concluido.id_turma = turma.id_turma AND aluno_concluido.pcd = true AND aluno_concluido.id_status = 4) / (SELECT COUNT(*) FROM aluno AS aluno_pcd WHERE aluno_pcd.id_turma = turma.id_turma AND aluno_pcd.pcd = true)) * 100, 2) AS porcentagem_concluidos
FROM
    turma 
LEFT JOIN aluno ON turma.id_turma = aluno.id_turma
GROUP BY turma.id_turma, turma.nome;