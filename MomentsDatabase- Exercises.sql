/*//Autor: Victor Hugo MS - victorhmszzero Versão: 1.0*/
USE momento;

/*Moments-Ex1
Inclua suas informações no departamento de tecnologia(6) */
INSERT INTO funcionarios (primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id)
VALUES ('Victor','Magalhães','victorhs@momentos.com','977691834','2022-12-28',9,4230.00,NULL,6);


/*Moments-Ex2 //
Inclua membros no departamento de administração(1) */ 
INSERT INTO funcionarios (primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id)
VALUES  ('Diogo','Barbosa','diogobar@momentos.com','11-912321834','2023-02-12',3,3950.00,105,1);

INSERT INTO funcionarios(primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) 
VALUES ('Guilherme', 'Mascarenhas', 'gui.mascarenhas@momento.com','2023-01-01', '2023-06-12',3,3950.00,105,1);

INSERT INTO funcionarios (primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id)
VALUES ('Isabella','Rosseto','bellaro@momentos.com','11-93700834','2023-03-25',3,3950.00,105,1);

INSERT INTO funcionarios (primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id)
VALUES ('Jeniffer','Carmo','jcarmo@momentos.com','11-911564833','2023-01-17',3,3950.00,105,1);

INSERT INTO funcionarios (primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id)
VALUES ('João','Marcos','gilmarjm@momentos.com','11-977321124','2023-02-22',3,3950.00,105,1);

INSERT INTO funcionarios (primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id)
VALUES ('Rodrigo','Sales','digaosal@momentos.com','11-912482988','2023-02-19',3,3950.00,105,1);

INSERT INTO funcionarios (primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id)
VALUES ('Vinicius','Caló','quecaloem@momentos.com','11-40088988','2023-01-31',3,3950.00,105,1);

/*Moments-Ex3 //
Quantidade de funcionários */ 
SELECT COUNT(`funcionario_id`) FROM funcionarios;

/*Moments-Ex4 //
Quantidade de funcionários no departamento de finanças(10) */ 
SELECT COUNT(`funcionario_id`) FROM funcionarios WHERE departamento_id = '10';

/*Moments-Ex5 //
Média salarial do departamento de tecnologia(6) */ 
SELECT AVG(`salario`) FROM funcionarios WHERE departamento_id = '6';

/*Moments-Ex6 //
Soma salarial do departamento de transporte(5) */ 
SELECT SUM(`salario`) FROM funcionarios WHERE departamento_id = '5';


/*Moments-Ex7 //
Criar um departamento de inovações locado no Brasil(5400)*/ 
INSERT INTO departamento(departamento_id, departamento_name,posicao_id)
VALUES (12, `Inovações`,5400);


/*Moments-Ex8-1 //
Inserir o novo programador(20) William no departamento de inovação(12), e seus dois dependentes, */ 
INSERT INTO ocupacoes(ocupacao_id,ocupacao_title,min_salario,max_salario)
VALUES (20,'Programador',5200.00,11500.00);

INSERT INTO funcionarios(funcionario_id, primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id)
VALUES (310,'William','Ferreira','williamferreira@moment.com','4002-8972','2023-05-24',20,5200.00, NULL , 12);

INSERT INTO dependentes(primeiro_nome,sobrenome,parentesco,funcionario_id)
VALUES ('Inara','Ferreira','Cônjuge',310);

INSERT INTO dependentes(primeiro_nome,sobrenome,parentesco,funcionario_id)
VALUES ('Gabriel','Ferreira','Filho(a)',310);

/*Moments-Ex8-2 //
Inserir a nova desenvolvedora(9) Fernanda no departamento de inovação(12), e seu cônjuge, */ 
INSERT INTO ocupacoes(ocupacao_id,ocupacao_title,min_salario,max_salario)
VALUES (21,'Desenvolvedor',4900.00,12000.00);

INSERT INTO funcionarios(funcionario_id, primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id)
VALUES (311,'Fernanda','Lima','fernandaLima@moment.com','91251678','2023-07-12',9, 12000.00, NULL, 12);

INSERT INTO dependentes(primeiro_nome,sobrenome,parentesco,funcionario_id)
VALUES ('Rodrigo','Lima','Cônjuge',311);

/*Moments-Ex8-3 //
Inserir a nova gerente|9| Fabiana no departamento de inovação|12|, e suas 2 filhas*/ 
INSERT INTO ocupacoes(ocupacao_id,ocupacao_title,min_salario,max_salario)
VALUES (22,'Gerente de Inovações',6000.00,13000.00);

INSERT INTO funcionarios(funcionario_id, primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id)
VALUES (312,'Fabiana ','Raulino','fabianaRaul@moment.com','11-98002378','2023-03-07',9, 6000.00, NULL, 12);

INSERT INTO dependentes(primeiro_nome,sobrenome,parentesco,funcionario_id)
VALUES ('Maya ','Raulino','Filho(a)',312);

INSERT INTO dependentes(primeiro_nome,sobrenome,parentesco,funcionario_id)
VALUES ('Laura','Raulino','Filho(a)',312);

/*Moments-Ex8-4 //
O salário do departamento, inovação é a média dos salários de administração e financias */
SELECT AVG(`salario`) FROM funcionarios WHERE departamento_id = '1' AND '10';

/*Moments-Ex9 */
SELECT paises.pais_name AS Pais, regiao.regiao_name FROM paises INNER JOIN regiao WHERE paises.regiao_id = regiao.regiao_id;

/*Moments-Ex10 */ 
SELECT dependentes.primeiro_nome, funcionarios.primeiro_nome From dependentes INNER JOIN funcionarios
ON dependentes.funcionario_id = funcionarios.funcionario_id WHERE dependentes.primeiro_nome = 'Joe';

/*Moments-Ex11 */
SELECT dependentes.primeiro_nome, funcionarios.primeiro_nome, dependentes.parentesco From dependentes
INNER JOIN funcionarios ON dependentes.funcionario_id = funcionarios.funcionario_id WHERE dependentes.funcionario_id = 112;

/*Moments-Ex12 */
SELECT regiao.regiao_name, COUNT(paises.regiao_id) FROM paises INNER JOIN regiao
WHERE regiao.regiao_id = paises.regiao_id GROUP BY regiao.regiao_name;

/*Moments-Ex13 */
SELECT funcionarios.primeiro_nome, dependentes.primeiro_nome FROM funcionarios INNER JOIN dependentes
WHERE funcionarios.funcionario_id = dependentes.funcionario_id;

/*Moments-Ex14*/
SELECT* FROM funcionarios WHERE primeiro_nome LIKE 'Karen';
SELECT dependentes.primeiro_nome, funcionarios.primeiro_nome, dependentes.parentesco From dependentes
INNER JOIN funcionarios ON dependentes.funcionario_id = funcionarios.funcionario_id WHERE dependentes.funcionario_id = 146; 

/*Moments-Ex17 */
INSERT INTO departamento(departamento_id,departamento_name,posicao_id) 
VALUES (13,'Analise Momentos',1000);