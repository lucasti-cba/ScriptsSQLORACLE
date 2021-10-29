SELECT
         to_char(a.dt_atend_medico, 'dd-mm-yyyy') as "Data de Atendimento",
         COUNT(a.NM_GUERRA) AS QNT_ATENDIMENTO,
         a.NM_GUERRA as "Médico",
         COUNT(a.qt_prescricao) AS "Quantidade de Prescrição",
         COUNT(a.dt_medicacao) as "Que medicou",
         (COUNT(a.qt_prescricao)/ COUNT(a.NM_GUERRA )) AS "Média prescrição por atendimento" ,
         (COUNT(a.dt_medicacao) / COUNT(a.NM_GUERRA )) AS "Média que medicou"
   
    FROM  pep_atendimento_ps_v a            
    WHERE a.dt_entrada > TRUNC(SYSDATE - 30) and a.dt_atend_medico IS NOT NULL
    GROUP BY a.nm_guerra, to_char(a.dt_atend_medico, 'dd-mm-yyyy')
    ORDER BY to_char(a.dt_atend_medico, 'dd-mm-yyyy') DESC
