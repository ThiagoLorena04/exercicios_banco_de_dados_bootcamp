-- Parte 1: Trazer o nome do aluno e o nome do curso
SELECT
    a.nome,
    c.nome_curso
FROM
    alunos a
INNER JOIN
    cursos c ON a.curso_id = c.id;


-- Parte 2: Trazer apenas os alunos do curso 'Desenvolvimento Web Full Stack' 
SELECT
    a.nome,
    c.nome_curso
FROM
    alunos a
INNER JOIN
    cursos c ON a.curso_id = c.id
WHERE
    c.nome_curso = 'Desenvolvimento Web Full Stack';

-- Parte 3: Mover um aluno de curso
UPDATE alunos
SET
    curso_id = 2
WHERE
    nome = 'Pedro Alves';

-- Parte 4: verificação do UPDATE (
SELECT
    a.nome,
    c.nome_curso
FROM
    alunos a
INNER JOIN
    cursos c ON a.curso_id = c.id;

-- Parte 5: Descobrir cursos sem alunos
INSERT INTO cursos (id, nome_curso) VALUES (4, 'Marketing Digital');

-- Aqui roda a consulta para achar cursos sem alunos
SELECT
    c.nome_curso
FROM
    cursos c
LEFT JOIN
    alunos a ON c.id = a.curso_id
WHERE
    a.id IS NULL; -- 'IS NULL' significa que a 'tabela da direita' (alunos) não teve correspondência