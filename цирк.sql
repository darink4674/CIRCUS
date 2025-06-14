USE [CircusDB]
GO
/****** Object:  Table [dbo].[Animals]    Script Date: 14.06.2025 10:38:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Animals](
	[AnimalID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Age] [int] NULL,
	[Gender] [varchar](10) NULL,
	[Weight] [float] NULL,
	[FoodPreferences] [varchar](200) NULL,
	[CareNotes] [varchar](200) NULL,
	[TrainerID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnimalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Artists]    Script Date: 14.06.2025 10:38:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Artists](
	[ArtistID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[PerformanceCount] [int] NULL DEFAULT ((0)),
	[ArtistType] [varchar](20) NULL DEFAULT ('Beginner'),
	[DressingRoom] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ArtistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventAnimals]    Script Date: 14.06.2025 10:38:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventAnimals](
	[EventID] [int] NOT NULL,
	[AnimalID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EventID] ASC,
	[AnimalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventArtists]    Script Date: 14.06.2025 10:38:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventArtists](
	[EventID] [int] NOT NULL,
	[ArtistID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EventID] ASC,
	[ArtistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Events]    Script Date: 14.06.2025 10:38:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Events](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[EventDate] [date] NOT NULL,
	[EventType] [varchar](20) NOT NULL,
	[Profit] [money] NULL,
	[Costs] [money] NULL,
	[AdvancePayment] [money] NULL,
	[Company] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HologramResponsibles]    Script Date: 14.06.2025 10:38:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HologramResponsibles](
	[ResponsibleID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[Position] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ResponsibleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HologramRooms]    Script Date: 14.06.2025 10:38:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HologramRooms](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomName] [varchar](50) NOT NULL,
	[ResponsibleID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Holograms]    Script Date: 14.06.2025 10:38:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Holograms](
	[HologramID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Status] [varchar](50) NULL,
	[RoomID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HologramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Trainers]    Script Date: 14.06.2025 10:38:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trainers](
	[TrainerID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[Specialization] [varchar](100) NULL,
	[Experience] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TrainerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Animals] ON 

INSERT [dbo].[Animals] ([AnimalID], [Name], [Age], [Gender], [Weight], [FoodPreferences], [CareNotes], [TrainerID]) VALUES (1, N'Лев Симба', 5, N'Мужской', 190.5, N'Мясо', N'Агрессивный', 1)
INSERT [dbo].[Animals] ([AnimalID], [Name], [Age], [Gender], [Weight], [FoodPreferences], [CareNotes], [TrainerID]) VALUES (2, N'Обезьяна Чита', 3, N'Женский', 15.2, N'Фрукты', N'Игривая', 2)
INSERT [dbo].[Animals] ([AnimalID], [Name], [Age], [Gender], [Weight], [FoodPreferences], [CareNotes], [TrainerID]) VALUES (3, N'Орёл Гром', 4, N'Мужской', 6.7, N'Рыба', N'Чувствителен к шуму', 3)
INSERT [dbo].[Animals] ([AnimalID], [Name], [Age], [Gender], [Weight], [FoodPreferences], [CareNotes], [TrainerID]) VALUES (4, N'Дельфин Рио', 7, N'Мужской', 210, N'Рыба', N'Нужен солёный бассейн', 4)
INSERT [dbo].[Animals] ([AnimalID], [Name], [Age], [Gender], [Weight], [FoodPreferences], [CareNotes], [TrainerID]) VALUES (5, N'Питон Зигги', 8, N'Женский', 45.3, N'Грызуны', N'Требует подогрева', 5)
SET IDENTITY_INSERT [dbo].[Animals] OFF
SET IDENTITY_INSERT [dbo].[Artists] ON 

INSERT [dbo].[Artists] ([ArtistID], [FullName], [PerformanceCount], [ArtistType], [DressingRoom]) VALUES (1, N'Николаев Максим', 5, N'Beginner', NULL)
INSERT [dbo].[Artists] ([ArtistID], [FullName], [PerformanceCount], [ArtistType], [DressingRoom]) VALUES (2, N'Соколова Алина', 15, N'Advanced', NULL)
INSERT [dbo].[Artists] ([ArtistID], [FullName], [PerformanceCount], [ArtistType], [DressingRoom]) VALUES (3, N'Лебедев Кирилл', 40, N'VIP', N'VIP-1')
INSERT [dbo].[Artists] ([ArtistID], [FullName], [PerformanceCount], [ArtistType], [DressingRoom]) VALUES (4, N'Воробьёва Ольга', 25, N'Advanced', NULL)
INSERT [dbo].[Artists] ([ArtistID], [FullName], [PerformanceCount], [ArtistType], [DressingRoom]) VALUES (5, N'Зайцев Артём', 50, N'VIP', N'VIP-2')
SET IDENTITY_INSERT [dbo].[Artists] OFF
INSERT [dbo].[EventAnimals] ([EventID], [AnimalID]) VALUES (1, 1)
INSERT [dbo].[EventAnimals] ([EventID], [AnimalID]) VALUES (1, 2)
INSERT [dbo].[EventAnimals] ([EventID], [AnimalID]) VALUES (3, 4)
INSERT [dbo].[EventArtists] ([EventID], [ArtistID]) VALUES (1, 1)
INSERT [dbo].[EventArtists] ([EventID], [ArtistID]) VALUES (1, 3)
INSERT [dbo].[EventArtists] ([EventID], [ArtistID]) VALUES (2, 2)
INSERT [dbo].[EventArtists] ([EventID], [ArtistID]) VALUES (2, 4)
INSERT [dbo].[EventArtists] ([EventID], [ArtistID]) VALUES (3, 5)
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([EventID], [Title], [EventDate], [EventType], [Profit], [Costs], [AdvancePayment], [Company]) VALUES (1, N'Шоу хищников', CAST(N'2023-10-15' AS Date), N'Local', 50000.0000, 20000.0000, 0.0000, NULL)
INSERT [dbo].[Events] ([EventID], [Title], [EventDate], [EventType], [Profit], [Costs], [AdvancePayment], [Company]) VALUES (2, N'Гастроли "Мир чудес"', CAST(N'2023-10-20' AS Date), N'Guest', 120000.0000, 60000.0000, 30000.0000, N'CircusWorld')
INSERT [dbo].[Events] ([EventID], [Title], [EventDate], [EventType], [Profit], [Costs], [AdvancePayment], [Company]) VALUES (3, N'Дельфинье шоу', CAST(N'2023-10-25' AS Date), N'Local', 75000.0000, 35000.0000, 0.0000, NULL)
INSERT [dbo].[Events] ([EventID], [Title], [EventDate], [EventType], [Profit], [Costs], [AdvancePayment], [Company]) VALUES (4, N'Фестиваль голограмм', CAST(N'2023-11-05' AS Date), N'Guest', NULL, NULL, 25000.0000, N'HoloTech')
INSERT [dbo].[Events] ([EventID], [Title], [EventDate], [EventType], [Profit], [Costs], [AdvancePayment], [Company]) VALUES (5, N'Цирк на льду', CAST(N'2023-11-10' AS Date), N'Local', NULL, NULL, 0.0000, NULL)
SET IDENTITY_INSERT [dbo].[Events] OFF
SET IDENTITY_INSERT [dbo].[HologramResponsibles] ON 

INSERT [dbo].[HologramResponsibles] ([ResponsibleID], [FullName], [Position]) VALUES (1, N'Смирнов Артём', N'Инженер')
INSERT [dbo].[HologramResponsibles] ([ResponsibleID], [FullName], [Position]) VALUES (2, N'Ковалёва Елена', N'Технолог')
INSERT [dbo].[HologramResponsibles] ([ResponsibleID], [FullName], [Position]) VALUES (3, N'Фёдоров Павел', N'Программист')
INSERT [dbo].[HologramResponsibles] ([ResponsibleID], [FullName], [Position]) VALUES (4, N'Морозова Дарья', N'Дизайнер')
INSERT [dbo].[HologramResponsibles] ([ResponsibleID], [FullName], [Position]) VALUES (5, N'Белов Антон', N'Тестировщик')
SET IDENTITY_INSERT [dbo].[HologramResponsibles] OFF
SET IDENTITY_INSERT [dbo].[HologramRooms] ON 

INSERT [dbo].[HologramRooms] ([RoomID], [RoomName], [ResponsibleID]) VALUES (1, N'HL-101', 1)
INSERT [dbo].[HologramRooms] ([RoomID], [RoomName], [ResponsibleID]) VALUES (2, N'HL-102', 2)
INSERT [dbo].[HologramRooms] ([RoomID], [RoomName], [ResponsibleID]) VALUES (3, N'HL-103', 3)
INSERT [dbo].[HologramRooms] ([RoomID], [RoomName], [ResponsibleID]) VALUES (4, N'HL-104', 4)
INSERT [dbo].[HologramRooms] ([RoomID], [RoomName], [ResponsibleID]) VALUES (5, N'HL-105', 5)
SET IDENTITY_INSERT [dbo].[HologramRooms] OFF
SET IDENTITY_INSERT [dbo].[Holograms] ON 

INSERT [dbo].[Holograms] ([HologramID], [Name], [Status], [RoomID]) VALUES (1, N'ГолоЛев', N'Готово', 1)
INSERT [dbo].[Holograms] ([HologramID], [Name], [Status], [RoomID]) VALUES (2, N'ГолоОрёл', N'Тестирование', 2)
INSERT [dbo].[Holograms] ([HologramID], [Name], [Status], [RoomID]) VALUES (3, N'ГолоДельфин', N'Разработка', 3)
INSERT [dbo].[Holograms] ([HologramID], [Name], [Status], [RoomID]) VALUES (4, N'ГолоКлоун', N'Прототип', 4)
INSERT [dbo].[Holograms] ([HologramID], [Name], [Status], [RoomID]) VALUES (5, N'ГолоАкробат', N'Идея', 5)
SET IDENTITY_INSERT [dbo].[Holograms] OFF
SET IDENTITY_INSERT [dbo].[Trainers] ON 

INSERT [dbo].[Trainers] ([TrainerID], [FullName], [Specialization], [Experience]) VALUES (1, N'Иванов Алексей', N'Хищники', 10)
INSERT [dbo].[Trainers] ([TrainerID], [FullName], [Specialization], [Experience]) VALUES (2, N'Петрова Мария', N'Обезьяны', 5)
INSERT [dbo].[Trainers] ([TrainerID], [FullName], [Specialization], [Experience]) VALUES (3, N'Сидоров Дмитрий', N'Птицы', 8)
INSERT [dbo].[Trainers] ([TrainerID], [FullName], [Specialization], [Experience]) VALUES (4, N'Кузнецова Анна', N'Морские животные', 3)
INSERT [dbo].[Trainers] ([TrainerID], [FullName], [Specialization], [Experience]) VALUES (5, N'Васильев Игорь', N'Рептилии', 12)
SET IDENTITY_INSERT [dbo].[Trainers] OFF
ALTER TABLE [dbo].[Animals]  WITH CHECK ADD FOREIGN KEY([TrainerID])
REFERENCES [dbo].[Trainers] ([TrainerID])
GO
ALTER TABLE [dbo].[EventAnimals]  WITH CHECK ADD FOREIGN KEY([AnimalID])
REFERENCES [dbo].[Animals] ([AnimalID])
GO
ALTER TABLE [dbo].[EventAnimals]  WITH CHECK ADD FOREIGN KEY([EventID])
REFERENCES [dbo].[Events] ([EventID])
GO
ALTER TABLE [dbo].[EventArtists]  WITH CHECK ADD FOREIGN KEY([ArtistID])
REFERENCES [dbo].[Artists] ([ArtistID])
GO
ALTER TABLE [dbo].[EventArtists]  WITH CHECK ADD FOREIGN KEY([EventID])
REFERENCES [dbo].[Events] ([EventID])
GO
ALTER TABLE [dbo].[HologramRooms]  WITH CHECK ADD FOREIGN KEY([ResponsibleID])
REFERENCES [dbo].[HologramResponsibles] ([ResponsibleID])
GO
ALTER TABLE [dbo].[Holograms]  WITH CHECK ADD FOREIGN KEY([RoomID])
REFERENCES [dbo].[HologramRooms] ([RoomID])
GO
