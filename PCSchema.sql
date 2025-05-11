
CREATE TABLE pcComponent(
    codC VARCHAR2(4) NOT NULL,
    denumire VARCHAR2(256) NOT NULL,
    producator VARCHAR2(64) NOT NULL,
    pret NUMBER(10,2) NOT NULL,
    CONSTRAINT Comp_pk PRIMARY KEY(codC)
);

CREATE TABLE pcClient(
    cnp VARCHAR2(13) NOT NULL,
    nume VARCHAR2(32) NOT NULL,
    email VARCHAR2(64) NOT NULL,
    CONSTRAINT Clnt_pk PRIMARY KEY(cnp)
);

CREATE TABLE pcComanda(
    codPC VARCHAR2(6) NOT NULL,
    cnp VARCHAR2(13) NOT NULL,
    data DATE NOT NULL,
    CONSTRAINT Cmnd_pk PRIMARY KEY(codPC),
    CONSTRAINT Clnt_fk FOREIGN KEY(cnp) REFERENCES pcClient(cnp) on delete cascade
);

CREATE TABLE pcListaComanda(
    codPC VARCHAR2(6) NOT NULL,
    codC VARCHAR2(4) NOT NULL,
    cant NUMBER(5) NOT NULL, 
    CONSTRAINT List_pk PRIMARY KEY(codPC,codC),
    CONSTRAINT Comp_fk FOREIGN KEY(codC) REFERENCES pcComponent(codC) on delete cascade ,
    CONSTRAINT Cmnd_fk FOREIGN KEY(codPC) REFERENCES pcComanda(codPC) on delete cascade
);