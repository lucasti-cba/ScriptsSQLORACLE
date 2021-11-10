SELECT *
    FROM
        (SELECT 
               a.nm_guerra,
               EXTRACT(month from a.dt_entrada) as "Mês",
               
               SUM(c.qt_material *
                c.vl_unit_sem_round) as Total,
                
                COUNT(a.NM_GUERRA) as Atendimentos,
                
                (SUM(c.qt_material *
                c.vl_unit_sem_round) / COUNT(a.NM_GUERRA) ) as "Média",
                
                COUNT(DISTINCT d.nr_atendimento) as internados              
                
                
                FROM  pep_atendimento_ps_v a 
                INNER JOIN prescr_medica_v b
                    ON  a.nr_atendimento = b.nr_atendimento
                INNER JOIN  conta_paciente_material_v c
                    ON b.nr_prescricao = c.nr_prescricao
                INNER JOIN paciente_internado_v d
                    ON (  a.cd_medico_resp = d.cd_medico_resp)
        
            WHERE  a.dt_atend_medico IS NOT NULL
            GROUP BY a.nm_guerra, extract(Month from a.dt_entrada)
            ORDER BY "Mês"
            ) ;
            
