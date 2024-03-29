USE [ShopOnline]
GO
/****** Object:  Table [dbo].[notification]    Script Date: 4/20/2022 9:57:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notification](
	[id] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[email] [nvarchar](50) NULL,
	[dateNo] [datetime] NULL,
 CONSTRAINT [PK_notification] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[role]    Script Date: 4/20/2022 9:57:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[roleID] [int] NOT NULL,
	[roleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 4/20/2022 9:57:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[status] [bit] NULL,
	[roleID] [int] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_role] FOREIGN KEY([roleID])
REFERENCES [dbo].[role] ([roleID])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_role]
GO
