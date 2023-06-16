INSERT INTO Enderecos (cidade, rua, numero, cep, pais, estado) 
VALUES 
("Itajaí","Rua das graças",12,68529176,"Brasil",'SC'),
("Caxias do Sul","R.Portugal",57,15533332,"Brasil",'MG'),
("Betim","R.Paineras",9,65390258,"Brasil",'MG'),
("Paranaguá","R.Mulungu",11,61930687,"Brasil",'PR'),
("Chapecó","R.Acácias",28,75729422,"Brasil",'SP');

INSERT INTO FuncEscola (email, telefone, senha, pNome, uNome, dataNasc, sexo, cargo)
VALUES
("amandasantos@hotmail.com", 31978546586, "010203", "Amanda", "Santos", "1995-04-22", 'F', "Secretaria"),
("joao13gomes@gmail.com", 31978563458, "treze", "Joao", "Gomes", "1992-02-13", 'M', "Professor"),
("douglas_silva@gmail,com", 31988875445, "000222", "Douglas", "Silva", "1996-06-18", 'M', "Assistente"),
("cecilia_prof@gmail.com", 3198866553, "educa011", "Cecilia", "Cardoso", "1989-08-10",'F', "Professora"),
("lucas.silveira@icloud.com", 31975622558, "silv10", "Lucas", "Silveira", "1986-10-06", 'M',"Coordenador");

INSERT INTO responsaveis (email, telefone, senha, pNome, uNome, dataNasc, sexo, enderecoID)
VALUES 
("xaolin@gmail.com","33654698478","1234569","Saulo","Oliveira","1999-10-01",'M',1),
("tilapia123@outlook.com","31978456321","789456","Daniel","Silveira","1989-02-03",'M',2),
("trindade54@gmail.com","11456789321","534fabio","Fabio","Cardoso","1954-12-15",'M',3),
("daniela37@gmail.com","31369258147","yaset!2","Daniela","Paiva","1995-05-25",'F',4),
("gublas89@hotmail.com","31654785482","roboguerreiro","Victor","Lima","1968-06-07",'M',5);

INSERT INTO Alunos (pNome,uNome,dataNasc,sexo,respID)
VALUES
("João","Ronaldo","2004-05-06",'M',1),
("Maria","Clara","2003-07-19",'F',2),
("Wellington","Lopes","2004-08-18",'M',3),
("Otavio","Silveira","2006-11-22",'M',4),
("Julio","Giuliane","2001-05-15",'M',5);

INSERT INTO InfoEspecialAluno (descricao, conteudo, alunoRA, respID)
VALUES 
("Saude","João tem alergia a poeira",1,1),
("Falta", "Maria não poderá comparecer a aula na sexta-feira para ir ao dentista", 2, 2),
("Acompanhamento", "Peço para que façam um acompanhamento especial em matemática para o Wellington", 3, 3),
("Saude", "Otavio tem alergia a remedios para a paracetamol", 4, 4),
("Gosto Culinário","Julio não come strogonoff",5,5);

INSERT INTO notificacoes (conteudo,dataEnvio,funcID,respID)
VALUES 
("Julio teve um desempenho lamentável na prova de demografia russa!","2023-04-26",4,5),
("Próxima segunda é festa junina!","2023-06-14",1,NULL),
("Maria mordeu a orelha de otavio! Esperamos sua presença depois do horário de aula!","2023-07-08",3,2),
("Otavio bateu em maria, após ela morder sua orelha, haverá uma reunião com ambos os pais!","2023-07-08",4,2),
("Parabéns Saulo, seu filho João teve um ótimo desempenho na prova sobre o legado de Gengis Khan!", "2023-03-14",2,1);

INSERT INTO Notas (atividade, pontuacao, professor, prazo)
VALUES 
("Fazer uma lista de 20 numeros que são dividiveis por 12",8.5, "Cecilia Cardoso", "2023-04-13"), 
("Fazer uma lista com  os 8 principais nomes da cultura nordestina e um resumo de cada", 5.4, "Joao Gomes", "2023-04-22"),
("Fazer um texto de 30 linhas sobre quem foi Nelson Mandela",8.5, "Joao Gomes", "2023-05-20"),
("Escrever a tabuada de divisoes a mão",6.5, "Cecilia Cardoso","2023-05-09"),
("Descreva as principais características da caratinga", 5.0, "Joao Gomes","2023-05-04");

INSERT INTO Cardapios (dataEnvio, itens)
VALUES ("2023-04-10", "Feijão Tropeiro, Ovo, Arroz, Feijão, Salada"),
("2023-04-11", "Peito de Frango, Purê de Batata Arroz, Feijão, Salada"),
("2023-04-12", "Carne cozida, Couve, Arroz, Feijão, Salada"),
("2023-04-13", "Bife bovino, Arroz, Feijão, Salada"),
("2023-04-14", "Omele recheado, Arroz, Feijão, Salada");