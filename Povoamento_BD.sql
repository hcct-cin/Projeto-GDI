--POVOAMENTO DO BD

 -- Inserindo Passageiros (17 inseridos)
-- INSERT INTO PASSAGEIRO VALUES (CPF,  nome, end_rua, end_cep, CPF-responsavel, data_nascimento);

INSERT INTO PASSAGEIRO VALUES ('071.453.775-07', 'Ana Luisa','Freitas','av Boa Viagem, 536', '50.234-330', NULL,TO_DATE ('1990/01/01','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('543.988.000-01', 'Paulo','Silva','av Beira Rio, 1506', '50.710-118', NULL,TO_DATE ('1977/05/11','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('074.245.452-64', 'Carlos ','Nascimento','Rua dos Navegantes 3987', '42.536-120', NULL,TO_DATE ('1999/07/05','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('554.756.453-07', 'Maria',' Machado','av Rui Barbosa 5346', '50.234-330', NULL, TO_DATE ('2001/12/27','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('487.017.034-55', 'Caio','Freitas','av Boa Viagem, 536', '50.234-330','071.453.775-07', TO_DATE ('2014/06/18','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('199.172.284-20', 'Amanda','Sousa','Rua Costa Honorato 1219', '50781-300', NULL,TO_DATE ('2002/02/27','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('110.140.704-22', 'Bruno','Amaral','Agamenon Magalhaes 987', '50110-110', NULL,TO_DATE ('1961/11/16','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('101.009.824-17', 'José','Cabral','Rua Brejo da Areia 109', '52080-081', NULL,TO_DATE ('1964/09/25','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('606.178.704-97', 'Luisa','Moreira','Rua Mantiqueira 398', '52111-370', NULL,TO_DATE ('2000/07/22','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('983.704.757-79', 'Natalia','Belarmino','Travessa Santa Maria 2838', '21911-460', NULL,TO_DATE ('1979/09/25','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('659.158.621-01', 'Thais','Moura','Quadra EPTG QE 1 Bloco B-8', '71100-023', NULL,TO_DATE ('1986/05/27','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('708.566.644-72', 'Caio','Mota','Rua Barra do Riachão 1255', '50620-150', NULL,TO_DATE ('1980/11/05','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('393.131.254-20', 'Marcelo','Freire','Rua do Sol 256', '51010-520','708.566.644-72',TO_DATE ('2011/03/30','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('715.251.834-35', 'Ana Julia','Passos','Rua Professor Rodolpho Lyra 298', '50660-340', NULL,TO_DATE ('1997/09/09','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('634.030.494-00', 'Antonio','Cabral','Agamenon Magalhaes 987', '50110-110','110.140.704-22',TO_DATE ('2019/04/08','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('648.434.834-00', 'Amanda','Cabral','Rua Sabatina 112','53110-090',NULL,TO_DATE ('1984/06/22','yyyy/mm/dd'));

INSERT INTO PASSAGEIRO VALUES ('050.404.294-79', 'Amanda','Mota','Rua José Maria 972','54767-065',NULL,TO_DATE ('1984/02/15','yyyy/mm/dd'));




-- Inserindo Telefones (19 inseridos)     
--INSERT INTO TELEFONES VALUES (CPF, TELEFONE);

INSERT INTO TELEFONES VALUES ('071.453.775-07', '+55 (81) 98859-9259');
INSERT INTO TELEFONES VALUES ('071.453.775-07', '+55 (81) 3973-8646');
INSERT INTO TELEFONES VALUES ('543.988.000-01', '+55 (81) 99376-1466');
INSERT INTO TELEFONES VALUES ('074.245.452-64', '+55 (81) 98137-1549');
INSERT INTO TELEFONES VALUES ('554.756.453-07','+55 (81) 98242-3475');
INSERT INTO TELEFONES VALUES ('554.756.453-07','+55 (81) 2964-4508');
INSERT INTO TELEFONES VALUES ('487.017.034-55','+55 (81) 99949-8244');
INSERT INTO TELEFONES VALUES ('199.172.284-20','+55 (81) 98598-6190');
INSERT INTO TELEFONES VALUES ('110.140.704-22','+55 (81) 99561-4578');
INSERT INTO TELEFONES VALUES ('110.140.704-22','+55 (81) 3586-9606');
INSERT INTO TELEFONES VALUES ('101.009.824-17','+55 (81) 99577-6052');
INSERT INTO TELEFONES VALUES ('606.178.704-97','+55 (81) 98388-1269');
INSERT INTO TELEFONES VALUES ('983.704.757-79','+55 (21) 98732-2607');
INSERT INTO TELEFONES VALUES ('659.158.621-01','+55 (61) 99577-2044');
INSERT INTO TELEFONES VALUES ('708.566.644-72','+55 (81) 99342-6952');
INSERT INTO TELEFONES VALUES ('393.131.254-20','+55 (81) 98547-7448');
INSERT INTO TELEFONES VALUES ('715.251.834-35','+55 (81) 98678-4913');
INSERT INTO TELEFONES VALUES ('634.030.494-00','+55 (81) 98754-3645');
INSERT INTO TELEFONES VALUES ('648.434.834-00','+55 (81) 99160-1338');


-- Inserindo Bagagens (6 inseridos)

-- INSERT INTO BAGAGEM VALUES (COD_BAGAGEM, CPF);

INSERT INTO BAGAGEM VALUES (123,'071.453.775-07');
INSERT INTO BAGAGEM VALUES (44,'071.453.775-07');
INSERT INTO BAGAGEM VALUES (85,'554.756.453-07');
INSERT INTO BAGAGEM VALUES (9,'199.172.284-20');
INSERT INTO BAGAGEM VALUES (58,'634.030.494-00');
INSERT INTO BAGAGEM VALUES (97,'715.251.834-35');







-- Inserindo Companhias Aéreas (8 inseridas)

--INSERT INTO COMPANHIA_AEREA VALUES (CNPJ, nome_companhia, data_fundacao ) ;


INSERT INTO COMPANHIA_AEREA VALUES ('09.296.295/0001-60','AZUL Linhas Aereas' , TO_DATE('2008/01/01', 'yyyy/mm/dd')) ;

INSERT INTO COMPANHIA_AEREA VALUES ('02.012.862/0001-60','TAM Linhas Aereas', TO_DATE('1976/01/01','yyyy/mm/dd') );

INSERT INTO COMPANHIA_AEREA VALUES ('07.575.651/0001-59','GOL Linhas Aereas', TO_DATE('2001/01/01','yyyy/mm/dd'));

INSERT INTO COMPANHIA_AEREA VALUES ('02.575.829/0001-48','OCEANAIR Linhas Aereas', TO_DATE('1998/01/01','yyyy/mm/dd'));

INSERT INTO COMPANHIA_AEREA VALUES  ('36.212.637/0001-99','AMERICAN AIRLINES INC', TO_DATE('1930/01/01','yyyy/mm/dd'));

INSERT INTO COMPANHIA_AEREA VALUES ('03.834.757/0004-11','COMPANIA PANAMENA DE AVIACION', TO_DATE('1944/01/01','yyyy/mm/dd'));

INSERT INTO COMPANHIA_AEREA VALUES ('33.136.896/0001-90', 'TRANSPORTES AEREOS PORTUGUESES', TO_DATE('1945/01/01','yyyy/mm/dd'));

INSERT INTO COMPANHIA_AEREA VALUES ('02.428.624/0001-30','TRIP Linhas Aereas',TO_DATE('1998/01/01','yyyy/mm/dd'));





-- Cadastrando Passageiros (16 cadastros)

-- INSERT INTO CADASTRA (CPF, CNPJ)

INSERT INTO CADASTRA VALUES ('071.453.775-07', '09.296.295/0001-60' );
INSERT INTO CADASTRA VALUES ('071.453.775-07', '36.212.637/0001-99'); 
INSERT INTO CADASTRA VALUES ('543.988.000-01', '07.575.651/0001-59');
INSERT INTO CADASTRA VALUES ('074.245.452-64', '33.136.896/0001-90');
INSERT INTO CADASTRA VALUES ('487.017.034-55','09.296.295/0001-60');
INSERT INTO CADASTRA VALUES ('487.017.034-55','02.012.862/0001-60');
INSERT INTO CADASTRA VALUES ('487.017.034-55','07.575.651/0001-59');
INSERT INTO CADASTRA VALUES ('110.140.704-22', '03.834.757/0004-11');
INSERT INTO CADASTRA VALUES ('110.140.704-22','07.575.651/0001-59');
INSERT INTO CADASTRA VALUES ('101.009.824-17','02.012.862/0001-60');
INSERT INTO CADASTRA VALUES ('983.704.757-79','02.428.624/0001-30');
INSERT INTO CADASTRA VALUES ('983.704.757-79','33.136.896/0001-90');
INSERT INTO CADASTRA VALUES ('659.158.621-01','07.575.651/0001-59');
INSERT INTO CADASTRA VALUES ('393.131.254-20','02.575.829/0001-48');
INSERT INTO CADASTRA VALUES ('715.251.834-35','09.296.295/0001-60');
INSERT INTO CADASTRA VALUES ('634.030.494-00','02.012.862/0001-60');




-- Inserindo Aviões (21  inseridos)

--INSERT INTO AVIAO VALUES (num_cauda, CNPJ)



INSERT INTO AVIAO VALUES ('PR-MHC','02.012.862/0001-60'); 
INSERT INTO AVIAO VALUES ('PR-TMA','02.012.862/0001-60');
INSERT INTO AVIAO VALUES ('PR-OMT','02.012.862/0001-60');
INSERT INTO AVIAO VALUES ('PR-ARQ','09.296.295/0001-60');
INSERT INTO AVIAO VALUES ('PR-AOK','09.296.295/0001-60');
INSERT INTO AVIAO VALUES ('PR-AYO','09.296.295/0001-60');
INSERT INTO AVIAO VALUES ('PR-GUW','07.575.651/0001-59');
INSERT INTO AVIAO VALUES ('PR-GGT','07.575.651/0001-59');
INSERT INTO AVIAO VALUES ('PR-GTU','07.575.651/0001-59');
INSERT INTO AVIAO VALUES ('PT-ARI','02.575.829/0001-48');
INSERT INTO AVIAO VALUES ('PT-BKL','02.575.829/0001-48');
INSERT INTO AVIAO VALUES ('NB-307K','36.212.637/0001-99');
INSERT INTO AVIAO VALUES ('NB-742U','36.212.637/0001-99');
INSERT INTO AVIAO VALUES ('CS-TNS','33.136.896/0001-90');
INSERT INTO AVIAO VALUES ('CS-TTN','33.136.896/0001-90');
INSERT INTO AVIAO VALUES ('CS-KNK','33.136.896/0001-90');
INSERT INTO AVIAO VALUES ('MT-CHK','09.296.295/0001-60');
INSERT INTO AVIAO VALUES ('PR-TTR','02.428.624/0001-30');
INSERT INTO AVIAO VALUES ('AK-TER',NULL);
INSERT INTO AVIAO VALUES ('AK-NNR',NULL);
INSERT INTO AVIAO VALUES ('AK-EOI',NULL);




-- Inserindo Viagens (20 inseridos)

--INSERT INTO VIAGEM VALUES (numDeVoo, localDePartida, localDeChegada)

--(AD -> AZUL
--TP -> TAP
--LA -> TAM
--CM -> COPA
--AA -> AMERICAN AIRLINES
--G3 -> GOL
--)

INSERT INTO VIAGEM VALUES ('AD4668', 'REC', 'NAT');
INSERT INTO VIAGEM VALUES ('AD4798', 'REC', 'FEN');
INSERT INTO VIAGEM VALUES ('AD9382', 'REC', 'GRU');
INSERT INTO VIAGEM VALUES ('AD4573', 'REC', 'CWB');
INSERT INTO VIAGEM VALUES ('AD3987', 'REC', 'THE');
INSERT INTO VIAGEM VALUES ('TP5205', 'REC', 'LIS');
INSERT INTO VIAGEM VALUES ('TP3948', 'REC', 'MAD');
INSERT INTO VIAGEM VALUES ('TP3662', 'LIS', 'REC');
INSERT INTO VIAGEM VALUES ('LA8613', 'REC', 'GRU');
INSERT INTO VIAGEM VALUES ('LA3256', 'REC', 'NAT');
INSERT INTO VIAGEM VALUES ('LA3897', 'REC', 'SDU');
INSERT INTO VIAGEM VALUES ('LA9437', 'REC', 'BSB');
INSERT INTO VIAGEM VALUES ('CM4732', 'REC', 'GRU');
INSERT INTO VIAGEM VALUES ('AA7706', 'MCO', 'REC');
INSERT INTO VIAGEM VALUES ('AA3409', 'REC', 'GRU');
INSERT INTO VIAGEM VALUES ('AA3953', 'REC', 'MCO');
INSERT INTO VIAGEM VALUES ('G33763', 'REC', 'FOR');
INSERT INTO VIAGEM VALUES ('G37792', 'SSA', 'REC');
INSERT INTO VIAGEM VALUES ('OC3379', 'GRU', 'REC');
INSERT INTO VIAGEM VALUES ('TR3329', 'REC', 'GRU');



--Inserindo Escalas (3 inseridos)

--INSERT INTO ESCALA VALUES (lugar, hora, numDeVoo!);



INSERT INTO ESCALA VALUES ('LA9437','GRU', TIMESTAMP '2021-04-22 09:26:00.00' );

INSERT INTO ESCALA VALUES ('TP3948','GRU', TIMESTAMP '2021-04-21 12:45:00.00');

INSERT INTO ESCALA VALUES ('AA3953','GRU', TIMESTAMP '2021-04-21 08:55:00.00');



-- Inserindo Reservas (15)

--INSERT INTO  RESERVA VALUES (CPF,NUM_VOO);

INSERT INTO RESERVA VALUES ('071.453.775-07','AD4798');

INSERT INTO RESERVA VALUES ('074.245.452-64', 'TP5205');

INSERT INTO RESERVA VALUES ('554.756.453-07','AA3409');

INSERT INTO RESERVA VALUES ('199.172.284-20', 'AA3409');

INSERT INTO RESERVA VALUES ('071.453.775-07', 'LA8613');

INSERT INTO RESERVA VALUES ('659.158.621-01', 'AD3987');

INSERT INTO RESERVA VALUES ('110.140.704-22', 'AA7706');

INSERT INTO RESERVA VALUES ('487.017.034-55', 'G33763');

INSERT INTO RESERVA VALUES ('554.756.453-07','LA9437');

INSERT INTO RESERVA VALUES ('634.030.494-00','LA9437');

INSERT INTO RESERVA VALUES ('634.030.494-00','TP3948');

INSERT INTO RESERVA VALUES ('983.704.757-79', 'AD4798');

INSERT INTO RESERVA VALUES ('983.704.757-79', 'LA9437');

INSERT INTO RESERVA VALUES ('606.178.704-97', 'AD4798');

INSERT INTO RESERVA VALUES ('101.009.824-17', 'AD4798');







-- Inserindo Equipe (12)

--INSERT INTO EQUIPE VALUES (CNPJ,NUMERO, PILOTO, CO_PILOTO, MEDIA_SALARIAL);

INSERT INTO EQUIPE VALUES ('02.012.862/0001-60',4216,'225131','332152',49000);

INSERT INTO EQUIPE VALUES ('02.575.829/0001-48',7552, '334163','735931',44000);

INSERT INTO EQUIPE VALUES ('09.296.295/0001-60',8871, '985228','241744',50000);

INSERT INTO EQUIPE VALUES ('09.296.295/0001-60',9879, '938234','114536',47650);

INSERT INTO EQUIPE VALUES ('09.296.295/0001-60',8888, '456873','097468',45578);

INSERT INTO EQUIPE VALUES ('33.136.896/0001-90',2112, '199532','095528',54300);

INSERT INTO EQUIPE VALUES ('33.136.896/0001-90',9943, '948723','234743',53000);

INSERT INTO EQUIPE VALUES ('07.575.651/0001-59',2212, '802485','522742',46400);

INSERT INTO EQUIPE VALUES ('36.212.637/0001-99',487, '387234','111111',55000);

INSERT INTO EQUIPE VALUES ('03.834.757/0004-11',99, '389472','135777',44000);

INSERT INTO EQUIPE VALUES ('03.834.757/0004-11',49, '999999','233344',49990);

INSERT INTO EQUIPE VALUES ('03.834.757/0004-11',80, '039234','112111',48000);



-- Inserindo COMISSARIOS (10)


--INSERT INTO COMISSARIOS VALUES (CNPJ,NUMERO,COMISSARIO);

INSERT INTO COMISSARIOS VALUES ('09.296.295/0001-60',8871,'437.981.890-05');

INSERT INTO COMISSARIOS VALUES ('09.296.295/0001-60',8888,'529.403.600-22');

INSERT INTO COMISSARIOS VALUES ('36.212.637/0001-99',487,'654.635.260-52');

INSERT INTO COMISSARIOS VALUES ('36.212.637/0001-99',487,'017.635.990-78');

INSERT INTO COMISSARIOS VALUES ('36.212.637/0001-99',487,'291.092.010-09');

INSERT INTO COMISSARIOS VALUES ('09.296.295/0001-60',9879,'119.191.040-70');

INSERT INTO COMISSARIOS VALUES ('03.834.757/0004-11',99,'017.635.990-78');

INSERT INTO COMISSARIOS VALUES ('03.834.757/0004-11',99,'517.635.440-78');

INSERT INTO COMISSARIOS VALUES ('03.834.757/0004-11',49,'347.968.350-91');

INSERT INTO COMISSARIOS VALUES ('03.834.757/0004-11',80,'495.840.740-59');









-- Inserindo VIP (5)

--INSERT INTO VIP VALUES (‘CPF’,’BLACK_CARD’);

INSERT INTO VIP VALUES ('110.140.704-22', '9871-9981-4932-312');

INSERT INTO VIP VALUES ('659.158.621-01','4991-1887-9874-3241');

INSERT INTO VIP VALUES ('101.009.824-17','1712-8662-9971-5543');

INSERT INTO VIP VALUES ('393.131.254-20','7550-0092-9988-6188');

INSERT INTO VIP VALUES ('634.030.494-00','3331-1234-1234-7652');






-- Inserindo PROMOCAO (5)

--INSERT INTO PROMOCAO VALUES (CPF, NUM_VOO);

INSERT INTO PROMOCAO VALUES ('659.158.621-01','AD3987');

INSERT INTO PROMOCAO VALUES ('634.030.494-00', 'LA9437');

INSERT INTO PROMOCAO VALUES ('634.030.494-00', 'TP3948');

INSERT INTO PROMOCAO VALUES ('101.009.824-17', 'AD4798');

INSERT INTO PROMOCAO VALUES ('110.140.704-22', 'AA7706');






-- Inserindo VOA (5)

--INSERT INTO VOA VALUES (NUM_VOO, CNPJ, NUMERO, NUM_CAUDA, DOMESTICO);

INSERT INTO VOA VALUES ('LA9437','02.012.862/0001-60',4216,'PR-MHC','V');

INSERT INTO VOA VALUES ('LA3256','02.012.862/0001-60',4216,'PR-OMT','V');

INSERT INTO VOA VALUES ('LA3897','02.012.862/0001-60',4216,'PR-TMA','V');

INSERT INTO VOA VALUES ('AD4798','09.296.295/0001-60',8871,'PR-ARQ','V');

INSERT INTO VOA VALUES ('G37792','07.575.651/0001-59',2212,'PR-GGT','V');

INSERT INTO VOA VALUES ('TP3662','33.136.896/0001-90',2112,'CS-KNK','F');

INSERT INTO VOA VALUES ('TP3948','33.136.896/0001-90',9943,'CS-TNS','F');

INSERT INTO VOA VALUES ('AD4668','09.296.295/0001-60',8871,'PR-ARQ','F');

INSERT INTO VOA VALUES ('AD9382','09.296.295/0001-60',9879,'PR-AYO','F');

INSERT INTO VOA VALUES ('AD4573','09.296.295/0001-60',8888,'PR-ARQ','F');

INSERT INTO VOA VALUES ('AD3987','09.296.295/0001-60',9879,'PR-AOK','F');

INSERT INTO VOA VALUES ('AA7706','36.212.637/0001-99',487,'NB-307K','V');

INSERT INTO VOA VALUES ('AA3409','36.212.637/0001-99',487,'NB-742U','V');



