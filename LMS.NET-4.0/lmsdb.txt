CREATE TABLE [dbo].[Accounts] (
    [id]     VARCHAR (10) NOT NULL,
    [pass]   VARCHAR (10) NOT NULL,
    [roll]   VARCHAR (10) NULL,
    [name]   VARCHAR (20) NULL,
    [course] VARCHAR (10) NULL,
    [branch] VARCHAR (10) NULL,
    [book1]  VARCHAR (30) NULL,
    [book2]  VARCHAR (30) NULL,
    [book3]  VARCHAR (30) NULL,
    [type]   VARCHAR (10) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [dbo].[Book] (
    [id]        INT          NOT NULL,
    [name]      VARCHAR (50) NOT NULL,
    [author]    VARCHAR (50) NOT NULL,
    [copies]    INT          NOT NULL,
    [available] INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

