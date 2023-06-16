# Selecionar cardápios que contenham feijão.
SELECT * FROM
CARDAPIOS 
WHERE Itens LIKE "%Feijão%";

# Conta a quantidade de tuplas na tabela aluno.
SELECT COUNT(RA)
AS QtdAlunos
FROM ALUNOS;

# Quantos alunos são do sexo masculino?
SELECT COUNT(Sexo)
AS QtsAlunosHomens
FROM ALUNOS
WHERE sexo = 'M';

# Quais funcionários da escola nasceram na década de 1990?
SELECT * 
FROM FUNCESCOLA
WHERE DataNasc LIKE "%199%";

# Qual é(são) o(s) filho(s) do Fabio? 
SELECT * 
FROM ALUNOS
WHERE RESPID = 3;

