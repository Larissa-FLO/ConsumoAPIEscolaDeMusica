create database projetoGuri
go

use projetoGuri 
go

-- Criação Tabelas

--Tabela de Turmas
create table turmas (
codTurma int primary key identity(1,1),
profResponsavel varchar(50) not null,
instrumento varchar(20) not null,
turno varchar(10) not null
);

-- Tabela de Alunos
create table alunos (
IdAluno int primary key identity(1,1),
nomeAluno varchar(50) not null,
dataNasc date not null,
nomeResponsavel1 varchar(50) not null,
nomeResponsavel2 varchar(50),
telContato int not null,
codTurma int not null,
dataInicio date not null,
frequencia int not null,
foreign key (codTurma) references turmas(codTurma)
);


--Dados para a tabela Tumas
INSERT INTO turmas (profResponsavel, instrumento, turno)
VALUES
('Ana Oliveira', 'Violino', 'Manhã'),
('Carlos Santos', 'Piano', 'Tarde'),
('Juliana Silva', 'Guitarra', 'Noite'),
('Roberto Costa', 'Flauta', 'Manhã'),
('Isabel Pereira', 'Violino', 'Tarde'),
('Lúcia Martins', 'Violoncelo', 'Noite'),
('Felipe Oliveira', 'Saxofone', 'Manhã'),
('Camila Almeida', 'Violoncelo', 'Tarde'),
('Ricardo Pereira', 'Trompete', 'Noite'),
('Mariana Santos', 'Baixo', 'Tarde');


-- Dados para a tabela 'alunos'
INSERT INTO alunos (nomeAluno, dataNasc, nomeResponsavel1, nomeResponsavel2, telContato, codTurma, dataInicio, frequencia)
VALUES
('Alice Silva', '2010-05-15', 'José Silva', 'Maria Santos', 123456789, 1, '2023-01-10', 90),
('Pedro Oliveira', '2011-08-20', 'Ana Oliveira', 'Carlos Oliveira', 987654321, 2, '2023-02-05', 85),
('Mariana Costa', '2009-11-03', 'Lucas Costa', 'Laura Oliveira', 555555555, 3, '2023-01-15', 92),
('Gabriel Santos', '2010-02-18', 'Rafael Santos', 'Isabel Pereira', 333333333, 4, '2023-03-01', 69),
('Laura Almeida', '2011-06-25', 'Rodrigo Almeida', 'Camila Almeida', 111111111, 5, '2023-02-20', 91),
('Matheus Pereira', '2012-04-12', 'Marcos Pereira', 'Carla Lima', 777777777, 1, '2023-01-20', 51),
('Luana Oliveira', '2010-09-08', 'Pedro Oliveira', 'Mariana Oliveira', 999999999, 2, '2023-02-10', 89),
('Lucas Alves', '2011-11-30', 'Roberta Alves', 'Fernando Alves', 444444444, 3, '2023-01-25', 70),
('Júlia Lima', '2009-07-05', 'Ricardo Lima', 'Ana Lima', 666666666, 4, '2023-03-05', 86),
('Diego Santos', '2010-03-22', 'Fernanda Santos', 'Gustavo Santos', 222222222, 5, '2023-02-15', 90),
('Isabela Costa', '2011-01-18', 'João Costa', 'Márcia Costa', 888888888, 1, '2023-01-22', 88),
('Vitoria Oliveira', '2010-06-14', 'Eduardo Oliveira', 'Patrícia Oliveira', 555555555, 2, '2023-02-12', 91),
('Rodrigo Pereira', '2011-10-05', 'Luciana Pereira', 'Anderson Silva', 333333333, 3, '2023-01-28', 94),
('Amanda Santos', '2010-04-29', 'Hugo Santos', 'Daniela Santos', 111111111, 4, '2023-03-10', 55),
('Bruno Almeida', '2012-07-11', 'Sandra Almeida', 'Antônio Almeida', 666666666, 5, '2023-02-25', 92),
('Gabriela Oliveira', '2012-02-08', 'Miguel Oliveira', 'Fernanda Oliveira', 999999999, 6, '2023-03-15', 85),
('Rafael Lima', '2011-05-25', 'Alexandre Lima', 'Tatiane Lima', 777777777, 7, '2023-03-20', 88),
('Larissa Santos', '2010-09-12', 'Vinícius Santos', 'Patrícia Santos', 555555555, 8, '2023-03-25', 92),
('Felipe Almeida', '2012-12-01', 'Roberta Almeida', 'Ricardo Almeida', 333333333, 9, '2023-04-01', 90),
('Anderson Costa', '2010-08-18', 'Carla Costa', 'Daniel Costa', 111111111, 10, '2023-04-05', 68),
('Luiz Silva', '2011-11-10', 'Fernanda Silva', 'Marcelo Silva', 888888888, 6, '2023-04-10', 89),
('Jéssica Oliveira', '2009-06-23', 'Paulo Oliveira', 'Luciana Oliveira', 666666666, 7, '2023-04-15', 91),
('Lucas Pereira', '2010-03-17', 'Cristiane Pereira', 'Roberto Pereira', 444444444, 8, '2023-04-20', 93),
('Aline Santos', '2011-07-30', 'Diego Santos', 'Talita Santos', 222222222, 9, '2023-04-25', 71),
('Gustavo Alves', '2009-12-12', 'Mariana Alves', 'Fábio Alves', 999999999, 10, '2023-05-01', 94);

