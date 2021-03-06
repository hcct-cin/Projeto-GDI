DROP TABLE TELEFONES;
DROP TABLE BAGAGEM;
DROP TABLE CADASTRA;
DROP TABLE ESCALA;
DROP TABLE RESERVA;
DROP TABLE COMISSARIOS;
DROP TABLE PROMOCAO;
DROP TABLE VOA;
DROP TABLE VIP;
DROP TABLE PASSAGEIRO;
DROP TABLE EQUIPE;
DROP TABLE AVIAO;
DROP TABLE COMPANHIA_AEREA;
DROP TABLE VIAGEM;




CREATE TABLE PASSAGEIRO(
CPF VARCHAR (14),
NOME VARCHAR (40) NOT NULL,
SOBRENOME VARCHAR (40) NOT NULL,
END_RUA VARCHAR (80) NOT NULL,
END_CEP VARCHAR (10) NOT NULL,
CPF_RESP VARCHAR(14),
DATA_NASCIMENTO DATE,
CONSTRAINT PK_USER PRIMARY KEY (CPF),
CONSTRAINT FK_USER FOREIGN KEY (CPF_RESP) REFERENCES PASSAGEIRO(CPF)
);

CREATE TABLE TELEFONES(
CPF VARCHAR (14),
TELEFONE VARCHAR (20),
CONSTRAINT PK_TELEFONES PRIMARY KEY (CPF,TELEFONE),
CONSTRAINT FK_TELEFONES FOREIGN KEY (CPF) REFERENCES PASSAGEIRO (CPF) ON DELETE CASCADE 
);

CREATE TABLE BAGAGEM(
COD_BAG INTEGER ,
CPF VARCHAR (14),
CONSTRAINT PK_BAGAGEM PRIMARY KEY (COD_BAG),
CONSTRAINT FK_BAGAGEM FOREIGN KEY (CPF) REFERENCES PASSAGEIRO (CPF) ON DELETE CASCADE 
);


CREATE TABLE COMPANHIA_AEREA(
CNPJ VARCHAR (18),
NOME_COMPANHIA VARCHAR (80) NOT NULL,
DATA_FUNDACAO DATE,
CONSTRAINT PK_COMPANHIA_AEREA PRIMARY KEY (CNPJ)
);

CREATE TABLE CADASTRA(
CPF VARCHAR (14),
CNPJ VARCHAR (18),
CONSTRAINT PK_CADASTRA PRIMARY KEY (CPF,CNPJ),
CONSTRAINT CADASTRA_PASSAGEIRO_FK FOREIGN KEY (CPF) REFERENCES PASSAGEIRO ON DELETE CASCADE,
CONSTRAINT CADASTRA_COMPANHIA_AEREA_FK FOREIGN KEY (CNPJ) REFERENCES COMPANHIA_AEREA ON DELETE CASCADE
);


CREATE TABLE AVIAO(
NUM_CAUDA VARCHAR (7),
CNPJ VARCHAR (18),
CONSTRAINT PK_AVIAO PRIMARY KEY (NUM_CAUDA),
CONSTRAINT FK_AVIAO FOREIGN KEY (CNPJ) REFERENCES COMPANHIA_AEREA ON DELETE SET NULL
);

CREATE TABLE VIAGEM(
NUM_VOO VARCHAR(6),
LOCAL_PARTIDA VARCHAR (5),
LOCAL_CHEGADA VARCHAR (5),
CONSTRAINT PK_VIAGEM PRIMARY KEY (NUM_VOO)
);




CREATE TABLE ESCALA( 
NUM_VOO VARCHAR (6) , 
LUGAR VARCHAR (5), 
HORA TIMESTAMP NOT NULL, 
CONSTRAINT PK_ESCALA PRIMARY KEY (NUM_VOO, LUGAR),
CONSTRAINT FK_ESCALA FOREIGN KEY (NUM_VOO) REFERENCES VIAGEM (NUM_VOO) ON DELETE CASCADE
);




CREATE TABLE RESERVA (
CPF VARCHAR(14),
NUM_VOO VARCHAR(6),
CONSTRAINT PK_RESERVA PRIMARY KEY (CPF, NUM_VOO),
CONSTRAINT FK_CPF FOREIGN KEY (CPF) REFERENCES PASSAGEIRO ON DELETE CASCADE ,
CONSTRAINT FK_NUM_VOO FOREIGN KEY (NUM_VOO) REFERENCES VIAGEM ON DELETE CASCADE 

);




CREATE TABLE EQUIPE ( 
CNPJ VARCHAR (18),
NUMERO INTEGER ,
PILOTO_CHT VARCHAR (7) NOT NULL,
CO_PILOTO_CHT VARCHAR (7) NOT NULL,
MEDIA_SALARIAL INTEGER,
CONSTRAINT PK_EQUIPE PRIMARY KEY (CNPJ, NUMERO),
CONSTRAINT FK_EQUIPE FOREIGN KEY (CNPJ) REFERENCES COMPANHIA_AEREA (CNPJ) ON DELETE CASCADE
);



CREATE TABLE COMISSARIOS (
CNPJ VARCHAR(18),
NUMERO INT,
COMISSARIO VARCHAR (80),
CONSTRAINT PK_COMISSARIOS PRIMARY KEY (CNPJ, NUMERO, COMISSARIO),
CONSTRAINT FK_COMISSARIOS FOREIGN KEY (CNPJ,NUMERO) REFERENCES EQUIPE ON DELETE CASCADE 
);


CREATE TABLE VIP(
CPF VARCHAR (14),
BLACK_CARD VARCHAR (19),
CONSTRAINT PK_VIP PRIMARY KEY (CPF),
CONSTRAINT FK_VIP FOREIGN KEY (CPF) REFERENCES PASSAGEIRO ON DELETE CASCADE 
);


CREATE TABLE PROMOCAO (
CPF VARCHAR (14),
NUM_VOO VARCHAR (6),
CONSTRAINT PK_PROMOCAO PRIMARY KEY (CPF, NUM_VOO),
CONSTRAINT FK_PROMOCAO_CPF FOREIGN KEY (CPF) REFERENCES VIP ON DELETE CASCADE,
CONSTRAINT FK_PROMOCAO_NUM_VOO FOREIGN KEY (NUM_VOO) REFERENCES VIAGEM ON DELETE CASCADE 
);



CREATE TABLE VOA(
NUM_VOO VARCHAR (6),
CNPJ VARCHAR (18),
NUMERO INTEGER,
NUM_CAUDA VARCHAR (7) NOT NULL ,
DOMESTICO CHAR (1) CHECK (DOMESTICO = 'V' OR DOMESTICO = 'F'),
CONSTRAINT PK_VOA PRIMARY KEY (NUM_VOO,CNPJ,NUMERO),
CONSTRAINT FK_VOA_NUM_VOO FOREIGN KEY (NUM_VOO) REFERENCES VIAGEM ON DELETE CASCADE,
CONSTRAINT FK_VOA_CNPJ_NUMERO FOREIGN KEY (CNPJ, NUMERO) REFERENCES EQUIPE ON DELETE CASCADE,
CONSTRAINT FK_VOA_NUM_CAUDA FOREIGN KEY (NUM_CAUDA) REFERENCES AVIAO ON DELETE CASCADE );


