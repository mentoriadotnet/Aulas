
-- DML (Select, Insert, Update, Delete)

-- Select : Where, Order, Join, Union, Distinct, Group
-- Relatórios e Consultas Complexas

Create Table Alunos (Cod Int, Nome Varchar(20))

Insert Into Alunos (Cod, Nome) Values (1, 'AAAA')
Insert Into Alunos (Cod, Nome) Values (2, 'BBBB')
Insert Into Alunos (Cod, Nome) Values (3, 'CCCC')

Create Table Materias (Cod Int, Nome Varchar(20))

Insert Into Materias (Cod, Nome) Values (1, 'Matematica')
Insert Into Materias (Cod, Nome) Values (2, 'Quimica')
Insert Into Materias (Cod, Nome) Values (3, 'Portugues')

Create Table Notas (CodAlu Int, CodMat Int, Nota Int)

Insert Into Notas (CodAlu, CodMat, Nota) Values (1, 1, 10)
Insert Into Notas (CodAlu, CodMat, Nota) Values (1, 2, 9)
Insert Into Notas (CodAlu, CodMat, Nota) Values (1, 3, 8)
Insert Into Notas (CodAlu, CodMat, Nota) Values (2, 1, 9)
Insert Into Notas (CodAlu, CodMat, Nota) Values (2, 2, 10)
Insert Into Notas (CodAlu, CodMat, Nota) Values (2, 3, 8)


Select top 0 * From Alunos


Select top 0 * From Materias 


Select top 0 * From Notas

-- Inner Join : Ocorrencias nos dois lados

Select A.Cod As Codigo, A.Nome As Aluno, M.Nome As Materia, N.Nota
   From Alunos A 
         Inner Join Notas N On A.Cod = N.CodAlu
		 Inner Join Materias M On M.Cod = N.CodMat
	 Where A.Cod In (1, 2, 3, 4)

Select A.Cod As Codigo, A.Nome As Aluno, M.Nome As Materia, N.Nota
   From Alunos A, Notas N, Materias M
     Where A.Cod = N.CodAlu And
		   M.Cod = N.CodMat And
		   A.Cod In (1, 2, 3, 4) 

-- Left Outer Join : Traz toda a ocorrencia ESQUERDA, independente da DIREITA
-- Right Outer Join : Ao contrario
-- Full Outer Join : Tudo

Select A.Cod As Codigo, A.Nome As Aluno, N.Nota
   From Alunos A   -- mais seletiva / menos densa
         Left Outer Join Notas N On A.Cod = N.CodAlu

Select A.Cod As Codigo, A.Nome As Aluno, N.Nota
   From Alunos A   
         Left Outer Join Notas N On A.Cod = N.CodAlu
     Where N.Nota is null

-- 

Clientes     Pedidos
--------     --------
Codigo PK    CodCliente PK FK
Nome*        CodPedido  PK
             DtPedido*
			 ValPedido*

Select C.Nome, P.DtPedido, P.ValPedido
  From Clientes C
            Inner Join Pedidos P 
			   On C.Codigo = P.CodCliente 



















