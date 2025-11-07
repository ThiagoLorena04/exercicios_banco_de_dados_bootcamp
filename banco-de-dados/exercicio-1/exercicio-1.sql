-- Criação da tabela de cursos
CREATE TABLE cursos (
    id INT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL
);

-- Criação da tabela de alunos
CREATE TABLE alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    curso_id INT,
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

-- Inserindo cursos na tabela cursos
INSERT INTO cursos (id, nome_curso) VALUES (1, 'Desenvolvimento Web Full Stack');
INSERT INTO cursos (id, nome_curso) VALUES (2, 'Ciência de Dados');
INSERT INTO cursos (id, nome_curso) VALUES (3, 'Cybersecurity');

-- Inserindo alunos na tabela alunos
INSERT INTO alunos (id, nome, email, curso_id) VALUES (101, 'João Silva', 'joao@email.com', 1);
INSERT INTO alunos (id, nome, email, curso_id) VALUES (102, 'Maria Santos', 'maria@email.com', 2);
INSERT INTO alunos (id, nome, email, curso_id) VALUES (103, 'Pedro Alves', 'pedro@email.com', 1);
INSERT INTO alunos (id, nome, email, curso_id) VALUES (104, 'Ana Oliveira', 'ana@email.com', 3);

-- O SELECT seleciona todos os alunos da tabalas alunos
SELECT * FROM alunos;