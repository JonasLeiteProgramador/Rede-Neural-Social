SELECT 
    tb_Projeto_e_Desafio.Descricao AS Projeto, 
    tb_Laboratorio_Inovacao.Localizacao_Evento AS Localizacao, 
    COUNT(tb_Colaboracao.ID) as Contagem_Colaboracoes
FROM 
    tb_Colaboracao
JOIN 
    tb_Projeto_e_Desafio ON tb_Colaboracao.ID_Projeto = tb_Projeto_e_Desafio.ID
JOIN 
    tb_Laboratorio_Inovacao ON tb_Projeto_e_Desafio.ID = tb_Laboratorio_Inovacao.ID
GROUP BY 
    Projeto, Localizacao
ORDER BY 
    Contagem_Colaboracoes DESC;
