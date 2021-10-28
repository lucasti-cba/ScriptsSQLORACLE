SELECT
            (DT_ALTA - DT_ENTRADA) as dias
        FROM
            paciente_internado_v2 
        WHERE
                dt_entrada_unidade >= trunc(sysdate) - 120
            AND dt_entrada_unidade < trunc(sysdate) + 1
