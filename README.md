

Banco de Dados da Rede Neural Social
![image](https://github.com/JonasLeiteProgramador/Rede-Neural-Social/assets/139612792/27230e7b-2568-4bef-a22c-01aa5f04b656)

Propósito
O Banco de Dados da Rede Neural Social foi projetado para capturar e analisar colaborações inovadoras entre usuários, projetos/desafios, habilidades mentais e laboratórios de inovação. O propósito deste banco de dados é facilitar a exploração de colaborações neurais, fornecendo insights sobre as habilidades dos usuários, avaliações de projetos e o impacto dos esforços colaborativos em laboratórios de inovação.

Estrutura do Banco de Dados
O banco de dados é composto por várias tabelas interconectadas:

tb_Usuario (Usuário):

Armazena informações sobre usuários, incluindo nome, e-mail, profissão, habilidades neurais e detalhes de conexão.
tb_habilidade_mental (Habilidades Mentais):

Mantém informações sobre habilidades mentais, incluindo descrições, áreas de conhecimento e níveis de proficiência.
tb_Projeto_e_Desafio (Projeto/Desafio):

Registra detalhes sobre projetos/desafios, como descrições, áreas de habilidades necessárias, níveis de dificuldade, prazos e soluções propostas.
tb_Colaboracao (Colaboração):

Rastreia colaborações entre usuários e projetos, documentando habilidades contribuídas, datas de colaboração e avaliações.
tb_Feedback:

Armazena feedback relacionado a colaborações, incluindo avaliações e comentários.
tb_Laboratorio_Inovacao (Laboratório de Inovação):

Contém informações sobre laboratórios de inovação, incluindo localizações, propósitos, tópicos abordados e métodos de sincronização mental.
tb_Conexao_Habilidades (Conexão de Habilidades):

Estabelece conexões entre colaborações e habilidades mentais.
Principais Consultas
1. Habilidades Mentais Comuns com Níveis de Proficiência:
sql
Copy code
SELECT Descricao AS HabilidadeMental, Nivel_Proficiencia, COUNT(ID_Colaboracao) as Contagem_Colaboracoes
FROM tb_Conexao_Habilidades
JOIN tb_habilidade_mental ON tb_Conexao_Habilidades.ID_HabilidadeMental = tb_habilidade_mental.ID
GROUP BY HabilidadeMental, Nivel_Proficiencia
ORDER BY Contagem_Colaboracoes DESC;
2. Médias de Avaliações por Projeto e Localização do Laboratório de Inovação:
sql
Copy code
SELECT Projeto, Localizacao_Evento, AVG(Avaliacao_Colaboracao) as Avaliacao_Media
FROM tb_Colaboracao
JOIN tb_Projeto_e_Desafio ON tb_Colaboracao.ID_Projeto = tb_Projeto_e_Desafio.ID
JOIN tb_Laboratorio_Inovacao ON tb_Projeto_e_Desafio.ID = tb_Laboratorio_Inovacao.ID
GROUP BY Projeto, Localizacao_Evento
ORDER BY Avaliacao_Media DESC;
Como Contribuir
Sinta-se à vontade para sugerir melhorias, relatar bugs ou contribuir com código. Abra um problema ou envie uma solicitação pull para contribuir para o desenvolvimento do Banco de Dados da Rede Neural Social.

Licença
Este projeto é licenciado sob a Licença MIT 
