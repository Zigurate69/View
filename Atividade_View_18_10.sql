#CRIAR UMA VIEW
CREATE VIEW VW_LISTA_FUNCIONARIOS AS
SELECT cod, nome, especialidade
FROM funcionarios;

#UTILIZANDO A VIEW CRIADA
SELECT * FROM VW_LISTA_FUNCIONARIOS;

#CRIANDO UMA VIEW PARA LISTAR TODOS OS DEPENDENTES
CREATE VIEW VW_LISTA_DEPENDENTES AS
SELECT cod, nome
FROM dependentes;

SELECT * FROM VW_LISTA_DEPENDENTES;

CREATE VIEW VW_FUNCIONARIO_COM_DEPENDENTES AS
SELECT funcionarios.nome AS Func_nome, dependentes.nome AS Dep_nome
FROM funcionarios
INNER JOIN dependentes
ON funcionarios.cod = dependentes.cod_func;

SELECT * FROM VW_FUNCIONARIO_COM_DEPENDENTES;

CREATE VIEW VW_FUNCIONARIO_COM_DEPENDENTES_RIGHT AS
SELECT funcionarios.nome AS Func_nome, dependentes.nome AS Dep_nome
FROM funcionarios
RIGHT JOIN dependentes
ON funcionarios.cod = dependentes.cod_func;

SELECT * FROM VW_FUNCIONARIO_COM_DEPENDENTES_RIGHT;

CREATE VIEW VW_FUNCIONARIO_COM_DEPENDENTES_LEFT AS
SELECT funcionarios.nome AS Func_nome, dependentes.nome AS Dep_nome
FROM funcionarios
LEFT JOIN dependentes
ON funcionarios.cod = dependentes.cod_func;

SELECT * FROM VW_FUNCIONARIO_COM_DEPENDENTES_LEFT;

CREATE VIEW VW_FUNCIONARIO_COM_DEPENDENTES_RIGHT_EXCLUDING AS
SELECT funcionarios.nome AS Func_nome, dependentes.nome AS Dep_nome
FROM funcionarios
RIGHT JOIN dependentes
ON funcionarios.cod = dependentes.cod_func
WHERE dependentes.nome is null;

SELECT * FROM VW_FUNCIONARIO_COM_DEPENDENTES_RIGHT_EXCLUDING;

CREATE VIEW VW_FUNCIONARIO_COM_DEPENDENTES_LEFT_EXCLUDING AS
SELECT funcionarios.nome AS Func_nome, dependentes.nome AS Dep_nome
FROM funcionarios
LEFT JOIN dependentes
ON funcionarios.cod = dependentes.cod_func
WHERE dependentes.nome is null;

SELECT * FROM VW_FUNCIONARIO_COM_DEPENDENTES_LEFT_EXCLUDING;