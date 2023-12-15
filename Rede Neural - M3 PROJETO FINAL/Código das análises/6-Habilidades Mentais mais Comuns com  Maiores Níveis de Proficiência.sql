SELECT Descricao AS HabilidadeMental, Nivel_Proficiencia
FROM tb_Conexao_Habilidades
JOIN tb_habilidade_mental ON tb_Conexao_Habilidades.ID_HabilidadeMental = tb_habilidade_mental.ID
WHERE Nivel_Proficiencia >= 10
ORDER BY Nivel_Proficiencia DESC;
