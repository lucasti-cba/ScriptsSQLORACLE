SELECT EXTRACT(month FROM dt_entrada_unidade) "mes",
  COUNT(dt_entrada_unidade) "internacao"
  FROM paciente_internado_v2
  GROUP BY EXTRACT(month FROM dt_entrada_unidade)
  ORDER BY "mes";
