USE [SkillTracker]
GO
CREATE TABLE Associate
(
Associate_Id INT PRIMARY KEY NOT NULL
,Name VARCHAR(50) NOT NULL
,Email VARCHAR(50) NOT NULL
,Mobile  VARCHAR(10) NOT NULL
,Pic VARCHAR(MAX)
,Gender VARCHAR(10) NOT NULL 
,Status_Green BIT NOT NULL DEFAULT 0
,Status_Blue BIT NOT NULL DEFAULT 0
,Status_Red BIT NOT NULL DEFAULT 0
,Level_1 BIT NOT NULL DEFAULT 0
,Level_2 BIT NOT NULL DEFAULT 0
,Level_3 BIT NOT NULL DEFAULT 0
,Remark VARCHAR(100)
,Strength VARCHAR(500)
,Weakness VARCHAR(500)
,Other VARCHAR(200)
)
GO
CREATE TABLE Skills
(
Skill_Id INT PRIMARY KEY IDENTITY(1,1)
,Skill_Name VARCHAR(50)
)
GO
CREATE TABLE Associate_Skills
(
  [Id] INT PRIMARY KEY IDENTITY(1,1),
  Associate_Id INT NOT NULL
 ,Skill_Id INT NOT NULL
 ,Rating INT DEFAULT 0
)
GO
CREATE TABLE [User](
	[user_id] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](50) NOT NULL,
	[user_email] [varchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL
)

GO
ALTER TABLE [dbo].[Associate_Skills]  WITH CHECK ADD  CONSTRAINT [FK_Associate_Skills_Associate] FOREIGN KEY([Associate_Id])
REFERENCES [dbo].[Associate] ([Associate_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Associate_Skills]  WITH CHECK ADD  CONSTRAINT [FK_Associate_Skills_Skills] FOREIGN KEY([Skill_Id])
REFERENCES [dbo].[Skills] ([Skill_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO


