CREATE DATABASE rede_social_neural;

  -- DROP DATABASE rede_social_neural;

USE rede_social_neural;


	CREATE TABLE tb_Usuario (
		ID INT PRIMARY KEY AUTO_INCREMENT,
		Nome VARCHAR(255),
		Email VARCHAR(255),
		Senha VARCHAR(255),
		Profissao VARCHAR(255),
		Habilidades_Neurais TEXT,
		Conexoes_Neurais TEXT,
		Nivel_Experiencia_Resolucao_Problemas INT,
		create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	);

	-- Tabela de Habilidades Mentais
	CREATE TABLE tb_habilidade_mental (
		ID INT PRIMARY KEY AUTO_INCREMENT,
		Descricao VARCHAR(255),
		Area_Conhecimento VARCHAR(255),
        Area_Conhecimento_adicional VARCHAR(255),
		Nivel_Proficiencia INT,
        Nivel_Proficiencia_adicional INT
	);

	-- Tabela de Projetos/Desafios
	CREATE TABLE tb_Projeto_e_Desafio (
		ID INT PRIMARY KEY AUTO_INCREMENT,
		Descricao TEXT,
		Areas_Habilidades_Necessarias TEXT,
		Nivel_Dificuldade INT,
		Prazo DATE,
		Respostas_Solucoes_Propostas TEXT
	);

	-- Tabela de Colaborações
	CREATE TABLE  tb_Colaboracao (
		ID INT PRIMARY KEY AUTO_INCREMENT,
		ID_Usuario INT,
		ID_Projeto INT,
		Habilidades_Contribuidas TEXT,
		Data_Colaboracao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
		Avaliacao_Colaboracao INT,
		FOREIGN KEY (ID_Usuario) REFERENCES tb_Usuario(ID),
		FOREIGN KEY (ID_Projeto) REFERENCES tb_Projeto_e_Desafio(ID)
	);

	-- Tabela de Feedback
	CREATE TABLE tb_Feedback (
		ID INT PRIMARY KEY AUTO_INCREMENT,
		ID_Colaboracao INT,
		Avaliacao INT,
		Comentario TEXT,
		FOREIGN KEY (ID_Colaboracao) REFERENCES tb_Colaboracao(ID)
	);

	-- Tabela de Laboratórios de Inovação
	CREATE TABLE tb_Laboratorio_Inovacao (
		ID INT PRIMARY KEY AUTO_INCREMENT,
		Localizacao_Evento VARCHAR(255),
		Proposito_Encontro_Mental TEXT,
		Temas_Abordados TEXT,
		Metodo_Sincronizacao_Mental TEXT
	);

	-- Tabela de Conexão de Habilidades
	CREATE TABLE tb_Conexao_Habilidades (
		ID INT PRIMARY KEY AUTO_INCREMENT,
		ID_Colaboracao INT,
		ID_HabilidadeMental INT,
        Prioridade INT,
		FOREIGN KEY (ID_Colaboracao) REFERENCES tb_Colaboracao(ID),
		FOREIGN KEY (ID_HabilidadeMental) REFERENCES tb_habilidade_mental(ID)
	);




	-- Inserindo 25 exemplos na tabela Usuario
	SELECT * FROM tb_Usuario;
		INSERT INTO tb_Usuario (Nome, Email, Senha, Profissao, Habilidades_Neurais, Conexoes_Neurais, Nivel_Experiencia_Resolucao_Problemas)
		VALUES
		('Alice Oliveira', 'alice@email.com', 'senha123', 'Engenheira de Software', 'Programação,Análise de Dados', 'Rede de Engenheiros', 9),
		('Bob Silva', 'bob@email.com', 'senha456', 'Designer Gráfico', 'Design Gráfico,Ilustração', 'Rede de Designers', 10),
		('Charlie Santos', 'charlie@email.com', 'senha789', 'Cientista de Dados', 'Machine Learning,Análise Estatística', 'Rede de Cientistas de Dados', 8),
		('Daniel Lima', 'daniel@email.com', 'senha987', 'Desenvolvedor Front-end', 'HTML,CSS,JavaScript', 'Rede de Desenvolvedores Web', 9),
		('Eva Costa', 'eva@email.com', 'senha654', 'Analista de Marketing', 'Marketing Digital,SEO', 'Rede de Profissionais de Marketing', 5),
		('Felipe Pereira', 'felipe@email.com', 'senha321', 'Engenheiro Eletricista', 'Controle e Automação,Eletrotécnica', 'Rede de Engenheiros Eletricistas', 5),
		('Gabriela Alves', 'gabriela@email.com', 'senha135', 'Psicóloga', 'Psicologia Clínica,Neuropsicologia', 'Rede de Psicólogos', 6),
		('Hugo Oliveira', 'hugo@email.com', 'senha246', 'Arquiteto', 'Design de Interiores,Arquitetura Sustentável', 'Rede de Arquitetos', 7),
		('Isabela Martins', 'isabela@email.com', 'senha789', 'Advogada', 'Direito Civil,Direito do Trabalho', 'Rede de Advogados', 8),
		('João Pereira', 'joao@email.com', 'senha012', 'Médico', 'Clínica Médica,Pediatria', 'Rede de Médicos', 6),
		('Karine Lima', 'karine@email.com', 'senha345', 'Engenheira Ambiental', 'Sustentabilidade,Gestão Ambiental', 'Rede de Engenheiros Ambientais', 8),
		('Lucas Silva', 'lucas@email.com', 'senha678', 'Desenvolvedor Back-end', 'Java,Node.js,SQL', 'Rede de Desenvolvedores Web', 10),
		('Mariana Oliveira', 'mariana@email.com', 'senha901', 'Publicitária', 'Publicidade Online,Branding', 'Rede de Publicitários', 7),
		('Nathan Santos', 'nathan@email.com', 'senha234', 'Analista de Dados', 'Mineração de Dados,Visualização de Dados', 'Rede de Analistas de Dados', 9),
		('Olivia Costa', 'olivia@email.com', 'senha567', 'Designer de Interiores', 'Decoração,Arquitetura de Interiores', 'Rede de Designers de Interiores', 5),
		('Pedro Martins', 'pedro@email.com', 'senha890', 'Advogado', 'Direito Empresarial,Contratos', 'Rede de Advogados', 5),
		('Quiteria Alves', 'quiteria@email.com', 'senha123', 'Médica Neurologista', 'Neurologia,Neurocirurgia', 'Rede de Médicos', 6),
		('Rafael Oliveira', 'rafael@email.com', 'senha456', 'Engenheiro Civil', 'Estruturas,Geotecnia', 'Rede de Engenheiros Civis', 7),
		('Sofia Silva', 'sofia@email.com', 'senha789', 'Psicóloga Infantil', 'Psicologia Infantil,Psicopedagogia', 'Rede de Psicólogos', 7),
		('Thiago Lima', 'thiago@email.com', 'senha012', 'Programador Java', 'Java,Spring Boot,SQL', 'Rede de Programadores Java', 10),
		('Ursula Santos', 'ursula@email.com', 'senha345', 'Designer de Moda', 'Design de Moda,Estilismo', 'Rede de Designers de Moda', 6),
		('Vitor Oliveira', 'vitor@email.com', 'senha678', 'Engenheiro Eletrônico', 'Eletrônica,Controle e Automação', 'Rede de Engenheiros Eletrônicos', 9),
		('Wanda Costa', 'wanda@email.com', 'senha901', 'Especialista em SEO', 'SEO,Marketing Digital', 'Rede de Especialistas em SEO', 9),
		('Xavier Martins', 'xavier@email.com', 'senha234', 'Advogado Trabalhista', 'Direito do Trabalho,Consultoria Jurídica', 'Rede de Advogados', 7),
		('Yasmin Alves', 'yasmin@email.com', 'senha567', 'Enfermeira', 'Enfermagem,Assistência Clínica', 'Rede de Enfermeiras', 6),
		('Zacarias Oliveira', 'zacarias@email.com', 'senha890', 'Analista de Sistemas', 'Análise de Sistemas,Desenvolvimento de Software', 'Rede de Analistas de Sistemas', 10); 
	-- INSERINDO DADOS e CRIANDO UMA NOVA COLUNA 
    
