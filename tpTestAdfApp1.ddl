-- Generated by Oracle SQL Developer Data Modeler 4.2.0.932
--   at:        2017-06-02 16:25:06 PDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE TABLE stock (
    stockuid           INTEGER NOT NULL,
    stocksymbol        VARCHAR2(10) NOT NULL,
    stockexchangeuid   NUMBER NOT NULL,
    createdby          VARCHAR2(255),
    createddate        DATE,
    modifiedby         VARCHAR2(255),
    modifieddate       DATE
);

ALTER TABLE stock ADD CONSTRAINT stock_pk PRIMARY KEY ( stockuid );

CREATE TABLE stocksnapshotdata (
    stocksnapshotuid   INTEGER NOT NULL,
    price              NUMBER(10,2) NOT NULL,
    eps                NUMBER(10,2),
    dividend           NUMBER(10,2),
    createdby          VARCHAR2(255),
    createddate        DATE,
    modifiedby         VARCHAR2(255),
    modifieddate       DATE,
    stock_stockuid     INTEGER NOT NULL
);

ALTER TABLE stocksnapshotdata ADD CONSTRAINT stocksnapshotdata_pk PRIMARY KEY ( stocksnapshotuid );

ALTER TABLE stocksnapshotdata ADD CONSTRAINT stocksnapshotdata_stock_fk FOREIGN KEY ( stock_stockuid )
    REFERENCES stock ( stockuid );

CREATE SEQUENCE stock_stockuid_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER stock_stockuid_trg BEFORE
    INSERT ON stock
    FOR EACH ROW
    WHEN (
        new.stockuid IS NULL
    )
BEGIN
    :new.stockuid := stock_stockuid_seq.nextval;
END;
/

CREATE SEQUENCE stocksnapshotdata_stocksnapsho START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER stocksnapshotdata_stocksnapsho BEFORE
    INSERT ON stocksnapshotdata
    FOR EACH ROW
    WHEN (
        new.stocksnapshotuid IS NULL
    )
BEGIN
    :new.stocksnapshotuid := stocksnapshotdata_stocksnapsho.nextval;
END;
/



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             2
-- CREATE INDEX                             0
-- ALTER TABLE                              3
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           2
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          2
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
