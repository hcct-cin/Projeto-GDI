--Seu projeto deve ter todos os tipos de consultas abaixo
--Group by/Having
--Junção interna
--Junção externa
--Semi junção
--Anti-junção
--Subconsulta do tipo escalar
--Subconsulta do tipo linha
--Subconsulta do tipo tabela
--Operação de conjunto

--Atenção: Cada aluno deve fazer ao menos 01 dessas consultas mais 01 procedimento, função ou gatilho.


--1)Group by/Having
	-- Listar Companhias Aéreas que possuem 2 ou mais aviões 

SELECT C.NOME_COMPANHIA, COUNT(A.NUM_CAUDA)
FROM AVIAO A, COMPANHIA_AEREA C
WHERE A.CNPJ = C.CNPJ
GROUP BY C.NOME_COMPANHIA
HAVING COUNT (A.NUM_CAUDA) >= 2;



--2)INNER JOIN
	--  Listar Passageiros que possuem Bagagem

	SELECT P.NOME, P.SOBRENOME
FROM PASSAGEIRO P INNER JOIN 
    		BAGAGEM B ON P.CPF = B.CPF
GROUP BY P.NOME, P.SOBRENOME;


-- 3)OUTER JOIN
	-- Listar todos os aviões e suas respectivas Companhias Aéreas 
	
	SELECT A.NUM_CAUDA, C.NOME_COMPANHIA
FROM AVIAO A LEFT OUTER JOIN
    		COMPANHIA_AEREA C ON A.CNPJ = C.CNPJ;







-- 4)SEMI JOIN
	-- Listar  todos os aviões que pertencem a Companhias Aéreas

SELECT A.NUM_CAUDA, C.NOME_COMPANHIA
FROM AVIAO A LEFT OUTER JOIN
COMPANHIA_AEREA C ON A.CNPJ = C.CNPJ
WHERE A.CNPJ IS NOT NULL;

-- 5)ANTI JOIN 
	-- Listar Voos sem passageiros e passageiros sem voos

SELECT P.NOME, V.NUM_VOO
FROM PASSAGEIRO P 
FULL OUTER JOIN RESERVA R
    ON P.CPF = R.CPF
FULL OUTER JOIN VIAGEM V
    ON V.NUM_VOO = R.NUM_VOO
WHERE P.NOME IS NULL OR V.NUM_VOO IS NULL;



--6)Subconsulta do tipo escalar
	-- Listar Passageiros mais velhos que a média.


SELECT P.NOME, EXTRACT (YEAR FROM P.DATA_NASCIMENTO) AS ANO
FROM PASSAGEIRO P
WHERE EXTRACT (YEAR FROM P.DATA_NASCIMENTO) < 
    (SELECT AVG (EXTRACT (YEAR FROM P.DATA_NASCIMENTO))
    FROM PASSAGEIRO P);





--Listar voos feitos por aviões da TAM Linhas Aereas

SELECT V.NUM_VOO
FROM VOA V 
WHERE V.CNPJ = 
    (SELECT C.CNPJ
    FROM COMPANHIA_AEREA C
    WHERE C.NOME_COMPANHIA = 'TAM Linhas Aereas');




--7)Subconsulta do tipo linha

-- Listar todos os passageiros que nasceram no mesmo ano que o passageiro do CPF 'X'


SELECT P.NOME, P.SOBRENOME, P.CPF
FROM PASSAGEIRO P 
WHERE (P.NOME, EXTRACT (YEAR FROM P.DATA_NASCIMENTO)) =
    (SELECT P.NOME, EXTRACT (YEAR FROM P.DATA_NASCIMENTO)
     FROM PASSAGEIRO P 
     WHERE P.CPF = '648.434.834-00'
     );
        

--8)Subconsulta do tipo tabela
-- Listar todos os números de equipe que possuem a média salarial maior que a média

SELECT E.NUMERO
FROM EQUIPE E
WHERE (E.MEDIA_SALARIAL, E.PILOTO_CHT) IN
    (SELECT E.MEDIA_SALARIAL, E.PILOTO_CHT
    FROM EQUIPE E
    WHERE E.MEDIA_SALARIAL > 
        (SELECT AVG(E.MEDIA_SALARIAL)
            FROM EQUIPE E)
    );




