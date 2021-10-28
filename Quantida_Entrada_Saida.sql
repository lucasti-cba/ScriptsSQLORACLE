SELECT
    COUNT(dt_entrada_unidade) AS entrada
FROM
    paciente_internado_v2 
WHERE
        dt_entrada_unidade >= trunc(sysdate) - 7
    AND dt_entrada_unidade < trunc(sysdate) + 1
UNION
    SELECT
        COUNT(dt_alta) AS saida
    FROM
        paciente_internado_v2 
    WHERE
            DT_ALTA >= trunc(sysdate) - 7
        AND DT_ALTA < trunc(sysdate) + 1
