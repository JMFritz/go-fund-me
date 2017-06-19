USE [charity]
GO
/****** Object:  Table [dbo].[campaigns]    Script Date: 6/18/2017 11:00:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[campaigns](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NULL,
	[goal_amt] [int] NULL,
	[current_amt] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[category_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[categories]    Script Date: 6/18/2017 11:00:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[roles]    Script Date: 6/18/2017 11:00:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 6/18/2017 11:00:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[name] [varchar](255) NULL,
	[login] [varchar](255) NULL,
	[password] [varchar](100) NULL,
	[address] [varchar](255) NULL,
	[phone_number] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users_donator_campaigns]    Script Date: 6/18/2017 11:00:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_donator_campaigns](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[campaign_id] [int] NULL,
	[user_id] [int] NULL
) ON [PRIMARY]

GO
