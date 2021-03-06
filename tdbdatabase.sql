USE [TDB]
GO
/****** Object:  Table [dbo].[data_grade]    Script Date: 5/8/2020 2:16:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_grade](
	[grade_id] [varchar](10) NOT NULL,
	[major] [varchar](10) NULL,
	[grade] [varchar](10) NULL,
	[intro] [int] NULL,
	[compro] [int] NULL,
	[logic] [int] NULL,
	[funda] [int] NULL,
	[softcon] [int] NULL,
	[datastuc] [int] NULL,
	[ppl] [int] NULL,
	[databasedb] [int] NULL,
	[algor] [int] NULL,
	[asmby] [int] NULL,
	[automa] [int] NULL,
	[os] [int] NULL,
	[sa] [int] NULL,
	[protocal] [int] NULL,
	[combus] [int] NULL,
	[mobileapp] [int] NULL,
	[image] [int] NULL,
	[ai] [int] NULL,
	[nlp] [int] NULL,
	[iot] [int] NULL,
	[webapp] [int] NULL,
	[hci] [int] NULL,
	[math] [int] NULL,
	[eng] [int] NULL,
	[user_id] [varchar](10) NULL,
 CONSTRAINT [PK_data_grade] PRIMARY KEY CLUSTERED 
(
	[grade_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data_position]    Script Date: 5/8/2020 2:16:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_position](
	[Position_id] [varchar](10) NOT NULL,
	[PositionName] [varchar](20) NULL,
 CONSTRAINT [PK_data_position] PRIMARY KEY CLUSTERED 
(
	[Position_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data_postjobs]    Script Date: 5/8/2020 2:16:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_postjobs](
	[Job_id] [varchar](50) NOT NULL,
	[NameJob] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [char](10) NOT NULL,
	[Position] [varchar](50) NOT NULL,
	[Salary] [varchar](50) NOT NULL,
	[Property] [varchar](50) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[Latitude] [varchar](50) NOT NULL,
	[Longitude] [varchar](50) NOT NULL,
	[Releasedate] [date] NULL,
	[Status] [varchar](10) NULL,
	[SubPosition_id] [varchar](10) NULL,
	[user_id] [varchar](10) NULL,
 CONSTRAINT [PK_data_postjobs] PRIMARY KEY CLUSTERED 
(
	[Job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data_subposition]    Script Date: 5/8/2020 2:16:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_subposition](
	[SubPosition_id] [varchar](10) NOT NULL,
	[SubPositionName] [varchar](30) NULL,
	[Position_id] [varchar](10) NULL,
 CONSTRAINT [PK_data_subposition] PRIMARY KEY CLUSTERED 
(
	[SubPosition_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data_user]    Script Date: 5/8/2020 2:16:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_user](
	[user_id] [varchar](10) NOT NULL,
	[username] [varchar](20) NULL,
	[password] [varchar](20) NULL,
	[firstname] [varchar](30) NULL,
	[lastname] [varchar](30) NULL,
	[gender] [varchar](10) NULL,
	[phone] [varchar](10) NULL,
	[email] [varchar](40) NULL,
	[address] [varchar](60) NULL,
	[province] [varchar](40) NULL,
	[usertype_id] [varchar](10) NULL,
 CONSTRAINT [PK_data_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data_userfavoritejobs]    Script Date: 5/8/2020 2:16:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_userfavoritejobs](
	[userfavoritejobs_id] [varchar](10) NOT NULL,
	[user_id] [varchar](10) NULL,
	[Job_id] [varchar](50) NULL,
 CONSTRAINT [PK_data_userfavoritejobs] PRIMARY KEY CLUSTERED 
(
	[userfavoritejobs_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data_usertype]    Script Date: 5/8/2020 2:16:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_usertype](
	[usertype_id] [varchar](10) NOT NULL,
	[usertype] [varchar](10) NULL,
 CONSTRAINT [PK_data_usertype] PRIMARY KEY CLUSTERED 
(
	[usertype_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G001', N'cs', N'2.00-2.50', 5, 4, 4, 1, 4, 2, 1, 5, 2, 2, 1, 5, 1, 1, 2, 2, 4, 1, 0, 0, 0, 0, 0, 0, N'U002')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G002', N'cs', N'2.00-2.50', 4, 5, 2, 1, 3, 3, 2, 2, 1, 5, 2, 2, 2, 2, 4, 1, 1, 2, 0, 0, 0, 0, 0, 0, N'S003')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G003', N'cs', N'2.51-3.00', 5, 4, 3, 1, 2, 4, 4, 1, 4, 4, 5, 1, 5, 5, 5, 4, 2, 5, 5, 5, 0, 5, 1, 4, N'S004')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G004', N'cs', N'2.00-2.50', 4, 2, 2, 4, 4, 1, 5, 4, 5, 1, 4, 4, 3, 4, 1, 5, 5, 4, 4, 4, 4, 4, 3, 3, N'S005')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G005', N'cs', N'2.00-2.50', 1, 5, 1, 2, 3, 5, 3, 5, 2, 2, 1, 5, 1, 1, 2, 2, 3, 3, 0, 0, 0, 0, 0, 0, N'S006')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G006', N'cs', N'2.00-2.50', 2, 1, 2, 4, 4, 2, 2, 2, 3, 3, 2, 2, 4, 2, 5, 3, 2, 4, 0, 0, 0, 0, 0, 0, N'S007')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G007', N'it', N'3.01-3.50', 3, 2, 3, 3, 2, 3, 1, 3, 2, 5, 4, 1, 5, 5, 4, 2, 5, 2, 4, 4, 4, 4, 3, 3, N'U004')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G008', N'cs', N'2.00-2.50', 5, 5, 5, 4, 3, 2, 4, 5, 5, 4, 1, 4, 4, 4, 1, 1, 4, 3, 1, 1, 1, 2, 2, 3, N'U001')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G009', N'it', N'2.51-3.00', 5, 5, 0, 5, 4, 5, 5, 2, 4, 1, 3, 5, 1, 1, 2, 4, 1, 5, 1, 4, 5, 2, 4, 2, N'U006')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G010', N'cs', N'2.51-3.00', 4, 5, 1, 5, 2, 1, 2, 1, 1, 2, 5, 2, 2, 2, 3, 5, 2, 2, 1, 4, 5, 2, 4, 2, N'U007')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G011', N'cs', N'2.51-3.00', 3, 4, 5, 1, 1, 2, 1, 4, 2, 2, 4, 1, 3, 5, 2, 2, 3, 1, 5, 5, 0, 0, 1, 3, N'U008')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G012', N'cs', N'2.00-2.50', 4, 3, 5, 2, 2, 3, 2, 3, 3, 4, 2, 5, 1, 1, 4, 2, 1, 5, 0, 0, 0, 0, 0, 0, N'U010')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G013', N'cs', N'2.00-2.50', 2, 4, 2, 0, 3, 5, 3, 2, 2, 2, 5, 2, 4, 2, 5, 5, 2, 2, 0, 0, 0, 0, 0, 0, N'U011')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G015', N'cs', N'2.00-2.50', 2, 3, 2, 3, 4, 2, 5, 2, 5, 1, 1, 4, 2, 4, 1, 3, 2, 4, 0, 0, 0, 0, 0, 0, N'U013')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G016', N'cs', N'2.51-3.00', 5, 4, 5, 1, 4, 3, 3, 1, 5, 5, 1, 3, 5, 3, 0, 3, 0, 0, 5, 5, 0, 5, 1, 3, N'U022')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G017', N'cs', N'2.00-2.50', 3, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 3, 4, 4, 4, 3, 4, 0, 0, 0, 4, 4, 4, N'U025')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G018', N'it', N'2.00-2.50', 5, 5, 0, 5, 5, 5, 5, 5, 0, 0, 0, 3, 3, 5, 3, 5, 2, 1, 0, 4, 5, 2, 4, 2, N'U027')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G019', N'it', N'2.00-2.50', 2, 4, 0, 2, 4, 3, 4, 3, 0, 0, 0, 4, 4, 3, 4, 4, 4, 3, 0, 3, 3, 4, 2, 2, N'U028')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G020', N'cs', N'2.00-2.50', 5, 2, 0, 1, 5, 2, 2, 3, 3, 2, 3, 3, 3, 4, 2, 3, 3, 3, 3, 2, 3, 2, 3, 2, N'U029')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G021', N'it', N'2.00-2.50', 4, 3, 0, 3, 2, 4, 3, 2, 0, 0, 0, 4, 5, 3, 2, 5, 1, 1, 0, 1, 2, 1, 1, 2, N'U030')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G022', N'it', N'2.00-2.50', 4, 3, 0, 4, 3, 4, 3, 3, 0, 0, 0, 4, 5, 4, 5, 3, 3, 4, 0, 3, 3, 4, 3, 2, N'U031')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G023', N'it', N'2.00-2.50', 3, 2, 0, 0, 2, 1, 2, 2, 0, 0, 0, 4, 5, 0, 4, 0, 4, 4, 0, 4, 0, 3, 3, 4, N'U032')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G024', N'cs', N'2.00-2.50', 2, 2, 0, 2, 3, 2, 5, 3, 5, 5, 5, 2, 3, 2, 4, 5, 3, 3, 3, 2, 3, 2, 3, 2, N'U033')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G025', N'cs', N'2.00-2.50', 3, 3, 0, 3, 3, 3, 3, 4, 3, 4, 3, 3, 4, 3, 3, 1, 1, 3, 1, 2, 1, 1, 1, 4, N'U034')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G026', N'cs', N'2.00-2.50', 2, 2, 0, 2, 2, 1, 2, 3, 2, 2, 5, 4, 3, 2, 4, 3, 2, 2, 3, 5, 2, 5, 2, 4, N'U035')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G027', N'cs', N'2.00-2.50', 3, 3, 0, 3, 3, 3, 3, 2, 4, 4, 5, 5, 3, 4, 3, 0, 4, 4, 0, 4, 0, 0, 3, 3, N'U036')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G028', N'cs', N'2.00-2.50', 5, 5, 5, 3, 3, 3, 3, 2, 5, 5, 1, 5, 5, 3, 0, 3, 0, 0, 5, 5, 0, 5, 1, 4, N'U038')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G029', N'it', N'2.00-2.50', 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 3, 0, 5, 3, 5, 2, 1, 0, 4, 5, 2, 4, 2, N'U040')
INSERT [dbo].[data_grade] ([grade_id], [major], [grade], [intro], [compro], [logic], [funda], [softcon], [datastuc], [ppl], [databasedb], [algor], [asmby], [automa], [os], [sa], [protocal], [combus], [mobileapp], [image], [ai], [nlp], [iot], [webapp], [hci], [math], [eng], [user_id]) VALUES (N'G030', N'cs', N'2.00-2.50', 2, 2, 4, 2, 3, 2, 5, 3, 5, 5, 5, 2, 3, 2, 4, 5, 3, 3, 4, 2, 3, 2, 3, 2, N'U041')
INSERT [dbo].[data_position] ([Position_id], [PositionName]) VALUES (N'P001', N'Developer')
INSERT [dbo].[data_position] ([Position_id], [PositionName]) VALUES (N'P002', N'Network')
INSERT [dbo].[data_position] ([Position_id], [PositionName]) VALUES (N'P003', N'Tester')
INSERT [dbo].[data_position] ([Position_id], [PositionName]) VALUES (N'P004', N'Web Developer')
INSERT [dbo].[data_position] ([Position_id], [PositionName]) VALUES (N'P005', N'Data Analyst')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K001', N'System Engineer', N'NGTNetwork@outlook.com', N'0633040976', N'Hardware', N'20,000-25,000', N'Hardware and software implementation', N'977 Phloen Chit Rd, Khwaeng Lumphini, Khet Pathum Wan, Krung Thep Maha Nakhon 10330, Thailand', N'13.745785921444169', N'100.54241776015627', CAST(N'2020-04-17' AS Date), N'open', N'SP001', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K002', N'IT Support (PMT - Chachoengsao)', N'gg@outlook.com', N'0845765125', N'Network', N'20,000-25,000', N'ดูแลระบบ Network ให้แก่บริษัท', N'154 พระรามที่ 1 Khwaeng Wang Mai, Khet Pathum Wan, Krung Thep Maha Nakhon 10330, Thailand', N'13.743117987567784', N'100.5279982044922', CAST(N'2020-04-17' AS Date), N'open', N'SP009', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K003', N'UX Designer (SCG affiliate company)', N'lndata@gmail.com', N'1980240256', N'UI/UX', N'20,000-25,000', N'UI designer for Website', N'463/1 ถนน รามคำแหง Khwaeng Hua Mak, Khet Bang Kapi, Krung Thep Maha Nakhon 10240, Thailand', N'13.756457353006018', N'100.65444044553936', CAST(N'2020-04-17' AS Date), N'close', N'SP014', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K004', N'Kunakorn Town', N'kunakorn@outlook.com', N'0257854523', N'SEO', N'20,000-25,000', N'SEO สำหรับข้อมูลเว็ป', N'67/62 Sawankhalok 1, Khwaeng Suan Chitlada, Khet Dusit, Krung Thep Maha Nakhon 10300, Thailand', N'13.759125134883403', N'100.51975845839846', CAST(N'2020-04-17' AS Date), N'open', N'SP010', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K005', N'gogo farm', N'goog@outlook.com', N'0574854569', N'IT Consultant', N'20,000-25,000', N'ปรึกษา it', N'88 ถนน สวนผัก Khwaeng Chim Phli, Khet Taling Chan, Krung Thep Maha Nakhon 10170, Thailand', N'13.797804551345402', N'100.4291212513672', CAST(N'2020-04-18' AS Date), N'open', N'SP001', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K006', N'ego tech', N'ego@outlook.com', N'0775458696', N'Programmer', N'20,000-25,000', N'Programmer', N'ห้างเซ็นทรัลเวิลด์ Khet Pathum Wan, Krung Thep Maha Nakhon 10330, Thailand', N'13.747119876986853', N'100.54035782363283', CAST(N'2020-04-18' AS Date), N'close', N'SP001', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K007', N'mobo Network', N'mobo@outlook.com', N'0684478965', N'Application Network', N'20,000-25,000', N'ทดสอบ ออกแบบระบบ', N'อาคาร สยามเซ็นเตอร์ ห้อง212 Rama I Rd, Khwaeng Pathum Wan, Khet Pathum Wan, Krung Thep Maha Nakhon 10330, Thailand', N'13.746452900165206', N'100.5328047230469', CAST(N'2020-04-18' AS Date), N'open', N'SP004', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K008', N'TDB', N'tdb@outlook.com', N'0684478965', N'Software', N'20,000-25,000', N'ทดสอบ ออกแบบระบบ', N'236 Phlap Phla Chai Rd, Khwaeng Wat Thepsirin, Khet Pom Prap Sattru Phai, Krung Thep Maha Nakhon 10100, Thailand', N'13.747119876986853', N'100.51220535781252', CAST(N'2020-04-18' AS Date), N'open', N'SP003', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K009', N'TDB', N'NGTNetwork@outlook.com', N'0684478965', N'Network', N'20,000-25,000', N'ทดสอบ ออกแบบระบบ', N'Unnamed Road, Tambon Nong Nok Khai, Amphoe Krathum Baen, Chang Wat Samut Sakhon 74110, Thailand', N'13.661064215319428', N'100.19154190566408', CAST(N'2020-04-18' AS Date), N'close', N'SP009', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K010', N'First IT', N'NGTNetwork@outlook.com', N'0684478965', N'Data Science', N'20,000-25,000', N'ทดสอบ ออกแบบระบบ IoT', N'699 Maitri Chit Rd, Khwaeng Pom Prap, Khet Pom Prap Sattru Phai, Krung Thep Maha Nakhon 10100, Thailand', N'13.739783027496156', N'100.51495193984377', CAST(N'2020-04-18' AS Date), N'close', N'SP016', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K011', N'Business Analyst (Data Management)', N'NGTNetwork@outlook.com', N'0684478965', N'Database', N'20,000-25,000', N'www.boonrawd.co.th', N'2/11 ซอย 1 Tambon Thung Suk La, Amphoe Si Racha, Chang Wat Chon Buri 20230, Thailand', N'13.099256172649284', N'100.92479347731935', CAST(N'2020-04-18' AS Date), N'open', N'SP017', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K012', N'Big Data Engineer / Data Architect', N'NGTNetwork@outlook.com', N'0684478965', N'Network', N'20,000-25,000', N'Muang Thai Life Assurance Public Company Limited', N'9 MU 4, Sub District Naklua, District Bang Lamung, Province Chon Buri, 20150, ตำบล หนองปลาไหล อำเภอบางละมุง ชลบุรี 20150, Thailand', N'12.986892340747334', N'100.93966065100062', CAST(N'2020-04-18' AS Date), N'open', N'SP009', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K013', N'Big Data', N'delson.4d3l@gmail.com', N'0633040976', N'Data Science', N'40,000-50,000', N'big datascience', N'Unnamed Road, Tambon Bang Phra, Amphoe Si Racha, Chang Wat Chon Buri 20110, Thailand', N'13.2147221', N'101.0560564', CAST(N'2020-04-18' AS Date), N'open', N'SP016', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K014', N'Information System', N'delson.4d3l@gmail.com', N'0633040976', N'MIS', N'20,000-25,000', N'Management Information System', N'Unnamed Road, Tambon Mueang Yang, Amphoe Chamni, Chang Wat Buri Ram 31000, Thailand', N'14.831706232458087', N'102.91795825824444', CAST(N'2020-04-18' AS Date), N'open', N'SP018', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K015', N'IT Infrastructure Support Engineer', N'NGTNetwork@outlook.com', N'0684478965', N'SEO', N'20,000-25,000', N'ทดสอบ ออกแบบระบบ', N'Unnamed Road, Muang Pattaya, Amphoe Bang Lamung, Chang Wat Chon Buri 20150, Thailand', N'12.939382971614616', N'100.93585520914311', CAST(N'2020-04-18' AS Date), N'open', N'SP010', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K017', N'IT Infrastructure Support Engineer', N'NGTNetwork@outlook.com', N'0684478965', N'Software', N'20,000-25,000', N'ทดสอบ ออกแบบระบบ IoT', N'8 ถนน เพชรเกษม 110 Khwaeng Nong Khang Phlu, Khet Nong Khaem, Krung Thep Maha Nakhon 10160, Thailand', N'13.7244416', N'100.3529036', CAST(N'2020-04-19' AS Date), N'open', NULL, N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K019', N'IT Infrastructure Support Engineer', N'NGTNetwork@outlook.com', N'0684478965', N'งานดูแลระบบ Network', N'20,000-25,000', N'ทดสอบ ออกแบบระบบ IoT', N'293/3, Surawong road., Bangrak, Khet Bangrak, Bangkok, 10500, แขวง สี่พระยา เขตบางรัก กรุงเทพมหานคร 10500, Thailand', N'13.728443808288647', N'100.52525162246096', CAST(N'2020-04-19' AS Date), N'close', NULL, N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K020', N'Information / Technology / Engineering ', N'NGTNetwork@outlook.com', N'0684478965', N'test', N'20,000-25,000', N'ทดสอบ ออกแบบระบบ IoT', N'8 ถนน เพชรเกษม 110 Khwaeng Nong Khang Phlu, Khet Nong Khaem, Krung Thep Maha Nakhon 10160, Thailand', N'13.7244416', N'100.3529036', CAST(N'2020-04-19' AS Date), N'close', NULL, N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K021', N'front end', N'NGTNetwork@outlook.com', N'0684478965', N'Mobile , Wireless Communications', N'20,000-25,000', N'ทดสอบ ออกแบบระบบ IoT', N'152 Soi Sub Anong, Khwaeng Bang Phai, Khet Bang Khae, Krung Thep Maha Nakhon 10160, Thailand', N'13.731111909206913', N'100.4009687855469', CAST(N'2020-04-19' AS Date), N'close', N'SP002', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K022', N'front end', N'NGTNetwork@outlook.com', N'0684478965', N'Mobile , Wireless Communications', N'20,000-25,000', N'ทดสอบ ออกแบบระบบ IoT', N'28/7 ถนน พุทธมณฑลสาย 1 Khwaeng Bang Duan, Khet Phasi Charoen, Krung Thep Maha Nakhon 10160, Thailand', N'13.729110836364082', N'100.42500137832033', CAST(N'2020-04-19' AS Date), N'open', N'SP002', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K023', N'back end', N'NGTNetwork@outlook.com', N'0684478965', N'php', N'20,000-25,000', N'ทดสอบ ออกแบบระบบ IoT', N'100 Thanon Chroen Rat, Khwaeng Khlong San, Khet Khlong San, Krung Thep Maha Nakhon 10600, Thailand', N'13.726442712680132', N'100.49847244765627', CAST(N'2020-04-19' AS Date), N'close', N'SP024', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K024', N'IT Product Owner', N'NGTNetwork@outlook.com', N'0684478965', N'ปรึกษาไอที', N'15,000-20,000', N'ดูแลระบบ Network ให้แก่บริษัท', N'Soi Mueang Mai Nuea, Tambon Thung Suk La, Amphoe Si Racha, Chang Wat Chon Buri 20230, Thailand', N'13.095532789262625', N'100.9243334519531', CAST(N'2020-04-21' AS Date), N'open', N'SP012', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K025', N'Project Manager', N'delson.4d3l@gmail.com', N'0633040976', N'Database', N'20,000-25,000', N'ทดสอบ ออกแบบระบบ', N'20/1 ถนน กัลปพฤกษ์ Khwaeng Bang Khun Thian, Khet Chom Thong, Krung Thep Maha Nakhon 10150, Thailand', N'13.710433333427579', N'100.45275842288997', CAST(N'2020-04-21' AS Date), N'close', N'SP013', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K026', N'hardware fix', N'delson.4d3l@gmail.com', N'0684478965', N'Hardware', N'ต่อลองได้', N'mainbroad fix', N'ซอย ภูลพิพัฒน์ Tambon Thung Suk La, Amphoe Si Racha, Chang Wat Chon Buri 20230, Thailand', N'13.0884211', N'100.9212838', CAST(N'2020-04-21' AS Date), N'open', N'SP001', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K027', N'CEO TDB', N'cactus2541', N'0638526864', N'CEO', N'40,000-50,000', N'บริหาร บ.TDB', N'8 ถนน เพชรเกษม 110 Khwaeng Nong Khang Phlu, Khet Nong Khaem, Krung Thep Maha Nakhon 10160, Thailand', N'13.7244416', N'100.3529036', CAST(N'2020-04-21' AS Date), N'close', N'SP027', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K028', N'IT Security ENGINEER', N'delson.4d3l@gmail.com', N'0633040976', N'IT Security', N'15,000-20,000', N'ดูแลระบบ Network ให้แก่บริษัท', N'425 จุฬาฯ 22 Khwaeng Wang Mai, Khet Pathum Wan, Krung Thep Maha Nakhon 10330, Thailand', N'13.739783027496156', N'100.52525162246096', CAST(N'2020-04-24' AS Date), N'open', N'SP004', N'U023')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K030', N'Business Intelligenc', N'delson.4d3l@gmail.com', N'0633040976', N'Programmer', N'ต่อลองได้', N'Recruitment and Outsourcing', N'1600 Phetchaburi Rd, Khwaeng Makkasan, Khet Ratchathewi, Krung Thep Maha Nakhon 10400, Thailand', N'13.749120796054573', N'100.55821060683596', CAST(N'2020-04-29' AS Date), N'open', N'SP009', N'U002')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K031', N'front end', N'delson.4d3l@gmail.com', N'0633040976', N'.net dev', N'ต่อลองได้', N'ดูแลระบบ Network ให้แก่บริษัท', N'254 Phayathai Rd, Khwaeng Wang Mai, Khet Pathum Wan, Krung Thep Maha Nakhon 10330, Thailand', N'13.739783027496156', N'100.5279982044922', CAST(N'2020-04-29' AS Date), N'open', N'SP029', N'U037')
INSERT [dbo].[data_postjobs] ([Job_id], [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude], [Releasedate], [Status], [SubPosition_id], [user_id]) VALUES (N'K032', N'database', N'delson.4d3l@gmail.com', N'0633040976', N'Database', N'ต่อลองได้', N'ดูแลระบบ Network ให้แก่บริษัท', N'6 แหลมฉบัง 1 Tambon Thung Suk La, Amphoe Si Racha, Chang Wat Chon Buri 20230, Thailand', N'13.088175930562603', N'100.90705455441625', CAST(N'2020-04-30' AS Date), N'open', N'SP013', N'U039')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP001', N'Hardware', N'P001')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP002', N'Programmer', N'P001')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP003', N'Software', N'P001')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP004', N'Application Network', N'P002')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP005', N'Mobile Wireless Communications', N'P002')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP006', N'IT Security', N'P002')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP007', N'IT Support', N'P002')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP008', N'IT Consultant', N'P002')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP009', N'Network', N'P002')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP010', N'SEO', N'P002')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP011', N'IT Audit', N'P002')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP012', N'Software Tester', N'P003')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP013', N'IT Support', N'P003')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP014', N'UI/UX', N'P004')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP015', N'SEO', N'P004')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP016', N'Data Science', N'P005')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP017', N'Database', N'P005')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP018', N'MIS', N'P005')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP019', N'SEO', N'P005')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP020', N'IT Audit', N'P005')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP021', N'IT Security', N'P005')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP022', N'IT Consultant', N'P005')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP023', N'test', N'P001')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP024', N'php', N'P004')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP025', N'System Analysis', N'P005')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP026', N'Boss', N'P005')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP027', N'CEO', N'P001')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP028', N'web dev', N'P004')
INSERT [dbo].[data_subposition] ([SubPosition_id], [SubPositionName], [Position_id]) VALUES (N'SP029', N'.net dev', N'P001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U001', N'delstudent', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'delson.4d3l@gmail.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U002', N'delcompany', N'1234', N'Mr', N'Cactuss', N'Male', N'0658425478', N'del@outlook.com', N'204/1', N'Krung Thep Maha Nakhon', N'UT002')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U003', N'delstudent1', N'1234', N'narong', N'pl', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U004', N'nisit1', N'1234', N'กิติ', N'กรรมปกาศ', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Sa Kaeo', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U005', N'cetus2612', N'as0939524630', N'bigdaddy', N'cetus', N'Male', N'0637381323', N'cetus2612@gmail.com', N'204/1', N'Chonburi', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U006', N'wave1000', N'1234', N'wave', N'eiei', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U007', N'testdata1', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U008', N'testdata2', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'204/1', N'Chiang Mai', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U009', N'deladmin', N'1234', N'lord', N'davids', N'Male', N'0658425478', N'del@outlook.com', N'204/1', N'Krung Thep Maha Nakhon', N'UT003')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U010', N'delstudent9', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U011', N'delstudent10', N'1234', N'Narongchai', N'Paophuthorn', N'Female', N'0658425478', N'del@outlook.com', N'198/9', N'Sukhothai', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U012', N'delstudent11', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'204/1', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U013', N'delstudent12', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U014', N'delstudent13', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U015', N'delstudent14', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U016', N'delstudent15', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U017', N'delstudent16', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U020', N'delstudentc', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U021', N'delstudente', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'204/1', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U022', N'delstudent99', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U023', N'davidcompany', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT002')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U024', N'delstudent22', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U025', N'delstudent111', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U026', N'delcompany111', N'1234', N'Narongchai', N'Paophuthorn', N'Male', N'0658425475', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT002')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U027', N'testcaseit1', N'123456', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'cetus2612@gmail.com', N'198/9 หมู่ 8', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U028', N'testcaseit2', N'123456', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9 หมู่ 8', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U029', N'testcasecs1', N'123456', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9 หมู่ 8', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U030', N'testcaseit3', N'123456', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U031', N'testcaseit4', N'123456', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U032', N'testcaseit5', N'123456', N'Narongchai', N'Paophuthorn', N'Female', N'0658425478', N'del@outlook.com', N'198/9', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U033', N'testcasecs2', N'123456', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9 หมู่ 8', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U034', N'testcasecs3', N'123456', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9 หมู่ 8', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U035', N'testcasecs4', N'123456', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9 หมู่ 8', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U036', N'testcasecs5', N'123456', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9 หมู่ 8', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U037', N'delcompany222', N'123456', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9 หมู่ 8', N'Krung Thep Maha Nakhon', N'UT002')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U038', N'delstudent222', N'123456', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9 หมู่ 8', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U039', N'delcompany100', N'123456', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9 หมู่ 8', N'Krung Thep Maha Nakhon', N'UT002')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U040', N'delstudent100', N'123456', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9 หมู่ 8', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_user] ([user_id], [username], [password], [firstname], [lastname], [gender], [phone], [email], [address], [province], [usertype_id]) VALUES (N'U041', N'delstudent200', N'123456', N'Narongchai', N'Paophuthorn', N'Male', N'0658425478', N'del@outlook.com', N'198/9 หมู่ 8', N'Krung Thep Maha Nakhon', N'UT001')
INSERT [dbo].[data_userfavoritejobs] ([userfavoritejobs_id], [user_id], [Job_id]) VALUES (N'F003', N'U001', N'K010')
INSERT [dbo].[data_userfavoritejobs] ([userfavoritejobs_id], [user_id], [Job_id]) VALUES (N'F004', N'U001', N'K011')
INSERT [dbo].[data_userfavoritejobs] ([userfavoritejobs_id], [user_id], [Job_id]) VALUES (N'F005', N'U001', N'K005')
INSERT [dbo].[data_userfavoritejobs] ([userfavoritejobs_id], [user_id], [Job_id]) VALUES (N'F006', N'U001', N'K003')
INSERT [dbo].[data_userfavoritejobs] ([userfavoritejobs_id], [user_id], [Job_id]) VALUES (N'F007', N'U001', N'K023')
INSERT [dbo].[data_userfavoritejobs] ([userfavoritejobs_id], [user_id], [Job_id]) VALUES (N'F008', N'U022', N'K024')
INSERT [dbo].[data_userfavoritejobs] ([userfavoritejobs_id], [user_id], [Job_id]) VALUES (N'F010', N'U025', N'K002')
INSERT [dbo].[data_userfavoritejobs] ([userfavoritejobs_id], [user_id], [Job_id]) VALUES (N'F011', N'U027', N'K001')
INSERT [dbo].[data_userfavoritejobs] ([userfavoritejobs_id], [user_id], [Job_id]) VALUES (N'F012', N'U001', N'K001')
INSERT [dbo].[data_userfavoritejobs] ([userfavoritejobs_id], [user_id], [Job_id]) VALUES (N'F013', N'U001', N'K006')
INSERT [dbo].[data_userfavoritejobs] ([userfavoritejobs_id], [user_id], [Job_id]) VALUES (N'F015', N'U038', N'K002')
INSERT [dbo].[data_userfavoritejobs] ([userfavoritejobs_id], [user_id], [Job_id]) VALUES (N'F016', N'U040', N'K005')
INSERT [dbo].[data_usertype] ([usertype_id], [usertype]) VALUES (N'UT001', N'Student')
INSERT [dbo].[data_usertype] ([usertype_id], [usertype]) VALUES (N'UT002', N'Company')
INSERT [dbo].[data_usertype] ([usertype_id], [usertype]) VALUES (N'UT003', N'Admin')