--9)Operação de conjunto

-- Listar todas as datas de nascimento (passageiros) e de fundação (companhias aéreas)


SELECT P.DATA_NASCIMENTO FROM PASSAGEIRO P 
UNION
SELECT C.DATA_FUNDACAO FROM COMPANHIA_AEREA C ;





--FUNÇOES:

--1.

--  Retorna nome da empresa responsável pelo voo X.


CREATE OR REPLACE FUNCTION get_empresa_voo (voo_numero VARCHAR ) RETURN VARCHAR IS 
empresa VARCHAR (18);
nome_empresa VARCHAR (40);

BEGIN
SELECT V.CNPJ
INTO empresa
FROM VOA V
WHERE V.NUM_VOO = voo_numero;
    
SELECT C.NOME_COMPANHIA
INTO nome_empresa
FROM COMPANHIA_AEREA C
WHERE C.CNPJ = empresa;

RETURN nome_empresa;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
    RETURN 'Voo ainda nao alocado';
    
END;


------------------------ chamar a função 

BEGIN 
dbms_output.put_line('Empresa: '|| get_empresa_voo('G37792'));
END;




--2.
-- Retorna quantidade de voos cadastrados para a empresa X

CREATE OR REPLACE FUNCTION cont_voos (nome_empresa VARCHAR ) RETURN VARCHAR IS 
qtd_voos NUMBER;
cnpj_numero VARCHAR(20);
BEGIN
SELECT C.CNPJ
INTO cnpj_numero
FROM COMPANHIA_AEREA C
WHERE nome_empresa = C.NOME_COMPANHIA;
    
SELECT COUNT(V.NUM_VOO)
INTO qtd_voos
FROM VOA V
WHERE V.CNPJ = cnpj_numero;

RETURN qtd_voos;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
    RETURN 'Sem dados';

END;


-----------
--Chamar Funcao

BEGIN 
dbms_output.put_line('Qtd de voos da Companhia: '|| cont_voos('AZUL Linhas Aereas'));
END;



--3. PROCEDURE
-- Printa se o voo X é doméstico ou Internacional

CREATE OR REPLACE PROCEDURE print_domestico (voo_numero VARCHAR) IS
flag CHAR(1);
BEGIN 
SELECT V.DOMESTICO
INTO flag
FROM VOA V
WHERE voo_numero = V.NUM_VOO;

IF (flag = 'V') THEN
    dbms_output.put_line('Eh domestico');
ELSE  
    dbms_output.put_line('Eh internacional');
    
END IF;
END;

--------- chamar Procedure:

BEGIN
print_domestico('TP3662');
END;


--4.
-- Printa os voos alocados para a empresa do CNPJ X

CREATE OR REPLACE PROCEDURE print_voos (cnpj_numero VARCHAR) IS
CURSOR voos IS
    SELECT V.NUM_VOO,V.LOCAL_PARTIDA,V.LOCAL_CHEGADA
    FROM VIAGEM V
    WHERE V.NUM_VOO IN
    (SELECT F.NUM_VOO
    FROM VOA F 
    WHERE F.CNPJ = cnpj_numero 
    );

numero_voo VARCHAR(6);
partida VARCHAR (25);
chegada VARCHAR (25);

BEGIN 
    OPEN voos;
    LOOP
        FETCH voos INTO numero_voo, partida, chegada;
        EXIT WHEN voos%NOTFOUND;
        dbms_output.put_line('O voo '||numero_voo || ' sai de ' || partida || ' e vai para ' || chegada);
    END LOOP;
    CLOSE voos;
END;


--------- chamar Procedure
BEGIN
print_voos('09.296.295/0001-60');
END;


--5. -- Trigger para sinalizar a cada novo INSERT de Passageiro


-------
CREATE OR REPLACE TRIGGER alert_passageiro
AFTER INSERT ON PASSAGEIRO 
REFERENCING NEW AS P
FOR EACH ROW
BEGIN  dbms_output.put_line('Passageiro com o CPF ' || :P.CPF || ' foi inserido');
END;




