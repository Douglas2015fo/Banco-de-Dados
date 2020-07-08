
CREATE TABLE anunciante (
                cpf VARCHAR NOT NULL,
                nome VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                data_nasc DATE NOT NULL,
                celular VARCHAR NOT NULL,
                CONSTRAINT cpf PRIMARY KEY (cpf)
);


CREATE TABLE anuncio (
                id INTEGER NOT NULL,
                cpf_anunciante VARCHAR NOT NULL,
                titulo VARCHAR NOT NULL,
                data_publicacao DATE NOT NULL,
                descricao VARCHAR NOT NULL,
                valor REAL NOT NULL,
                CONSTRAINT id PRIMARY KEY (id, cpf_anunciante)
);


ALTER TABLE anuncio ADD CONSTRAINT anunciante_anuncio_fk
FOREIGN KEY (cpf_anunciante)
REFERENCES anunciante (cpf)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;