ALTER TABLE tb_Usuario
ADD COLUMN Habilidade_Neural_adicional TEXT;
    
    
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Desenvolvimento Mobile,UI/UX Design' WHERE ID = 1;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Marketing Digital,Branding' WHERE ID = 2;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Programação,Análise de Dados' WHERE ID = 3;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Design de Interiores,Arquitetura' WHERE ID = 4;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Direito Empresarial, SEO' WHERE ID = 5;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional =   NULL  WHERE ID = 6;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Psicologia Clínica, Neuropsicologia' WHERE ID = 7;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Design de Interiores, Arquitetura Sustentável' WHERE ID = 8;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Desenvolvimento Mobile,UI/UX Design' WHERE ID = 9;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Finanças Pessoais,Contabilidade' WHERE ID = 10;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Sustentabilidade, Gestão Ambiental' WHERE ID = 11;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Produção de Áudio,Conteúdo Digital' WHERE ID = 12;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Design Gráfico,Moda,Sustentabilidade , Branding' WHERE ID = 13;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Saúde Mental,Desenvolvimento Mobile com Kotlin' WHERE ID = 14;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Recursos Humanos,Tecnologia da Informação' WHERE ID = 15;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = NULL WHERE ID = 16;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Logística, Mapeamento de estoque e logistica de produtos ambientados' WHERE ID = 17;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Ilustração,a arte da ilustração' WHERE ID = 18;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = NULL WHERE ID = 19;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Desenvolvimento Mobile, Programação' WHERE ID = 20;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Produção Audiovisual' WHERE ID = 21;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Gestão da Qualidade,Auditoria' WHERE ID = 22;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Gestão de Crises,Comunicação Empresarial' WHERE ID = 23;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Análise de Dados,Machine Learning' WHERE ID = 24;
	UPDATE tb_Usuario SET Habilidade_Neural_adicional = 'Design de Produto médico,Engenharia de Produto' WHERE ID = 25;


  -- INSERINDO MAIS UMA COLUNA E ENTÃO ADICIONANDO DADOS NA COLUNA
  
  
  
  




	-- INSERINDO HABILIDADES MENTAIS
	SELECT * FROM tb_habilidade_mental;
	INSERT INTO tb_habilidade_mental (Descricao, Area_Conhecimento, Nivel_Proficiencia)
	VALUES
	('Programação em Python', 'Programação', 7),
	('Desenvolvimento Web', 'Programação', 10),
	('Marketing Digital', 'Marketing', 9),
	('Ilustração Digital', 'Design Gráfico', 7),
	('Machine Learning', 'Inteligência Artificial', 10),
	('Análise Estatística', 'Estatística', 7),
	('HTML5', 'Desenvolvimento Web', 10),
	('Gestão de Projetos', 'Gestão', 9),
	('Psicologia Clínica', 'Psicologia', 8),
	('Controle e Automação', 'Engenharia Elétrica', 7),
	('Direito Civil', 'Direito', 8),
	('Clínica Médica', 'Medicina', 7),
	('Sustentabilidade', 'Meio Ambiente', 8),
	('Java', 'Programação', 7),
	('Branding', 'Marketing', 8),
	('Mineração de Dados', 'Ciência de Dados', 7),
	('Design de Interiores', 'Design', 8),
	('Direito Empresarial', 'Direito', 7),
	('Neurologia', 'Medicina', 9),
	('Spring Boot', 'Programação', 7),
	('Estilismo', 'Moda', 8),
	('Eletrônica', 'Engenharia Eletrônica', 7),
	('SEO', 'Marketing', 10),
	('Direito do Trabalho', 'Direito', 8),
	('Enfermagem', 'Saúde', 7),
    ('Análise de Sistemas','Desenvolvimento de Software',10);
    
    
    
    -- Atualizar a tabela com valores para as novas colunas
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Programação', Nivel_Proficiencia_adicional = 8 WHERE ID = 1;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Marketing', Nivel_Proficiencia_adicional = 9 WHERE ID = 2;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Programação', Nivel_Proficiencia_adicional = 7 WHERE ID = 3;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Design de interiores', Nivel_Proficiencia_adicional = 10 WHERE ID = 4;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Direito Empresarial', Nivel_Proficiencia_adicional = 8 WHERE ID = 5;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional =  NULL,Nivel_Proficiencia_adicional = NULL WHERE ID = 6;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Neuropsicologia', Nivel_Proficiencia_adicional = 8 WHERE ID = 7;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Design de Interiores', Nivel_Proficiencia_adicional = 7 WHERE ID = 8;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Programação', Nivel_Proficiencia_adicional = 9 WHERE ID = 9;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Contabilidade', Nivel_Proficiencia_adicional = 7 WHERE ID = 10;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Gestão Ambiental', Nivel_Proficiencia_adicional = 8 WHERE ID = 11;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Conteúdo Digital', Nivel_Proficiencia_adicional = 9 WHERE ID = 12;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Design Gráfico', Nivel_Proficiencia_adicional = 7 WHERE ID = 13;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Programação', Nivel_Proficiencia_adicional = 8 WHERE ID = 14;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Tecnologia da Informação', Nivel_Proficiencia_adicional = 9 WHERE ID = 15;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = NULL,Nivel_Proficiencia_adicional = NULL WHERE ID = 16;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Logística', Nivel_Proficiencia_adicional = 8 WHERE ID = 17;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Ilustração', Nivel_Proficiencia_adicional = 7 WHERE ID = 18;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional =  NULL, Nivel_Proficiencia_adicional = NULL WHERE ID = 19;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Programação', Nivel_Proficiencia_adicional = 7 WHERE ID = 20;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Produção Audiovisual', Nivel_Proficiencia_adicional = 8 WHERE ID = 21;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Gestão da Qualidade', Nivel_Proficiencia_adicional = 7 WHERE ID = 22;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Comunicação Empresarial', Nivel_Proficiencia_adicional = 10 WHERE ID = 23;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Análise de Dados', Nivel_Proficiencia_adicional = 8 WHERE ID = 24;
UPDATE tb_habilidade_mental SET Area_Conhecimento_adicional = 'Design', Nivel_Proficiencia_adicional = 7 WHERE ID = 25;

	-- INSERINDO PROJETO/DESAFIOS
	SELECT * FROM tb_Projeto_e_Desafio;

	INSERT INTO tb_Projeto_e_Desafio (Descricao, Areas_Habilidades_Necessarias, Nivel_Dificuldade, Prazo, Respostas_Solucoes_Propostas)
	VALUES
	('Desenvolver um Aplicativo de Gerenciamento de Tarefas', 'Desenvolvimento Mobile,UI/UX Design', 5, '2023-12-31', 'Propostas de design e funcionalidades inovadoras'),
	('Criar uma Campanha de Marketing para Produto Sustentável', 'Marketing Digital,Branding,Sustentabilidade', 3, '2023-11-30', 'Estratégias de marketing e identidade visual'),
	('Implementar um Sistema de Recomendação para uma Plataforma de Streaming', 'Machine Learning,Programação,Análise de Dados', 7, '2023-12-15', 'Algoritmos de recomendação e avaliação de desempenho'),
	('Desenhar o Layout de um Espaço de Coworking', 'Design de Interiores,Arquitetura', 4, '2023-11-20', 'Plantas baixas e propostas de decoração'),
	('Elaborar um Contrato Empresarial para Startup de Tecnologia', 'Direito Empresarial,Direito Contratual', 6, '2023-12-10', 'Termos legais e cláusulas contratuais'),
	('Conduzir um Estudo de Caso em Psicologia Organizacional', 'Psicologia Organizacional,Metodologia de Pesquisa', 4, '2023-11-25', 'Análise de dados e conclusões'),
	('Desenvolver um Protótipo de Dispositivo Eletrônico', 'Eletrônica,Programação', 8, '2023-12-05', 'Esquemas elétricos e código-fonte'),
	('Criar um Plano de Gerenciamento de Crises para Empresa', 'Gestão de Crises,Comunicação Empresarial', 7, '2023-12-20', 'Procedimentos de emergência e estratégias de comunicação'),
	('Realizar Pesquisa de Mercado para Lançamento de Produto', 'Pesquisa de Mercado,Análise de Dados', 5, '2023-11-15', 'Relatório de análise de mercado e insights'),
	('Desenvolver um Jogo Educacional para Crianças', 'Desenvolvimento de Jogos,Educação Infantil', 6, '2023-12-01', 'Jogabilidade e conteúdo educativo'),
	('Implementar um Sistema de Controle Financeiro Pessoal', 'Finanças Pessoais,Programação', 4, '2023-11-18', 'Funcionalidades de controle de despesas e receitas'),
	('Criar um Podcast sobre Inovação e Tecnologia', 'Produção de Áudio,Conteúdo Digital', 3, '2023-12-08', 'Episódios com entrevistas e análises'),
	('Desenhar Logotipo para Marca de Moda Sustentável', 'Design Gráfico,Moda,Sustentabilidade', 4, '2023-11-28', 'Propostas de logotipo e identidade visual'),
	('Desenvolver um Aplicativo de Saúde Mental', 'Saúde Mental,Desenvolvimento Mobile', 7, '2023-12-12', 'Funcionalidades de acompanhamento e suporte emocional'),
	('Elaborar um Plano de Carreira para Profissional de TI', 'Recursos Humanos,Tecnologia da Informação', 5, '2023-11-23', 'Estruturação de metas e desenvolvimento profissional'),
	('Conduzir uma Oficina de Criatividade para Jovens', 'Educação Criativa,Psicologia Educacional', 3, '2023-12-03', 'Atividades práticas e dinâmicas'),
	('Desenvolver um Sistema de Controle de Estoque', 'Logística,Programação', 6, '2023-12-17', 'Funcionalidades de gestão de estoque e relatórios'),
	('Criar um Guia Ilustrado de Práticas Sustentáveis', 'Ilustração,Meio Ambiente', 4, '2023-11-26', 'Ilustrações informativas e dicas práticas'),
	('Elaborar um Plano de Marketing para Lançamento de Livro', 'Marketing Digital,Publicidade', 5, '2023-12-07', 'Estratégias de divulgação e campanhas online'),
	('Desenvolver um Aplicativo de Receitas Saudáveis', 'Culinária,Desenvolvimento Mobile', 7, '2023-12-14', 'Receitas, guias nutricionais e funcionalidades interativas'),
	('Criar um Curta-Metragem sobre Inclusão Social', 'Produção Audiovisual,Sociologia', 7, '2023-12-04', 'Roteiro, direção e produção'),
	('Realizar uma Auditoria de Qualidade em Processos', 'Gestão da Qualidade,Auditoria', 10, '2023-11-29', 'Relatório de auditoria e sugestões de melhorias'),
	('Desenvolver um Aplicativo de Assistência a Idosos', 'Desenvolvimento Mobile,Inteligência Artificial,Atendimento ao Cliente', 6, '2024-01-15', 'Recursos de assistência virtual e interface amigável'),
	('Criar uma Campanha de Conscientização sobre Saúde Mental', 'Marketing Digital,Psicologia,Produção de Conteúdo', 4, '2023-12-30', 'Estratégias de divulgação online e conteúdo educativo'),
	('Implementar um Sistema de Monitoramento Ambiental', 'Sustentabilidade,Internet of Things (IoT),Análise de Dados', 8, '2024-02-01', 'Sensores ambientais e relatórios de análise');

	-- MAIS DADOS
	INSERT INTO tb_Projeto_e_Desafio (Descricao, Areas_Habilidades_Necessarias, Nivel_Dificuldade, Prazo, Respostas_Solucoes_Propostas)
	VALUES
	('Desenvolver um Aplicativo de Gerenciamento de Tarefas', 'Desenvolvimento Mobile,UI/UX Design', 5, '2023-12-31', 'Propostas de design e funcionalidades inovadoras'),
	('Criar uma Campanha de Marketing para Produto Sustentável', 'Marketing Digital,Branding,Sustentabilidade', 3, '2023-11-30', 'Estratégias de marketing e identidade visual'),
	('Implementar um Sistema de Recomendação para uma Plataforma de Streaming', 'Machine Learning,Programação,Análise de Dados', 7, '2023-12-15', 'Algoritmos de recomendação e avaliação de desempenho'),
	('Desenhar o Layout de um Espaço de Coworking', 'Design de Interiores,Arquitetura', 4, '2023-11-20', 'Plantas baixas e propostas de decoração'),
	('Elaborar um Contrato Empresarial para Startup de Tecnologia', 'Direito Empresarial,Direito Contratual', 6, '2023-12-10', 'Termos legais e cláusulas contratuais'),
	('Conduzir um Estudo de Caso em Psicologia Organizacional', 'Psicologia Organizacional,Metodologia de Pesquisa', 4, '2023-11-25', 'Análise de dados e conclusões'),
	('Desenvolver um Protótipo de Dispositivo Eletrônico', 'Eletrônica,Programação', 8, '2023-12-05', 'Esquemas elétricos e código-fonte'),
	('Criar um Plano de Gerenciamento de Crises para Empresa', 'Gestão de Crises,Comunicação Empresarial', 7, '2023-12-20', 'Procedimentos de emergência e estratégias de comunicação'),
	('Realizar Pesquisa de Mercado para Lançamento de Produto', 'Pesquisa de Mercado,Análise de Dados', 5, '2023-11-15', 'Relatório de análise de mercado e insights'),
	('Desenvolver um Jogo Educacional para Crianças', 'Desenvolvimento de Jogos,Educação Infantil', 6, '2023-12-01', 'Jogabilidade e conteúdo educativo'),
	('Implementar um Sistema de Controle Financeiro Pessoal', 'Finanças Pessoais,Programação', 4, '2023-11-18', 'Funcionalidades de controle de despesas e receitas'),
	('Criar um Podcast sobre Inovação e Tecnologia', 'Produção de Áudio,Conteúdo Digital', 3, '2023-12-08', 'Episódios com entrevistas e análises'),
	('Desenhar Logotipo para Marca de Moda Sustentável', 'Design Gráfico,Moda,Sustentabilidade', 4, '2023-11-28', 'Propostas de logotipo e identidade visual'),
	('Desenvolver um Aplicativo de Saúde Mental', 'Saúde Mental,Desenvolvimento Mobile', 7, '2023-12-12', 'Funcionalidades de acompanhamento e suporte emocional'),
	('Elaborar um Plano de Carreira para Profissional de TI', 'Recursos Humanos,Tecnologia da Informação', 5, '2023-11-23', 'Estruturação de metas e desenvolvimento profissional'),
	('Conduzir uma Oficina de Criatividade para Jovens', 'Educação Criativa,Psicologia Educacional', 3, '2023-12-03', 'Atividades práticas e dinâmicas'),
	('Desenvolver um Sistema de Controle de Estoque', 'Logística,Programação', 6, '2023-12-17', 'Funcionalidades de gestão de estoque e relatórios'),
	('Criar um Guia Ilustrado de Práticas Sustentáveis', 'Ilustração,Meio Ambiente', 4, '2023-11-26', 'Ilustrações informativas e dicas práticas'),
	('Elaborar um Plano de Marketing para Lançamento de Livro', 'Marketing Digital,Publicidade', 5, '2023-12-07', 'Estratégias de divulgação e campanhas online'),
	('Desenvolver um Aplicativo de Receitas Saudáveis', 'Culinária,Desenvolvimento Mobile', 7, '2023-12-14', 'Receitas, guias nutricionais e funcionalidades interativas'),
	('Criar um Curta-Metragem sobre Inclusão Social', 'Produção Audiovisual,Sociologia', 7, '2023-12-04', 'Roteiro, direção e produção'),
	('Realizar uma Auditoria de Qualidade em Processos', 'Gestão da Qualidade,Auditoria', 10, '2023-11-29', 'Relatório de auditoria e sugestões de melhorias'),
	('Desenvolver um Aplicativo de Assistência a Idosos', 'Desenvolvimento Mobile,Inteligência Artificial,Atendimento ao Cliente', 6, '2024-01-15', 'Recursos de assistência virtual e interface amigável'),
	('Criar uma Campanha de Conscientização sobre Saúde Mental', 'Marketing Digital,Psicologia,Produção de Conteúdo', 4, '2023-12-30', 'Estratégias de divulgação online e conteúdo educativo'),
	('Implementar um Sistema de Monitoramento Ambiental', 'Sustentabilidade,Internet of Things (IoT),Análise de Dados', 8, '2024-02-01', 'Sensores ambientais e relatórios de análise');

	-- INSERINDO EXEMPLOS DE COLABORAÇÕES
	SELECT * FROM tb_Colaboracao;
    
