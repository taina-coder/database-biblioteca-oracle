CREATE OR replace PROCEDURE Inserir_emprestimo (p_id_emprestimo     IN NUMBER,
                                                p_data_emprestimo   IN DATE,
                                                p_data_devolucao    IN DATE,
                                                p_matricula_usuario IN VARCHAR2,
                                                p_id_exemplar       IN VARCHAR2)
IS
  v_data_prevista_devolucao DATE;
  v_atraso                  NUMBER := 0;
  v_multa                   NUMBER := 0;
BEGIN
    v_data_prevista_devolucao := p_data_emprestimo + 7;

    IF p_data_devolucao IS NOT NULL
       AND p_data_devolucao > v_data_prevista_devolucao THEN
      v_atraso := p_data_devolucao - v_data_prevista_devolucao;

      v_multa := v_atraso * 5;
    END IF;

    INSERT INTO emprestimo
                (id_emprestimo,
                 data_emprestimo,
                 data_prevista_devolucao,
                 data_devolucao,
                 atraso,
                 multa,
                 matricula_usuario,
                 id_exemplar)
    VALUES      ( p_id_emprestimo,
                 p_data_emprestimo,
                 v_data_prevista_devolucao,
                 p_data_devolucao,
                 v_atraso,
                 v_multa,
                 p_matricula_usuario,
                 p_id_exemplar );

    COMMIT;
END inserir_emprestimo;

/