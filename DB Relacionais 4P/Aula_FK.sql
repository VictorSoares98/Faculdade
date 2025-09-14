CREATE TABLE ensalamento (
	id_ensalamento SERIAL PRIMARY KEY,
	curso_id INTEGER REFERENCES cursos_disciplinas(id),
	sala_id INTEGER REFERENCES salas(id),
	professor_id INTEGER REFERENCES professores(id),
	data_hora TIMESTAMPTZ
);

CREATE TABLE salas (
	id_sala SERIAL PRIMARY KEY,
	num_sala VARCHAR(10) NOT NULL,
	capacidade INTEGER NOT NULL,
	localizacao VARCHAR(100)
);

CREATE TABLE professores (
	id_professor SERIAL PRIMARY KEY,
	nome VARCHAR()
)