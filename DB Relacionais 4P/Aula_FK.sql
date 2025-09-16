CREATE TABLE professores (
	id_professor SERIAL PRIMARY KEY,
	nome VARCHAR(100) UNIQUE NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	departamento VARCHAR(100) NOT NULL
);

CREATE TABLE alunos (
	id_aluno SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	matricula VARCHAR(100) UNIQUE NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	curso_id INTEGER REFERENCES cursos_disciplinas(id_curso)
);

CREATE TABLE salas (
	id_sala SERIAL PRIMARY KEY,
	num_sala VARCHAR(10) NOT NULL,
	capacidade INTEGER NOT NULL,
	localizacao VARCHAR(100)
);

CREATE TABLE cursos_disciplinas (
	id_curso SERIAL PRIMARY KEY,
	nome_curso VARCHAR(100) NOT NULL,
	codigo VARCHAR(100) UNIQUE NOT NULL,
	disciplina VARCHAR(100) NOT NULL,
	periodo VARCHAR(100) NOT NULL,
	professor_id INTEGER REFERENCES professores(id_professor)
);

CREATE TABLE ensalamento (
	id_ensalamento SERIAL PRIMARY KEY,
	curso_id INTEGER REFERENCES cursos_disciplinas(id_curso),
	sala_id INTEGER REFERENCES salas(id_sala),
	professor_id INTEGER REFERENCES professores(id_professor),
	data_hora TIMESTAMPTZ DEFAULT NOW()
);

