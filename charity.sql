
CREATE TABLE [dbo].[campaigns](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[description] [varchar](max) NULL,
	[goal_amt] [int] NULL,
	[current_amt] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[category_id] [int] NULL,
	[owner_id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[donations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[campaign_id] [int] NULL,
	[donation_amount] [int] NULL,
	[donation_date] [datetime] NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [varchar](50) NULL
) ON [PRIMARY]

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
SET IDENTITY_INSERT [dbo].[campaigns] ON 

INSERT [dbo].[campaigns] ([id], [name], [description], [goal_amt], [current_amt], [start_date], [end_date], [category_id], [owner_id]) VALUES (1, N'Jun''s Broken Foot', N'Jun broke his foot', 50, 101, CAST(N'2017-06-20T00:00:00.000' AS DateTime), CAST(N'2017-06-25T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[campaigns] ([id], [name], [description], [goal_amt], [current_amt], [start_date], [end_date], [category_id], [owner_id]) VALUES (2, N'Epicodus Course', N'I need a new mac book!', 5000, 0, CAST(N'2017-06-20T00:00:00.000' AS DateTime), CAST(N'2017-06-25T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[campaigns] ([id], [name], [description], [goal_amt], [current_amt], [start_date], [end_date], [category_id], [owner_id]) VALUES (3, N'My Dog Needs New Teeth', N'a;skfjaskdjfasdklfnalksdf;lkansdkl;faklsdf;lakshdfklnaskldfnlakshdfklasdfasdfasdfasdfasdfa;skfjaskdjfasdklfnalksdf;lkansdkl;faklsdf;lakshdfklnaskldfnlakshdfklasdfasdfasdfasdfasdfa;skfjaskdjfasdklfnalksdf;lkansdkl;faklsdf;lakshdfklnaskldfnlakshdfklasdfasdfasdfasdfasdfa;skfjaskdjfasdklfnalksdf;lkansdkl;faklsdf;lakshdfklnaskldfnlakshdfklasdfasdfasdfasdfasdfa;skfjaskdjfasdklfnalksdf;lkansdkl;faklsdf;lakshdfklnaskldfnlakshdfklasdfasdfasdfasdfasdfa;skfjaskdjfasdklfnalksdf;lkansdkl;faklsdf;lakshdfklnaskldfnlakshdfklasdfasdfasdfasdfasdfa;skfjaskdjfasdklfnalksdf;lkansdkl;faklsdf;lakshdfklnaskldfnlakshdfklasdfasdfasdfasdfasdf', 1000, 1, CAST(N'2017-06-20T00:00:00.000' AS DateTime), CAST(N'2017-06-21T00:00:00.000' AS DateTime), 3, 9)
SET IDENTITY_INSERT [dbo].[campaigns] OFF
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [name]) VALUES (1, N'medical')
INSERT [dbo].[categories] ([id], [name]) VALUES (2, N'education')
INSERT [dbo].[categories] ([id], [name]) VALUES (3, N'animals')
INSERT [dbo].[categories] ([id], [name]) VALUES (4, N'emergencies')
INSERT [dbo].[categories] ([id], [name]) VALUES (5, N'art')
INSERT [dbo].[categories] ([id], [name]) VALUES (6, N'charity')
SET IDENTITY_INSERT [dbo].[categories] OFF
SET IDENTITY_INSERT [dbo].[donations] ON 

INSERT [dbo].[donations] ([id], [user_id], [campaign_id], [donation_amount], [donation_date]) VALUES (1, 1, 1, 50, CAST(N'2017-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[donations] ([id], [user_id], [campaign_id], [donation_amount], [donation_date]) VALUES (2, 2, 1, 123, CAST(N'2017-06-20T16:24:32.477' AS DateTime))
INSERT [dbo].[donations] ([id], [user_id], [campaign_id], [donation_amount], [donation_date]) VALUES (3, 2, 1, 134142, CAST(N'2017-06-20T17:09:03.907' AS DateTime))
INSERT [dbo].[donations] ([id], [user_id], [campaign_id], [donation_amount], [donation_date]) VALUES (4, 2, 1, 100, CAST(N'2017-06-20T17:13:22.773' AS DateTime))
INSERT [dbo].[donations] ([id], [user_id], [campaign_id], [donation_amount], [donation_date]) VALUES (6, 9, 3, 1, CAST(N'2017-06-20T17:49:24.293' AS DateTime))
INSERT [dbo].[donations] ([id], [user_id], [campaign_id], [donation_amount], [donation_date]) VALUES (5, 2, 1, 1, CAST(N'2017-06-20T17:20:29.163' AS DateTime))
SET IDENTITY_INSERT [dbo].[donations] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [role_id], [name], [login], [password], [address], [phone_number], [email]) VALUES (1, 1, N'a', N'a', N'b', N'a', N'asdf', N'asdf')
INSERT [dbo].[users] ([id], [role_id], [name], [login], [password], [address], [phone_number], [email]) VALUES (2, 1, N'a', N'a', N'b', N'a', N'a', N'a')
INSERT [dbo].[users] ([id], [role_id], [name], [login], [password], [address], [phone_number], [email]) VALUES (3, 1, N'Lena', N'lena123', N'123', N'asdfasdf', N'123123', N'asdfsdaf')
INSERT [dbo].[users] ([id], [role_id], [name], [login], [password], [address], [phone_number], [email]) VALUES (4, 1, N'daniela', N'd123', N'123', N'asdf', N'asdfasd', N'afsdf')
INSERT [dbo].[users] ([id], [role_id], [name], [login], [password], [address], [phone_number], [email]) VALUES (5, 1, N'asdf', N'asdf', N'asdf', N'asdf', N'asdf', N'asdf')
INSERT [dbo].[users] ([id], [role_id], [name], [login], [password], [address], [phone_number], [email]) VALUES (6, 1, N'sfds', N'asdf', N'asdf', N'asdf', N'asdf', N'asdf')
INSERT [dbo].[users] ([id], [role_id], [name], [login], [password], [address], [phone_number], [email]) VALUES (7, 1, N'asdf', N'asdfasdf', N'asdf', N'asdf', N'asdf', N'asdf')
INSERT [dbo].[users] ([id], [role_id], [name], [login], [password], [address], [phone_number], [email]) VALUES (8, 1, N'Lena', N'b', N'a', N'asdfsa', N'asdfs', N'asdfsdf')
INSERT [dbo].[users] ([id], [role_id], [name], [login], [password], [address], [phone_number], [email]) VALUES (9, 1, N'asdfasd', N'a', N'b', N'asdf', N'asdf', N'asdf')
SET IDENTITY_INSERT [dbo].[users] OFF
USE [master]
GO
ALTER DATABASE [charity] SET  READ_WRITE 
GO
