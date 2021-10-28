SELECT
            AVG(DT_ALTA - dt_entrada_unidade) as media,  SUM(DT_ALTA - dt_entrada_unidade) as total
        FROM
            paciente_internado_v2 
        WHERE
                dt_entrada_unidade >= trunc(sysdate) - 30
            AND dt_entrada_unidade < trunc(sysdate) + 1
            AND dt_alta IS NOT NULL
