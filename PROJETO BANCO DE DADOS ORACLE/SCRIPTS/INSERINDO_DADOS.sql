INSERT INTO biblioteca
            (nome)
VALUES      ('Biblioteca Hutterfield São Paulo');

INSERT INTO biblioteca
            (nome)
VALUES      ('Biblioteca Hutterfield Mooca');

INSERT INTO biblioteca
            (nome)
VALUES      ('Biblioteca Hutterfield Guarulhos');

ALTER TABLE funcionario
  ADD id_biblioteca NUMBER;

ALTER TABLE funcionario
  ADD CONSTRAINT fk_funcionario_biblioteca FOREIGN KEY (id_biblioteca)
  REFERENCES biblioteca(id_biblioteca);

INSERT INTO funcionario
            (matricula,
             nome,
             id_biblioteca)
VALUES      ( '1001',
              'Maria dos Santos',
              (SELECT id_biblioteca
               FROM   biblioteca
               WHERE  nome = 'Biblioteca Hutterfield São Paulo') );

INSERT INTO funcionario
            (matricula,
             nome,
             id_biblioteca)
VALUES      ( '1005',
              'Julha Silva',
              (SELECT id_biblioteca
               FROM   biblioteca
               WHERE  nome = 'Biblioteca Hutterfield São Paulo') );

INSERT INTO funcionario
            (matricula,
             nome,
             id_biblioteca)
VALUES      ( '1002',
              'Cinthya Rocha',
              (SELECT id_biblioteca
               FROM   biblioteca
               WHERE  nome = 'Biblioteca Hutterfield Mooca') );

INSERT INTO funcionario
            (matricula,
             nome,
             id_biblioteca)
VALUES      ( '1006',
              'Guilherme de Santa Casa',
              (SELECT id_biblioteca
               FROM   biblioteca
               WHERE  nome = 'Biblioteca Hutterfield Mooca') );

INSERT INTO funcionario
            (matricula,
             nome,
             id_biblioteca)
VALUES      ( '1003',
              'João Matos',
              (SELECT id_biblioteca
               FROM   biblioteca
               WHERE  nome = 'Biblioteca Hutterfield Guarulhos') );

INSERT INTO funcionario
            (matricula,
             nome,
             id_biblioteca)
VALUES      ( '1004',
              'Lucas Ferreira',
              (SELECT id_biblioteca
               FROM   biblioteca
               WHERE  nome = 'Biblioteca Hutterfield Guarulhos') ); COMMIT;