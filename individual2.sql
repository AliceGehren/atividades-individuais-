UPDATE funcionario
SET cargo_id=5
WHERE id=2;

UPDATE agenda
SET data_checkout='2025-07-15'
WHERE hospede_id=2;

DELETE FROM endereco
WHERE logradouro LIKE 'A%';

DROP TABLE agenda;

ALTER TABLE hospede
ALTER COLUMN nome set NOT NULL;

ALTER TABLE hospede
ALTER COLUMN  cpf set NOT NULL;

ALTER TABLE hospede
ALTER COLUMN endereco_id set NOT NULL;

ALTER table cargo 
ALTER COLUMN nome set NOT NULL;

ALTER table funcionario
ALTER COLUMN nome set NOT NULL;

ALTER table funcionario 
ALTER COLUMN cpf set NOT NULL;

ALTER table funcionario 
ALTER COLUMN cargo_id set NOT NULL;

ALTER table endereco
ALTER COLUMN logradouro set NOT NULL;

ALTER table endereco
ALTER COLUMN localidade set NOT NULL;

ALTER table endereco
ALTER COLUMN cep set NOT NULL;

ALTER table endereco
ALTER COLUMN numero set NOT NULL;

ALTER table endereco
ALTER COLUMN cargo_id set NOT NULL;

ALTER table endereco
ALTER COLUMN numero set NOT NULL;

ALTER table endereco
ALTER COLUMN bairro set NOT NULL;

ALTER table endereco
ALTER COLUMN uf set NOT NULL;

ALTER table agenda 
ALTER COLUMN data_checkin set NOT NULL;

ALTER table agenda
ALTER COLUMN data_checkout set NOT NULL;

ALTER table agenda 
ALTER COLUMN hospede_id set NOT NULL;

ALTER table agenda 
ALTER COLUMN funcionario_id set NOT NULL;

ALTER table agenda 
ALTER COLUMN funcionario_id set NOT NULL;

DELETE FROM hospede
WHERE cpf = '12345678911';

ALTER TABLE funcionario
ADD UNIQUE (cpf);

ALTER TABLE hospede 
ADD UNIQUE (cpf);

