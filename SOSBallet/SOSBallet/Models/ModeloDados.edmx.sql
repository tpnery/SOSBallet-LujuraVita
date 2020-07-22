
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/21/2020 00:32:03
-- Generated from EDMX file: C:\Users\Tatiane\Desktop\SOSBallet\SOSBallet\SOSBallet\Models\ModeloDados.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SOSBalletBD];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__Pontuacao__IDBai__5535A963]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PontuacaoSimulado] DROP CONSTRAINT [FK__Pontuacao__IDBai__5535A963];
GO
IF OBJECT_ID(N'[dbo].[FK__Simulado__IDMate__52593CB8]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Simulado] DROP CONSTRAINT [FK__Simulado__IDMate__52593CB8];
GO
IF OBJECT_ID(N'[dbo].[FK__Quiz__IDSapatilh__73BA3083]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Quiz] DROP CONSTRAINT [FK__Quiz__IDSapatilh__73BA3083];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Administrador]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Administrador];
GO
IF OBJECT_ID(N'[dbo].[Alongamento]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Alongamento];
GO
IF OBJECT_ID(N'[dbo].[Bailarino]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Bailarino];
GO
IF OBJECT_ID(N'[dbo].[ControleUso]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ControleUso];
GO
IF OBJECT_ID(N'[dbo].[Materia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Materia];
GO
IF OBJECT_ID(N'[dbo].[PontuacaoSimulado]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PontuacaoSimulado];
GO
IF OBJECT_ID(N'[dbo].[Quiz]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Quiz];
GO
IF OBJECT_ID(N'[dbo].[Sapatilha]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sapatilha];
GO
IF OBJECT_ID(N'[dbo].[Simulado]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Simulado];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Administrador'
CREATE TABLE [dbo].[Administrador] (
    [IDAdm] int IDENTITY(1,1) NOT NULL,
    [Nome] varchar(50)  NOT NULL,
    [Login] varchar(50)  NOT NULL,
    [Senha] varchar(50)  NOT NULL
);
GO

-- Creating table 'Alongamento'
CREATE TABLE [dbo].[Alongamento] (
    [IDAlongamento] int IDENTITY(1,1) NOT NULL,
    [Nivel] int  NULL,
    [NomeExercicio] varchar(30)  NULL,
    [DescExercicio] varchar(50)  NULL
);
GO

-- Creating table 'Bailarino'
CREATE TABLE [dbo].[Bailarino] (
    [IDBailarino] int IDENTITY(1,1) NOT NULL,
    [Nome] varchar(50)  NULL,
    [Login] varchar(20)  NULL,
    [Senha] varchar(50)  NULL,
    [ConfirmarSenha] varchar(50)  NULL,
    [NivelAlongamento] int  NULL
);
GO

-- Creating table 'ControleUso'
CREATE TABLE [dbo].[ControleUso] (
    [IDControle] int IDENTITY(1,1) NOT NULL,
    [TempoNaSemana] int  NULL,
    [Plissado] varchar(50)  NULL,
    [Sola] varchar(50)  NULL,
    [Aproveitamento] varchar(5)  NULL
);
GO

-- Creating table 'Materia'
CREATE TABLE [dbo].[Materia] (
    [IDMateria] int IDENTITY(1,1) NOT NULL,
    [Nome] varchar(50)  NULL,
    [Capítulo] varchar(30)  NULL,
    [Pagina] varchar(30)  NULL
);
GO

-- Creating table 'PontuacaoSimulado'
CREATE TABLE [dbo].[PontuacaoSimulado] (
    [IDPontuacao] int IDENTITY(1,1) NOT NULL,
    [Potuacao] int  NULL,
    [IDBailarino] int  NULL
);
GO

-- Creating table 'Quiz'
CREATE TABLE [dbo].[Quiz] (
    [IDQuiz] int IDENTITY(1,1) NOT NULL,
    [TipoPe] varchar(50)  NULL,
    [LarguraPe] varchar(50)  NULL,
    [TempoNasPontas] varchar(50)  NULL,
    [DuracaoAnterior] varchar(50)  NULL,
    [ColoPe] varchar(50)  NULL,
    [Tamanho] int  NULL,
    [IDSapatilha] int  NULL
);
GO

-- Creating table 'Sapatilha'
CREATE TABLE [dbo].[Sapatilha] (
    [IDSapatilha] int IDENTITY(1,1) NOT NULL,
    [Descricao] varchar(100)  NULL,
    [TipoPe] varchar(50)  NULL,
    [LarguraPe] varchar(50)  NULL,
    [TempoNasPontas] varchar(50)  NULL,
    [DuracaoAnterior] varchar(50)  NULL,
    [ColoPe] varchar(50)  NULL,
    [Tamanho] int  NULL
);
GO

-- Creating table 'Simulado'
CREATE TABLE [dbo].[Simulado] (
    [IDSimulado] int IDENTITY(1,1) NOT NULL,
    [Pergunta] varchar(100)  NULL,
    [Resposta] varchar(100)  NULL,
    [IDMateria] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IDAdm] in table 'Administrador'
ALTER TABLE [dbo].[Administrador]
ADD CONSTRAINT [PK_Administrador]
    PRIMARY KEY CLUSTERED ([IDAdm] ASC);
GO

-- Creating primary key on [IDAlongamento] in table 'Alongamento'
ALTER TABLE [dbo].[Alongamento]
ADD CONSTRAINT [PK_Alongamento]
    PRIMARY KEY CLUSTERED ([IDAlongamento] ASC);
GO

-- Creating primary key on [IDBailarino] in table 'Bailarino'
ALTER TABLE [dbo].[Bailarino]
ADD CONSTRAINT [PK_Bailarino]
    PRIMARY KEY CLUSTERED ([IDBailarino] ASC);
GO

-- Creating primary key on [IDControle] in table 'ControleUso'
ALTER TABLE [dbo].[ControleUso]
ADD CONSTRAINT [PK_ControleUso]
    PRIMARY KEY CLUSTERED ([IDControle] ASC);
GO

-- Creating primary key on [IDMateria] in table 'Materia'
ALTER TABLE [dbo].[Materia]
ADD CONSTRAINT [PK_Materia]
    PRIMARY KEY CLUSTERED ([IDMateria] ASC);
GO

-- Creating primary key on [IDPontuacao] in table 'PontuacaoSimulado'
ALTER TABLE [dbo].[PontuacaoSimulado]
ADD CONSTRAINT [PK_PontuacaoSimulado]
    PRIMARY KEY CLUSTERED ([IDPontuacao] ASC);
GO

-- Creating primary key on [IDQuiz] in table 'Quiz'
ALTER TABLE [dbo].[Quiz]
ADD CONSTRAINT [PK_Quiz]
    PRIMARY KEY CLUSTERED ([IDQuiz] ASC);
GO

-- Creating primary key on [IDSapatilha] in table 'Sapatilha'
ALTER TABLE [dbo].[Sapatilha]
ADD CONSTRAINT [PK_Sapatilha]
    PRIMARY KEY CLUSTERED ([IDSapatilha] ASC);
GO

-- Creating primary key on [IDSimulado] in table 'Simulado'
ALTER TABLE [dbo].[Simulado]
ADD CONSTRAINT [PK_Simulado]
    PRIMARY KEY CLUSTERED ([IDSimulado] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [IDBailarino] in table 'PontuacaoSimulado'
ALTER TABLE [dbo].[PontuacaoSimulado]
ADD CONSTRAINT [FK__Pontuacao__IDBai__5535A963]
    FOREIGN KEY ([IDBailarino])
    REFERENCES [dbo].[Bailarino]
        ([IDBailarino])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Pontuacao__IDBai__5535A963'
CREATE INDEX [IX_FK__Pontuacao__IDBai__5535A963]
ON [dbo].[PontuacaoSimulado]
    ([IDBailarino]);
GO

-- Creating foreign key on [IDMateria] in table 'Simulado'
ALTER TABLE [dbo].[Simulado]
ADD CONSTRAINT [FK__Simulado__IDMate__52593CB8]
    FOREIGN KEY ([IDMateria])
    REFERENCES [dbo].[Materia]
        ([IDMateria])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Simulado__IDMate__52593CB8'
CREATE INDEX [IX_FK__Simulado__IDMate__52593CB8]
ON [dbo].[Simulado]
    ([IDMateria]);
GO

-- Creating foreign key on [IDSapatilha] in table 'Quiz'
ALTER TABLE [dbo].[Quiz]
ADD CONSTRAINT [FK__Quiz__IDSapatilh__73BA3083]
    FOREIGN KEY ([IDSapatilha])
    REFERENCES [dbo].[Sapatilha]
        ([IDSapatilha])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Quiz__IDSapatilh__73BA3083'
CREATE INDEX [IX_FK__Quiz__IDSapatilh__73BA3083]
ON [dbo].[Quiz]
    ([IDSapatilha]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------