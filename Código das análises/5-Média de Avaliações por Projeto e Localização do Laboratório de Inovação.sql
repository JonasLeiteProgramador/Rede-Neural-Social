SELECT descricao, Localizacao_Evento, AVG(Avaliacao_Colaboracao) as Avaliacao_Media
FROM tb_Colaboracao
JOIN tb_Projeto_e_Desafio ON tb_Colaboracao.ID_Projeto = tb_Projeto_e_Desafio.ID
JOIN tb_Laboratorio_Inovacao ON tb_Projeto_e_Desafio.ID = tb_Laboratorio_Inovacao.ID
GROUP BY descricao, Localizacao_Evento
ORDER BY Avaliacao_Media DESC;