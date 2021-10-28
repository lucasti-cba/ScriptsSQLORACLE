SELECT EXTRACT(day FROM dt_entrada_unidade) "day",
  COUNT(dt_entrada_unidade) "internacao"
  FROM paciente_internado_v2
  WHERE EXTRACT(month FROM dt_entrada_unidade) = EXTRACT(month FROM trunc(sysdate))
  GROUP BY EXTRACT(day FROM dt_entrada_unidade)
  ORDER BY "day";
