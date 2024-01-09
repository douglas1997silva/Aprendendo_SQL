CREATE TABLE tabelaprodrutos (
  ID_Produtos INT PRIMARY key,
  Nome_Produto VARCHAR (250),
  Descricao TEXT,
  Categoria INT,
  Preco_de_Compra DECIMAL (10,2),
  Unidade VARCHAR (50),
  Fornecedor INT,
  Data_de_Inclusao DATE,
  FOREIGN KEY (Categoria) REFERENCES tabelacategoria (id_categoria),
  FOREIGN key (Fornecedor) REFERENCES tabelapedidos(id)
  )

  CRIAR TABELA :

CREATE TABLE tabelaalunos
(ID_Alunos INT PRIMARY KEY,
 Nome_Aluno VARCHAR (50),
 Idade_Aluno INT,
 Nota_Aluno DECIMAL (10,2)
 );
 
INSERIRI DADOS NA TABELA :

INSERT INTO tabelaalunos(
  id_alunos,
  nome_aluno,
  idade_aluno,
  nota_aluno)
  VALUES 
  ('1', 'Douglas Oliveira', 26, 7.10),
  ('2', 'Gabriella Oliveira' , 26, 9.10),
  ('3', 'Luiz Felipe OLiveira', 15, 6.10),
  ('4', 'Davi Lucca OLiveira', 15, 5.5),
  ('5', 'Clarice Oliveira' , 14, 8.5);
  SELECT *from tabelaalunos;
  
  CRIAR OUTRA TABELA REFERENCIAR A PRINCIPAL E PEGAR OS DADOS DA MESMA :
  
  CREATE TABLE tabelaalunospassou (
  ID_Alunospassou INT PRIMARY KEY,
  Nome_Alunopassou VARCHAR (50) ,
  idade_alunopassou INT,
  Nota_Alunopassou INT,
  FOREIGN KEY (Nota_alunopassou) REFERENCES tabelaalunos(id_alunos)
);
  
  PEGAR DADOS DE UMA TABEL PARA OUTRA COLOCANDO ATE A CONDIÇÃO :
  
  
  INSERT INTO tabelaalunospassou (
  id_alunospassou,
  nome_alunopassou,
  idade_alunopassou,
  nota_alunopassou)
  SELECT
  id_alunos,
  nome_aluno,
  idade_aluno,
  nota_aluno
  FROM tabelaalunos
  WHERE nota_aluno >= 7.0;
  
  SELECT*from tabelaalunospassou;
