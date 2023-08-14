-- selecionar quais facilitadores atuam em mais de um curso?
SELECT cmf.id_facilitador, f.nome, COUNT(DISTINCT cmf.id_curso) AS total_cursos
FROM curso_modulo_facilitador cmf
JOIN facilitador f ON cmf.id_facilitador = f.id_facilitador
GROUP BY cmf.id_facilitador
HAVING COUNT(DISTINCT cmf.id_curso) > 1;

-- qual e a media de idade dos alunos pcds?
SELECT ROUND(AVG(DATEDIFF(CURRENT_DATE, data_nascimento) / 365)) AS media_idade_pcds
FROM aluno
WHERE pcd = 1;
