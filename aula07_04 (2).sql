Tcreate database Clinica;
use Clinica;
drop table Medico;
-- Tabela Medico
create table Medico (
medCodigo integer primary key,
medNome varchar (100) 
);
insert into Medico ( medCodigo, medNome)
values
('001', 'João');


-- Tabela paciente
create table Paciente(
pacCodigo integer primary key,
pacNome varchar (100)
);
insert into Paciente ( pacCodigo,pacNome)
values
('01', 'Dom');

-- Tabela Medicamento
create table Medicamento(
MdCodigo integer primary key,
MdNome varchar (100)
);
insert into Medicamento ( MdCodigo,MdNome)
values
('10','Novalgina');

--  Tabela Consulta
create table Consulta(
fk_medCodigo integer,
fk_pacCodigo integer,
conCodigo integer primary key,
Data date,
foreign key (fk_medCodigo) references Medico (medCodigo),
foreign key (fk_pacCodigo) references Paciente (pacCodigo)
);
insert into Consulta (fk_medCodigo,fk_pacCodigo,conCodigo,Data)
values
('001', '01','100','2025-03-20');

-- Tabela Prescriçâo 
create table Prescricao(
fk_conCodigo integer,
fk_MdCodigo integer,
posologia varchar (200),
foreign key (fk_conCodigo) references Consulta (conCodigo),
foreign key (fk_MdCodigo) references Medicamento (Mdcodigo)
);
