# BANCO DE DADOS DA REDE NEURAL SOCIAL

## Propósito

O Banco de Dados da Rede Neural Social foi projetado para capturar e analisar colaborações inovadoras entre usuários, projetos/desafios, habilidades mentais e laboratórios de inovação. O propósito deste banco de dados é facilitar a exploração de colaborações neurais, fornecendo insights sobre as habilidades dos usuários, avaliações de projetos e o impacto dos esforços colaborativos em laboratórios de inovação.

## Estrutura do Banco de Dados

O banco de dados é composto por várias tabelas interconectadas:

- `tb_Usuario` (Usuário): Armazena informações sobre usuários, incluindo nome, e-mail, profissão, habilidades neurais e detalhes de conexão.
- `tb_habilidade_mental` (Habilidades Mentais): Mantém informações sobre habilidades mentais, incluindo descrições, áreas de conhecimento e níveis de proficiência.
- `tb_Projeto_e_Desafio` (Projeto/Desafio): Registra detalhes sobre projetos/desafios, como descrições, áreas de habilidades necessárias, níveis de dificuldade, prazos e soluções propostas.
- `tb_Colaboracao` (Colaboração): Rastreia colaborações entre usuários e projetos, documentando habilidades contribuídas, datas de colaboração e avaliações.
- `tb_Feedback`: Armazena feedback relacionado a colaborações, incluindo avaliações e comentários.
- `tb_Laboratorio_Inovacao` (Laboratório de Inovação): Contém informações sobre laboratórios de inovação, incluindo localizações, propósitos, tópicos abordados e métodos de sincronização mental.
- `tb_Conexao_Habilidades` (Conexão de Habilidades): Estabelece conexões entre colaborações e habilidades mentais.

## Principais Consultas

Distribuição de Avaliações por Habilidade Mental e Localização do Laboratório:

```sql
SELECT Descricao AS HabilidadeMental, Localizacao_Evento, Avaliacao_Colaboracao, COUNT(ID_Colaboracao) as Contagem_Colaboracoes
FROM tb_Conexao_Habilidades
JOIN tb_Colaboracao ON tb_Conexao_Habilidades.ID_Colaboracao = tb_Colaboracao.ID
JOIN tb_habilidade_mental ON tb_Conexao_Habilidades.ID_HabilidadeMental = tb_habilidade_mental.ID
JOIN tb_Projeto_e_Desafio ON tb_Colaboracao.ID_Projeto = tb_Projeto_e_Desafio.ID
JOIN tb_Laboratorio_Inovacao ON tb_Projeto_e_Desafio.ID = tb_Laboratorio_Inovacao.ID
GROUP BY HabilidadeMental, Localizacao_Evento, Avaliacao_Colaboracao
ORDER BY HabilidadeMental, Avaliacao_Colaboracao;

Contagem de Colaborações por Localização do Laboratório de Inovação:

SQL

SELECT Localizacao_Evento, COUNT(ID_Colaboracao) as Contagem_Colaboracoes 
FROM tb_Laboratorio_Inovacao 
JOIN tb_Projeto_e_Desafio ON tb_Laboratorio_Inovacao.ID = tb_Projeto_e_Desafio.ID 
JOIN tb_Colaboracao ON tb_Projeto_e_Desafio.ID = tb_Colaboracao.ID_Projeto 
GROUP BY Localizacao_Evento 
ORDER BY Contagem_Colaboracoes DESC;
Código gerado por IA. Examine e use com cuidado. Mais informações em perguntas frequentes.
Avaliação Média por Localização do Laboratório de Inovação:

SQL

SELECT Localizacao_Evento, AVG(Avaliacao_Colaboracao) as Avaliacao_Media 
FROM tb_Laboratorio_Inovacao 
JOIN tb_Projeto_e_Desafio ON tb_Laboratorio_Inovacao.ID = tb_Projeto_e_Desafio.ID 
JOIN tb_Colaboracao ON tb_Projeto_e_Desafio.ID = tb_Colaboracao.ID_Projeto 
GROUP BY Localizacao_Evento 
ORDER BY Avaliacao_Media DESC;
Código gerado por IA. Examine e use com cuidado. Mais informações em perguntas frequentes.
Contagem de Colaborações por Projeto e Localização do Laboratório de Inovação:

SQL

SELECT Projeto, Localizacao_Evento, COUNT(ID_Colaboracao) as Contagem_Colaboracoes 
FROM tb_Colaboracao 
JOIN tb_Projeto_e_Desafio ON tb_Colaboracao.ID_Projeto = tb_Projeto_e_Desafio.ID 
JOIN tb_Laboratorio_Inovacao ON tb_Projeto_e_Desafio.ID = tb_Laboratorio_Inovacao.ID 
GROUP BY Projeto, Localizacao_Evento 
ORDER BY Contagem_Colaboracoes DESC;
Código gerado por IA. Examine e use com cuidado. Mais informações em perguntas frequentes.
Como Contribuir
Sinta-se à vontade para sugerir melhorias, relatar bugs ou contribuir com código. Abra um problema ou envie uma solicitação pull para contribuir para o desenvolvimento do Banco de Dados da Rede Neural Social.

CRIADO POR
Jonas Leite, Maria Francielly, Gabriel Gaspar, Sthefanie, Marcos

Licença
Este projeto é licenciado sob a Licença MIT.
