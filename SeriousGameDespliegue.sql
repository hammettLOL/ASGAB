USE [SeriousGameDB]
GO
/****** Object:  Table [dbo].[Bacteria]    Script Date: 11/8/2017 12:01:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bacteria](
	[BACTERIA_ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Bacteria] PRIMARY KEY CLUSTERED 
(
	[BACTERIA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Foto]    Script Date: 11/8/2017 12:01:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foto](
	[FOTO_ID] [int] IDENTITY(1,1) NOT NULL,
	[BACTERIA_ID] [int] NOT NULL,
	[TIEMPO] [int] NOT NULL,
	[AGAR] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Foto] PRIMARY KEY CLUSTERED 
(
	[FOTO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laboratorio]    Script Date: 11/8/2017 12:01:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laboratorio](
	[LABORATORIO_ID] [int] IDENTITY(1,1) NOT NULL,
	[FOTO_SS_ID] [int] NOT NULL,
	[FOTO_LB_ID] [int] NOT NULL,
	[USUARIO_ID] [varchar](50) NOT NULL,
	[TI_GRAM] [bit] NOT NULL,
	[PB_TSI] [bit] NOT NULL,
	[PB_MIO] [bit] NOT NULL,
	[PB_CITRATO] [bit] NOT NULL,
	[PB_UREASA] [bit] NOT NULL,
	[PA_SS] [bit] NOT NULL,
	[PA_LB] [bit] NOT NULL,
	[RESULTADO] [int] NOT NULL,
 CONSTRAINT [PK_Laboratorio] PRIMARY KEY CLUSTERED 
(
	[LABORATORIO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pregunta]    Script Date: 11/8/2017 12:01:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pregunta](
	[PREGUNTA_ID] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPCION] [varchar](200) NOT NULL,
	[OPCION_0] [varchar](100) NOT NULL,
	[OPCION_1] [varchar](100) NOT NULL,
	[OPCION_2] [varchar](100) NOT NULL,
	[RESPUESTA_CORRECTA] [int] NOT NULL,
	[DIFICULTAD] [int] NOT NULL,
	[TIPO] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pregunta] PRIMARY KEY CLUSTERED 
(
	[PREGUNTA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trivia]    Script Date: 11/8/2017 12:01:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trivia](
	[TRIVIA_ID] [int] IDENTITY(1,1) NOT NULL,
	[PREGUNTA_ID] [int] NOT NULL,
	[USUARIO_ID] [varchar](50) NOT NULL,
	[RESULTADO] [bit] NOT NULL,
 CONSTRAINT [PK_Trivia] PRIMARY KEY CLUSTERED 
(
	[TRIVIA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bacteria] ON 

INSERT [dbo].[Bacteria] ([BACTERIA_ID], [NOMBRE]) VALUES (0, N'No bacteria')
INSERT [dbo].[Bacteria] ([BACTERIA_ID], [NOMBRE]) VALUES (1, N'Escherichia Coli')
INSERT [dbo].[Bacteria] ([BACTERIA_ID], [NOMBRE]) VALUES (2, N'Salmonella')
SET IDENTITY_INSERT [dbo].[Bacteria] OFF
SET IDENTITY_INSERT [dbo].[Foto] ON 

INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (0, 0, 0, N'NO')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (1, 1, 30, N'LB')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (2, 1, 125, N'LB')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (3, 1, 185, N'LB')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (4, 1, 275, N'LB')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (5, 1, 455, N'LB')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (6, 1, 785, N'LB')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (7, 1, 1175, N'SS')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (8, 2, 275, N'LB')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (9, 2, 455, N'LB')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (10, 2, 515, N'LB')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (11, 2, 785, N'LB')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (12, 2, 455, N'SS')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (13, 2, 515, N'SS')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (14, 2, 695, N'SS')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (15, 2, 735, N'SS')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (16, 2, 785, N'SS')
INSERT [dbo].[Foto] ([FOTO_ID], [BACTERIA_ID], [TIEMPO], [AGAR]) VALUES (17, 2, 995, N'SS')
SET IDENTITY_INSERT [dbo].[Foto] OFF
SET IDENTITY_INSERT [dbo].[Pregunta] ON 

INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (1, N'El género Staphylococcus es', N'Catalasa -', N'Catalasa +', N'Oxidasa -', 1, 1, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (2, N'De los Staphylococcus no es cierto que', N'AerobiosAnaerobios facultativos', N'Fermentativos', N'Antitolerantes al NaCl', 2, 1, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (3, N'¿Qué temperaturas toleran las bacterias Staphylococcus', N'Mayor a 65 grados', N'De 2-55 grados', N'De 40-70 grados', 1, 1, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (4, N'El género Streptococcus es:', N'Catalasa -', N'Catalasa +', N'Coagulasa +', 0, 1, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (5, N'De los Streptoccus no es cierto que', N'No fermentan carbohidratos', N'Tienen proteína M', N'Anaerobios facultativos', 0, 1, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (6, N'Del Streptoccocus pyogenes se diferencia del Streptococcus pneumoniae por:', N'Tener cápsula', N'Ser beta-hemolítico', N'Ser gram+', 1, 1, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (7, N'Una diferencia entre Streptococcus y Staphylococcus es que los primeros son:', N'Gram +', N'Catalasa -', N'Coagulasa +', 1, 1, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (8, N'Cuál no es característica del enterococco:', N'Diplococos gram positivos', N'Sensibles a la optoquinina', N'Crecen en agar bilis esculina', 1, 1, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (9, N'¿Cúal es la prueba clave que se realiza para separar Stafilococus aureus de otros Stafilococus?', N'Coagulase', N'Ureasa', N'Agar Sangre', 0, 1, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (10, N'En la tinción Gram de un hemocultivo se ven staphylococcos, ¿con qué prueba se puede confirmar el diagnóstico?', N'Cultivo en Manitol sal', N'Prueba de catalasa', N'Todas son correctas', 2, 1, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (11, N'¿Qué microorganismo adquiere una coloración dorada en el agar Sangre?', N'S. aureus', N'S. epidermidis', N'S. pyogenes', 0, 2, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (12, N'¿Qué microorganismo adquiere una coloración gris en el agar Sangre?', N'S. aureus', N'S. epidermidis', N'S. pyogenes', 1, 2, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (13, N'Coco Gram +, coagulasa - y catalasa +, anaerobio facultativo, no fermenta manitol y es parte de la flora microbiana normal', N'S.epidermis', N'Estreptococos pyogenes', N'S. aereus', 0, 2, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (14, N'Anaerobia facultativa,gram +,coagulasa +,catalasa,inmóvil,es un agente patogénico considerado como parte de la microbiota normal', N'S.pyogenes', N'S.epidermis', N'S. aereus', 2, 2, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (15, N'Diplococos Gram+, catalasa-. Pueden producir betahemólisis en agar sangre y crecen en presencia de 6.5% de cloruro de sodio', N'Staphylococco saprophyticus', N'Enterococco faecalis', N'Enterococco ureasiticu', 2, 2, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (16, N'Esta bacteria puede aparecer como A-hemolítica en agar sangre cuando se incuban en una atmósfera anaerobia y pueden ser B-hemolíticas cuando crecen en condiciones anaerobias', N'Streptococcus pneumoniae', N'Staphylococcus aereus', N'Streptococcus pyogenes', 2, 2, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (17, N'Su crecimiento se ve favorecido en el agar sangre enriquecido pero se ve inhibido cuando contiene una concen- tración elevada de glucosa. Coco gram+, Catalasa-, no forma esporas.', N'S. pyogenes', N'Enterococus Faecium', N'S. pneumoniae', 0, 2, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (18, N'¿Qué prueba se utiliza para diferenciar el grupo A streptococci de otros Streptococcus hemolíticos?', N'Sensibilidad Bacitracin', N'Crece en 6.5% de sal', N'Hippurate hydrolysis', 0, 2, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (19, N'¿Cuál de las siguientes toxinas producidas por S. aureus no es considerada un superantígeno?', N'Enterotoxinas', N'Citotoxinas', N'Toxina 1 del síndrome del shock tóxico', 1, 2, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (20, N'El Streptoccocus pyogenes es un estreptococo B-hemolítico del grupo:', N'A', N'B', N'C', 0, 2, N'grupo 1')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (21, N'¿Cuál de las siguientes características no pertenecen a la familia Enterobacteriaceae?', N'Catalasa +', N'Glucosa -', N'Oxidasa -', 1, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (22, N'De las enterobacterias no es cierto que todas son:', N'Anaerobio facultativo', N'Nitrato +', N'Exigentes', 2, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (23, N'¿Cuál de los siguientes microorganismos no pertenecen a la familia Enterobacteriaceae?', N'Escherichia coli', N'Salmonella', N'Entamoeba coli', 2, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (24, N'La mayoría de las enterobacterias son:', N'Bacilos gram -', N'Bacilos gram +', N'CocoBacilos gram -', 0, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (25, N'De las enterobacterias no todas son:', N'Móviles', N'Lactosa +', N'Ambos', 2, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (26, N'Las Salmonellas son:', N'Lactosa +', N'Inmóviles', N'Citrato +', 2, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (27, N'Sobre las Shiguellas spp, es correcto que son:', N'Citrato +', N'Glucosa +', N'Lactosa +', 1, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (28, N'Las Enterocacter son:', N'Citrato +', N'Ureasa +', N'SH2+', 0, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (29, N'Sobre Acinetobacter spp, es incorrecto que son:', N'Oxidasa -', N'Catalasa -', N'Aerobios facultativos', 1, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (30, N'Sobre las bacterias Acinetobacter, es incorrecto que son:', N'Cocobacilos gram-', N'Oxidasa -', N'Anaerobios estrictos', 1, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (31, N'Las bacterias Citrobacter spp son todas las siguientes, excepto:', N'Lactosa -', N'Indol +', N'Citrato +', 0, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (32, N'Respecto a Citrobacter, Enterobacter, Klebsiella y Escherichia, es cierto que son:', N'Lactosa +', N'Móviles', N'Ambos', 2, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (33, N'Las Escherichia no son:', N'Lactosa +', N'Ureasa +', N'Indol +', 1, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (34, N'¿Cuál de las siguientes bacterias da como resultado Indol positivo?', N'Salmonella', N'Enterobacter', N'E. coli', 2, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (35, N'Las siguientes bacterias son ureasa positivas, excepto:', N'Klebsiella', N'Enterobacter', N'Ambos', 1, 1, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (36, N'¿Cuál de las siguientes bacterias produce desplazamiento del agar TSI por la producción de gas?', N'E. coli', N'Pseudomona aeruginosa', N'Shiguella', 0, 2, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (37, N'¿Qué bacilo presenta un crecimiento aerobio estricto?', N'Bacteroides spp', N'Fusobacterium spp', N'Pseudomona aeruginosa', 2, 2, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (38, N'Para cultivar a Pseudomonas spp se pueden utilizar los siguientes, excepto:', N'Agar Sangre', N'Agar MacConkey', N'Agar Middlebrook', 2, 2, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (39, N'Las características de las colonias de Pseudomonas son todas, excepto:', N'B-hemolíticas', N'Pigmentación roja', N'Olor semejante a uvas', 1, 2, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (40, N'Bacilo Gram negativo, colonias lactosa positivas en agar MacConkey e indol positivo en agar MIO:', N'Shigella dysenteriae', N'E. coli O157H7', N'Vibrio cholerae', 1, 2, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (41, N'¿Cuál de las siguientes bacterias no pertenece al grupo de No fermentadoras de lactosa y ureasa positiva?', N'Citrobacter', N'Salmonella', N'Klebsiella', 2, 2, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (42, N'Bacilo Gram-, Lactosa+ y móviles. Son ureasa-, citrato- y SH2-. Pueden suprimir el crecimiento de microorganismos proteolíticos debido a la liberación de bacteriocinas', N'Salmonella', N'Escherichia', N'Klebsiella', 1, 2, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (43, N'Microorganismos capsulados, inmóviles, Lactosa+ y son glucosa+ mediante la vía de fermentación del 2-3 butanodiol al igual que los del género Enterobacter. Ureasa y citrato +', N'Escherichia', N'Citrobacter', N'Klebsiella', 2, 2, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (44, N'Bacilo gram negativo, no fermentadores de lactosa, inmóvil. Son Ureasa, citrato y SH2 negativos', N'Salmonella', N'Shiguella', N'Enterobacter', 1, 2, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (45, N'Enterobacteria, no produce Ureasa ni SH2. Citrato y lactosa positivo. Móvil', N'Escherichia', N'Klebsiella', N'Enterobacter', 2, 2, N'grupo 2')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (46, N'¿Cuál de las siguientes características no pertenecen al género Mycobacterium?', N'Bacilos móviles', N'Ácido alcohol resistente', N'No esporulados', 0, 1, N'grupo 3')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (47, N'¿Cuál de las siguientes es una característica de las micobacterias?', N'Ácido-alcohol resistentes', N'Crecimiento rápido', N'Anaerobios inmóviles', 0, 1, N'grupo 3')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (48, N'Son micobacterias de crecimiento rápido todas, excepto:', N'M. fortuitum', N'M. chelonae', N'M. tuberculosis', 2, 1, N'grupo 3')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (49, N'Los cultivos de las micobacterias requieren incubación por:', N'1 semana', N'8 semanas', N'24 horas', 1, 1, N'grupo 3')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (50, N'¿Qué tinción no es útil para la microscopía de las micobacterias?', N'Ziehl- Neelsen', N'Gram', N'Kinyoun', 1, 1, N'grupo 3')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (51, N'Sobre el Complejo Mycobacterium avium, es correcto:', N'Proliferan a 35 grados C', N'Colonias pigmentadas', N'Proliferan a 41 grados C', 2, 2, N'grupo 3')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (52, N'Pertenecen al complejo tuberculoso, excepto:', N'M. kansassi', N'M. tuberculosis', N'M. africanum', 0, 2, N'grupo 3')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (53, N'¿Cuál de las siguientes pruebas es sensible y específica para el diagnóstico de M.tuberculosis?', N'Cutánea de tuberculina', N'Liberación de IFN-y', N'Cultivo de la bacteria', 2, 2, N'grupo 3')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (54, N'Pertenece al Complejo mycobacterium avium:', N'M. intracellulare', N'M. africanum', N'M. kansassi', 0, 2, N'grupo 3')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (55, N'Todas son fotocromógenos, menos:', N'M. kansassi', N'M. malmoense', N'M. simiae', 1, 2, N'grupo 3')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (56, N'Sobre M. leprae, es correcto que:', N'Es anaerobio', N'Puede cultivarse artificialmente', N'Es ácido-alcohol resistente', 1, 2, N'grupo 3')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (57, N'¿Cuál de las siguientes es útil para evaluar la sensibilidad al fármaco en caso de infección por M. tuberculosis?', N'MODS', N'Antibiograma', N'Cultivo en Lowenstein-Jensen', 0, 2, N'grupo 3')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (58, N'Para el estudio de Mycobacterium tuberculosis, qué prueba rápida se solicitaría?', N'Gota gruesa', N'Ziehl-Neelsen o auramina', N'Tinción Gram', 1, 2, N'grupo 3')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (59, N'La prueba de tinción gram sirve para distinguir:', N'Entre gram + y -', N'Acidoalcohol resistentes', N'Ninguna de las anteriores', 0, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (60, N'La prueba de tinción Ziehl-neelsen sirve para distinguir:', N'Entre gram + y -', N'Acidoalcohol resistentes', N'Aislar estafilococos', 1, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (61, N'La prueba agar MacConkey sirve para distinguir', N'Gram + y -', N'Aislar estafilococos', N'Fermentadoras de lactosa', 2, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (62, N'¿Para qué sirve el agar Manitol Sal?', N'Aislar estafilococos', N'Aislar micobacterias', N'Aislar Enterobacterias', 0, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (63, N'La prueba del agar SS sirve para distinguir', N'Lactosa -', N'Aerobias facultativas', N'Entre gram + y -', 0, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (64, N'El agar Bilis Esculina sirve principalmente para distinguir entre:', N'Glucosa + y -', N'Enterococcus y Streptococcus', N'Lactosa + y -', 1, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (65, N'La prueba de catalasa es positiva cuando', N'Se producen burbujas', N'No se producen burbujas', N'Se tiñen rosadas', 0, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (66, N'La prueba de oxidasa es positiva cuando la zona coloreada de la tira reactiva se tiñe de:', N'Morado', N'Azul', N'No se tiñe', 1, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (67, N'Al realizar la tinción gram, si la muestra se tiñe rosado significa que la bacteria es', N'Gram +', N'Gram -', N'Enterobacteria', 1, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (68, N'Al realizar la tinción gram, si la muestra se tiñe azul significa que la bacteria es', N'Gram +', N'Gram -', N'Enterobacteria', 0, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (69, N'En la prueba de Ureasa positivo el resultado es de color:', N'Amarillo', N'Incoloro', N'Rosado', 2, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (70, N'En la prueba de Citrato positivo el resultado es de color:', N'Verde', N'Morado', N'Azul', 2, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (71, N'En la prueba de Indol positivo en el tubo se forma un aro en la superficie de color:', N'Amarillo', N'Rosado', N'Incoloro', 1, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (72, N'En la prueba de TSI, se sabe que la bacteria fermenta glucosa si el medio:', N'permanece rojo', N'se ennegrece', N'vira a amarillo', 2, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (73, N'En la prueba de coagulasa, es negativo cuando el plasma:', N'Se coagula', N'Vira a verde', N'Es líquido', 2, 1, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (74, N'¿Cuál es el primer tinte que se aplica al portaobjetos de vidrio al realizar la tinción de Gram?', N'Cristal Violeta', N'Lugol', N'Safranina Fucsina', 0, 2, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (75, N'Cuándo se está realizando la tinción gram, después de colocar la muestra de la bacteria en el portaobjetos de vidrio (frotis), ¿cuál es el siguiente paso?', N'Colocar Lugol', N'Fijar la muestra (calor)', N'Colocar Cristal Violeta', 1, 2, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (76, N'Al realizar la tinción gram ¿cuánto es el máximo tiempo que debes esperar para colocar el siguiente tinte?', N'1 minuto', N'10 segundos', N'5 minutos', 0, 2, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (77, N'Al realizar la tinción de Ziehl-Neelsen y después de hacer el frotis ¿cuál es el siguiente paso que se realiza?', N'Contrastar con azul de metileno', N'Decolorar con alcohol ácido', N'Aplicar carbolfucsina básica', 2, 2, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (78, N'¿Cuál de los siguientes ingredientes es usado para la preparación de Agar MacConkey?', N'Lactosa', N'Caseína', N'Glucosa', 0, 2, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (79, N'¿Cuál de estos ingredientes NO forma parte de la preparación del Agar MacConkey?', N'Sales bilares', N'Rojo neutro', N'Lugol', 2, 2, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (80, N'¿Cuál de los siguientes ingredientes es usado para la preparación del agar Manitol Sal?', N'Lactosa', N'Sales', N'Cristal Violeta', 1, 2, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (81, N'¿Cuál de los siguientes ingredientes NO está en la preparación del agar Manitol Sal ?', N'Rojo fenol', N'Tejidos de animales digeridos', N'Lactosa', 2, 2, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (82, N'Se utiliza la prueba ureasa para diferenciar si la bacteria contiene esta enzima como única fuente de:', N'Nitrógeno', N'Carbono', N'Oxígeno', 0, 2, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (83, N'Se utiliza la prueba de citrato para diferenciar las bacterias capaces de crecer con este elemento como única fuente de:', N'Nitrógeno', N'Carbono', N'Oxígeno', 1, 2, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (84, N'¿Cuál de las siguientes bacterias no adquiere un color rojizo en el agar MacConkey?', N'E. coli', N'Klebsiella spp', N'Salmonella entérica', 2, 2, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (85, N'¿Cuál de las siguientes bacterias adquiere un centro negro en el agar SS?', N'Shiguella', N'Salmonella', N'Klebsiella', 1, 2, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (86, N'Respecto al cultivo en Lowenstein- Jensen, es correcto:', N'Se incuba a 37°C', N'Es verde pálido', N'Demora 2 semanas', 1, 2, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (87, N'Según el cultivo por el método de Ogawa, es correcto que el resultado es:', N'(-): 1-19 colonias', N'(+++): más de 100 colonias', N'(+): 20-100 colonias', 2, 2, N'pruebas laboratorio')
INSERT [dbo].[Pregunta] ([PREGUNTA_ID], [DESCRIPCION], [OPCION_0], [OPCION_1], [OPCION_2], [RESPUESTA_CORRECTA], [DIFICULTAD], [TIPO]) VALUES (88, N'Según la técnica de Ziehl- Neelsen, es incorrecto que el reporte es:', N'(-) 1-9 BAAR en 100 campos', N'(+++) Más de 10 BAAR en 20 campos', N'(+) Menos de 1 BAAR en 100 campos', 0, 2, N'pruebas laboratorio')
SET IDENTITY_INSERT [dbo].[Pregunta] OFF
ALTER TABLE [dbo].[Foto]  WITH CHECK ADD  CONSTRAINT [FK_Foto_Bacteria] FOREIGN KEY([BACTERIA_ID])
REFERENCES [dbo].[Bacteria] ([BACTERIA_ID])
GO
ALTER TABLE [dbo].[Foto] CHECK CONSTRAINT [FK_Foto_Bacteria]
GO
ALTER TABLE [dbo].[Laboratorio]  WITH CHECK ADD  CONSTRAINT [FK_Laboratorio_Foto] FOREIGN KEY([FOTO_SS_ID])
REFERENCES [dbo].[Foto] ([FOTO_ID])
GO
ALTER TABLE [dbo].[Laboratorio] CHECK CONSTRAINT [FK_Laboratorio_Foto]
GO
ALTER TABLE [dbo].[Laboratorio]  WITH CHECK ADD  CONSTRAINT [FK_Laboratorio_Foto1] FOREIGN KEY([FOTO_LB_ID])
REFERENCES [dbo].[Foto] ([FOTO_ID])
GO
ALTER TABLE [dbo].[Laboratorio] CHECK CONSTRAINT [FK_Laboratorio_Foto1]
GO
ALTER TABLE [dbo].[Trivia]  WITH CHECK ADD  CONSTRAINT [FK_Trivia_Pregunta] FOREIGN KEY([PREGUNTA_ID])
REFERENCES [dbo].[Pregunta] ([PREGUNTA_ID])
GO
ALTER TABLE [dbo].[Trivia] CHECK CONSTRAINT [FK_Trivia_Pregunta]
GO
