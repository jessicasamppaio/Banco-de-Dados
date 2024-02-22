CREATE TABLE IF NOT EXISTS Matricula (
    Aluno_ID INT,
    Curso_ID INT,
    Data_Matricula DATE,
    PRIMARY KEY(Aluno_ID, Curso_ID),
    FOREIGN KEY (Aluno_ID) REFERENCES Aluno(Matricula),
    FOREIGN KEY (Curso_ID) REFERENCES Curso(ID)
);
CREATE TABLE Professor_Disciplina (
    Professor_ID INT,
    Disciplina_ID INT,
    PRIMARY KEY (Professor_ID, Disciplina_ID),
    FOREIGN KEY (Professor_ID) REFERENCES Professor(ID),
    FOREIGN KEY (Disciplina_ID) REFERENCES Disciplina(ID)
);


CREATE TABLE Disciplina_Curso(
    Disciplina_ID INT,
    CursoID INT,
    PRIMARY KEY (Disciplina_ID, CursoID),
    FOREIGN KEY (Disciplina_ID) REFERENCES Disciplina(ID),
    FOREIGN KEY (CursoID) REFERENCES Curso(ID)
);