INSERT INTO tb_Colaboracao (ID_Usuario, ID_Projeto, Habilidades_Contribuidas, Avaliacao_Colaboracao)
VALUES
	(1, 1, 'Pesquisa de Mercado,Análise de Dados', 10),
	(2, 2, 'Marketing Digital,Branding,Sustentabilidade', 7),
	(3, 3, 'Machine Learning,Programação,Análise de Dados', 10),
	(4, 4, 'Programação,Desenvolvimento Web', 9),
	(5, 5, 'Marketing Digital,Publicidade', 10),
	(6, 6, 'Psicologia Organizacional,Metodologia de Pesquisa', 10),
	(7, 7, 'Eletrônica,Programação', 8),
	(8, 8, 'Design de Interiores,Arquitetura', 10),
	(9, 9, 'Desenvolvimento Mobile,UI/UX Design', 9),
	(10, 10, 'Desenvolvimento de Jogos,Consulta de dados para Educação médica', 10),
	(11, 11, 'Finanças Pessoais,Contabilidade', 10),
	(12, 12, 'Produção de Áudio,Conteúdo Digital', 7),
	(13, 13, 'Design Gráfico,Moda,Sustentabilidade e publicidade', 9),
	(14, 14, 'Saúde Mental,Desenvolvimento Mobile e analises de dados para saúde mental', 7),
	(15, 15, 'Recursos Humanos,Tecnologia da Informação e  a criação  de desingners para interiores de prédios', 10),
	(16, 16,'Direito Empresarial,Direito Contratual', 10),
	(17, 17, 'Logística,E ideias de projetos sobre neurocirugia', 10),
	(18, 18, 'Ilustração,estrutra eficaz que preserva o meio ambiente', 4),
	(19, 19, 'Educação Criativa,Psicologia Educacional' , 10),
	(20, 20, 'Culinária Digital,Desenvolvimento Mobile e Spring boot para agilizar o desenvolvimento de aplicativos da web e de microsserviços', 10),
	(21, 21, 'Produção Audiovisual,Auditoria sobre a produção audivisual  para a moda', 8),
	(22, 22, 'Gestão da Qualidade,Auditoria', 8),
	(23, 23, 'Gestão de Crises,Comunicação Empresarial', 9),
	(24, 24, 'Análise de Dados,Machine Learning', 7),
	(25, 25, 'Design de Produto médico,Engenharia de Produto', 5); 
	-- MAIS DADOS

	SELECT * FROM tb_Colaboracao;

	INSERT INTO tb_Colaboracao (ID_Usuario, ID_Projeto, Habilidades_Contribuidas, Avaliacao_Colaboracao)
	VALUES
	(1, 25, 'Finanças Digitais,Desenvolvimento Mobile', 8),
	(2, 26, 'Realidade Aumentada,Desenvolvimento de Jogos', 8),
	(3, 27, 'Gestão de Projetos,Programação', 7),
	(4, 28, 'Design Sustentável,Arquitetura', 7),
	(5, 29, 'Estratégias Online,Marketing Digital', 6),
	(6, 30, 'Desenvolvimento Mobile,Gestão de Eventos', 7),
	(7, 31, 'Meio Ambiente,Comunicação', 5),
	(8, 32, 'Recursos Humanos,Tecnologia da Informação', 6),
	(9, 33, 'Pesquisa de Mercado,Atendimento ao Cliente', 5),
	(10, 34, 'Desenvolvimento de Jogos,Realidade Virtual', 10),
	(11, 35, 'Gestão da Qualidade,Engenharia de Produção', 7),
	(12, 36, 'Produção Audiovisual,Educação', 4),
	(13, 37, 'Desenvolvimento Mobile,Sustentabilidade', 6),
	(14, 38, 'Marketing Digital,Redes Sociais', 4),
	(15, 39, 'Pesquisa de Mercado,Relações Internacionais', 7),
	(16, 40, 'Análise de Dados,Inteligência Artificial', 8),
	(17, 41, 'Gestão de Pessoas,Trabalho Remoto', 5),
	(18, 42, 'Desenvolvimento Web,Gestão Hoteleira', 6),
	(19, 43, 'Design Gráfico,Sustentabilidade', 4),
	(20, 44, 'Treinamento,Comércio', 7),
	(21, 45, 'Saúde,Desenvolvimento Mobile', 6),
	(22, 46, 'Publicidade,Marketing Digital', 10),
	(23, 47, 'Gestão de Projetos,Desenvolvimento Web', 7),
	(24, 48, 'Educação Criativa,Gerontologia', 5),
	(25, 49, 'Finanças,Análise de Dados', 6),
	(1, 50, 'Arte Digital,Curadoria', 10),
	(2, 50, 'Recursos Humanos,Tecnologia da Informação', 7);

	-- Inserir 25 DADOS FEEDBACK
	SELECT * FROM tb_Feedback;
		INSERT INTO tb_Feedback (ID_Colaboracao, Avaliacao, Comentario)
		VALUES
		(1, 10, 'Ótima contribuição no desenvolvimento mobile e UI/UX Design'),
		(2, 10, 'Excelente trabalho em marketing digital, branding e sustentabilidade'),
		(3, 10, 'Contribuição valiosa em machine learning, programação e análise de dados'),
		(4, 10, 'Boa participação no design de interiores e arquitetur,ficou perfeito!.'),
		(5, 10, 'Destacou-se em direito empresarial e direito contratual'),
		(6, 5, 'Psicologia organizacional e metodologia de pesquisa bem abordadas, porém se perdeu no propósito da colaboração'),
		(7, 10, 'Impressionante conhecimento em eletrônica e programação'),
		(8, 10, 'Lidou bem com gestão de crises e comunicação empresarial'),
		(9, 7, 'Boa análise de mercado e dados realizada, mas dá para melhorar'),
		(10, 6, 'Contribuição valiosa em desenvolvimento de jogos e educação infantil'),
		(11, 4, 'Bom entendimento em finanças pessoais e programação, mas tem muito a melhorar'),
		(13, 4, 'Destaque em design gráfico, moda e sustentabilidade'),
		(14, 7, 'Contribuição significativa em saúde mental e desenvolvimento mobile'),
		(15, 5, 'Conhecimento sólido em recursos humanos e tecnologia da informação'),
		(16, 3, 'Abordagem criativa, mas não foi objetiva em sua colaboração'),
		(17, 10, 'Bom entendimento em logística e programação'),
		(18, 4, 'Contribuição interessante em ilustração e meio ambiente, mas ainda há muitos pontos a melhorar'),
		(19, 9, 'Destacou-se em marketing digital e publicidade, cumpriu o seu propósito!'),
		(20, 7, 'Excelente contribuição em culinária e desenvolvimento mobile'),
		(21, 8, 'Destaque em produção audiovisual e moda'),
		(22, 8, 'Impressionante conhecimento em gestão da qualidade e auditoria'),
		(23, 10, 'Boa atuação em programação e desenvolvimento web'),
		(24, 10, 'Ótima compreensão em análise de dados e machine learning'),
		(25, 10, 'Destaque em design de produto e engenharia de produto');

	-- MAIS DADOS
	INSERT INTO tb_Feedback (ID_Colaboracao, Comentario, Avaliacao)
	VALUES
	(1, 'Ótimo trabalho! As finanças digitais implementadas no aplicativo são excelentes.', 8),
	(2, 'A experiência de realidade aumentada no jogo é incrível. Parabéns!', 9),
	(3, 'A gestão de projetos e programação foram muito bem conduzidas. Bom trabalho!', 7),
	(4, 'O design sustentável e a arquitetura do espaço são impressionantes.', 8),
	(5, 'As estratégias online e de marketing digital foram eficazes para a campanha.', 7),
	(6, 'O desenvolvimento mobile e a gestão de eventos foram muito bem coordenados.', 8),
	(7, 'A abordagem ambiental na comunicação é bastante positiva. Bom trabalho!', 6),
	(8, 'Recursos humanos e tecnologia da informação foram integrados com sucesso.', 7),
	(9, 'A pesquisa de mercado e o atendimento ao cliente foram bem executados.', 6),
	(10, 'O desenvolvimento de jogos e a realidade virtual trouxeram inovação ao projeto.', 9),
	(11, 'A gestão da qualidade e engenharia de produção foram destaque no processo.', 8),
	(12, 'O colaborador não sabia oque estava fazendo,causando  um caos.', 3),
	(13, 'O desenvolvimento mobile alinhado à sustentabilidade é uma excelente proposta.', 8),
	(14, 'Estratégias de marketing digital e redes sociais foram bem aplicadas.', 6),
	(15, 'A pesquisa de mercado e relações internacionais foram conduzidas de maneira sólida.', 8),
	(16, 'A análise de dados e inteligência artificial trouxeram insights valiosos.', 9),
	(17, 'A gestão de pessoas e trabalho remoto foram bem planejadas. Parabéns!', 7),
	(18, 'Desenvolvimento web e gestão hoteleira foram integrados de forma eficiente.', 8),
	(19, 'O design gráfico aliado à sustentabilidade resultou em um projeto atrativo.', 7),
	(20, 'O treinamento e comércio foram bem abordados no projeto. Bom trabalho!', 8),
	(21, 'A proposta de saúde aliada ao desenvolvimento mobile e moda é muito relevante.', 8),
	(22, 'A publicidade e marketing digital estão alinhados de forma estratégica.', 9),
	(23, 'A gestão de projetos e desenvolvimento web foram conduzidos de maneira eficaz.', 8),
	(24, 'A educação criativa e gerontologia foram aplicadas de forma sensível e eficiente.', 7),
	(25, 'A combinação de finanças e análise de dados é uma abordagem muito completa.', 8),
	(1, 'A arte digital e curadoria estão excelentes. Parabéns pelo projeto!', 9),
	(2, 'Recursos humanos e tecnologia da informação foram integrados de forma eficiente.', 8);

	-- INSERINDO DADOS NA TABELA LABORATORIO INOVACAO
    
    SELECT * FROM tb_Laboratorio_Inovacao;

	INSERT INTO tb_Laboratorio_Inovacao (Localizacao_Evento, Proposito_Encontro_Mental, Temas_Abordados, Metodo_Sincronizacao_Mental)
	VALUES
	('São Paulo', 'Desenvolvimento de soluções sustentáveis', 'Energias renováveis, Gestão de resíduos', 'Meditação em grupo'),
	('Nova York', 'Inovações tecnológicas e empreendedorismo', 'Inteligência Artificial, Blockchain', 'Sessões de brainstorming'),
	('Londres', 'Promoção da diversidade e inclusão', 'Equidade de gênero, Inclusão racial', 'Workshops de sensibilização'),
	('Tóquio', 'Avanços em pesquisa científica', 'Biologia sintética, Nanotecnologia', 'Sessões de discussão colaborativa'),
	('Berlim', 'Transformação digital e indústria 4.0', 'IoT, Manufatura aditiva', 'Hackathons e prototipagem'),
	('Cidade do Cabo', 'Desenvolvimento de soluções para comunidades locais', 'Educação, Saúde', 'Sessões de cocriação'),
	('Sydney', 'Inovações em entretenimento e mídia', 'Realidade Virtual, Produção cinematográfica', 'Experiências imersivas'),
	('Cingapura', 'Soluções para desafios urbanos', 'Transporte público, Sustentabilidade urbana', 'Simulações de cenários'),
	('Toronto', 'Desenvolvimento de tecnologias limpas', 'Energia solar, Reciclagem', 'Sessões de prototipagem rápida'),
	('Mumbai', 'Inovações em serviços financeiros', 'Fintech, Blockchain', 'Discussões colaborativas sobre tendências'),
	('Paris', 'Desenvolvimento de soluções gastronômicas', 'Culinária molecular, Sustentabilidade alimentar', 'Workshops culinários'),
	('Seul', 'Inovações em educação e aprendizado', 'Educação online, Gamificação', 'Sessões de design thinking educacional'),
	('Amsterdã', 'Promoção do bem-estar e saúde mental', 'Mindfulness, Terapias alternativas', 'Sessões de relaxamento'),
	('Rio de Janeiro', 'Desenvolvimento de soluções para o turismo', 'Turismo sustentável, Experiências culturais', 'Hackathons de turismo'),
	('Pequim', 'Inovações em mobilidade urbana', 'Veículos autônomos, Ciclovias inteligentes', 'Simulações de mobilidade'),
	('Dubai', 'Desenvolvimento de soluções para o clima desértico', 'Energia solar, Conservação de água', 'Sessões de inovação climática'),
	('Los Angeles', 'Inovações em entretenimento e mídia', 'Realidade Aumentada, Produção de streaming', 'Workshops de storytelling'),
	('Barcelona', 'Desenvolvimento de soluções em arquitetura', 'Arquitetura sustentável, Design urbano', 'Sessões de design colaborativo'),
	('Hong Kong', 'Inovações em tecnologia financeira', 'Pagamentos digitais, Segurança cibernética', 'Simulações de segurança financeira'),
	('Estocolmo', 'Desenvolvimento de soluções para o clima frio', 'Aquecimento eficiente, Energia geotérmica', 'Sessões de inovação climática'),
	('Buenos Aires', 'Inovações em arte e cultura', 'Arte digital, Performance urbana', 'Workshops de expressão artística'),
	('Pequim', 'Inovações em tecnologia financeira', 'Pagamentos digitais, Segurança cibernética', 'Simulações de segurança financeira'),
	('Dubai', 'Desenvolvimento de soluções para o clima desértico', 'Energia solar, Conservação de água', 'Sessões de inovação climática'),
	('Los Angeles', 'Inovações em entretenimento e mídia', 'Realidade Aumentada, Produção de streaming', 'Workshops de storytelling'),
	('Barcelona', 'Desenvolvimento de soluções em arquitetura', 'Arquitetura sustentável, Design urbano', 'Sessões de design colaborativo');
	-- MAIS DADOS
	INSERT INTO tb_Laboratorio_Inovacao (Localizacao_Evento, Proposito_Encontro_Mental, Temas_Abordados, Metodo_Sincronizacao_Mental)
	VALUES
	('São Paulo', 'Fomentar a criatividade e colaboração', 'Desenvolvimento Mobile, UI/UX Design', 'Brainstorming e workshops interativos'),
	('Rio de Janeiro', 'Estimular inovações sustentáveis', 'Marketing Digital, Sustentabilidade', 'Sessões de ideação e prototipagem'),
	('Belo Horizonte', 'Explorar novas fronteiras da tecnologia', 'Machine Learning, Programação', 'Hackathons e desafios práticos'),
	('Brasília', 'Promover a integração entre design e arquitetura', 'Design de Interiores, Arquitetura', 'Oficinas de design colaborativo'),
	('Curitiba', 'Incentivar acordos legais inovadores', 'Direito Empresarial, Direito Contratual', 'Simulações e debates legais'),
	('Salvador', 'Investigar psicologia organizacional', 'Psicologia Organizacional, Metodologia de Pesquisa', 'Estudos de caso e análises psicológicas'),
	('Recife', 'Experimentar novos dispositivos eletrônicos', 'Eletrônica, Programação', 'Prototipagem rápida e testes práticos'),
	('Fortaleza', 'Desenvolver estratégias de gerenciamento de crises', 'Gestão de Crises, Comunicação Empresarial', 'Simulações de crises e treinamentos'),
	('Manaus', 'Analisar dados de mercado e insights', 'Pesquisa de Mercado, Análise de Dados', 'Workshops de análise de mercado e coleta de dados'),
	('Porto Alegre', 'Criar jogos educacionais inovadores', 'Desenvolvimento de Jogos, Educação Infantil', 'Desenvolvimento de protótipos e testes com crianças'),
	('Natal', 'Implementar funcionalidades de controle financeiro', 'Finanças Pessoais, Programação', 'Workshops de desenvolvimento e implementação de funcionalidades'),
	('Florianópolis', 'Produzir conteúdo inovador sobre inovação', 'Produção de Áudio, Conteúdo Digital', 'Gravação e edição de episódios inovadores'),
	('Maceió', 'Desenhar logotipos sustentáveis', 'Design Gráfico, Moda, Sustentabilidade', 'Oficinas de design gráfico sustentável'),
	('Porto Velho', 'Desenvolver funcionalidades de saúde mental', 'Saúde Mental, Desenvolvimento Mobile', 'Prototipagem de funcionalidades de apoio emocional'),
	('Campo Grande', 'Elaborar planos de carreira inovadores', 'Recursos Humanos, Tecnologia da Informação', 'Desenvolvimento de planos de carreira e mentoria'),
	('João Pessoa', 'Conduzir oficinas de criatividade', 'Educação Criativa, Psicologia Educacional', 'Atividades práticas e dinâmicas criativas'),
	('Cuiabá', 'Implementar sistemas de controle de estoque avançados', 'Logística, Programação', 'Desenvolvimento e implementação de sistemas de controle'),
	('Teresina', 'Criar guias ilustrados de práticas sustentáveis', 'Ilustração, Meio Ambiente', 'Oficinas de ilustração e criação de guias'),
	('São Luís', 'Elaborar planos de marketing inovadores', 'Marketing Digital, Publicidade', 'Desenvolvimento de estratégias inovadoras de marketing'),
	('Belém', 'Desenvolver aplicativos de receitas saudáveis', 'Culinária, Desenvolvimento Mobile', 'Prototipagem de aplicativos e testes práticos'),
	('Aracaju', 'Produzir curta-metragem sobre inclusão social', 'Produção Audiovisual, Sociologia', 'Roteiro, direção e produção de curta-metragem'),
	('Vitória', 'Realizar auditorias de qualidade em processos', 'Gestão da Qualidade, Auditoria', 'Auditorias práticas e desenvolvimento de relatórios'),
	('Goiania', 'Desenvolver recursos de assistência a idosos', 'Desenvolvimento Mobile, Inteligência Artificial, Atendimento ao Cliente', 'Prototipagem de recursos de assistência virtual'),
	('Palmas', 'Criar campanhas de conscientização sobre saúde mental', 'Marketing Digital, Psicologia, Produção de Conteúdo', 'Desenvolvimento de conteúdo educativo e estratégias de conscientização'),
	('Boa Vista', 'Implementar sistemas de monitoramento ambiental', 'Sustentabilidade, Internet of Things (IoT), Análise de Dados', 'Instalação de sensores e análise de dados ambientais');
	-- INSERINDO IDS ESTRANGEIROS NA TABELA INTERMEDIARIA
	INSERT INTO tb_Conexao_Habilidades (ID_Colaboracao, ID_HabilidadeMental)
	VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10),
	(11, 11),
	(12, 12),
	(13, 13),
	(14, 14),
	(15, 15),
	(16, 16),
	(17, 17),
	(18, 18),
	(19, 19),
	(20, 20),
	(21, 21),
	(22, 22),
	(23, 23),	
	(24, 24),
	(25, 25);
-- MAIS DADOS
INSERT INTO tb_Conexao_Habilidades (ID_Colaboracao, ID_HabilidadeMental)
VALUES
(26, 1),
(26, 2),
(27, 3),
(27, 4),
(28, 5),
(28, 6),
(29, 7),
(29, 8),
(30, 9),
(30, 10),

(31, 11),
(31, 12),
(32, 13),
(32, 14),
(33, 15),
(33, 16),
(34, 17),
(34, 18),
(35, 19),
(35, 20),
(36, 21),
(36, 22),
(37, 23),
(37, 24),
(38, 25),
(38, 1),
(39, 2),
(39, 3),
(40, 4),
(40, 5),
(41, 6),
(41, 7),
(42, 8),
(42, 9),
(43, 10),
(43, 11),
(44, 12),
(44, 13),
(45, 14),
(45, 15),
(46, 16),
(46, 17),
(47, 18),
(47, 19),
(48, 20),
(48, 21),
(49, 22),
(49, 23),
(50, 24),
(50, 25);