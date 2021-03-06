USE [Juegos]
GO
/****** Object:  Table [dbo].[Juegos]    Script Date: 5/11/2020 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Juegos](
	[CodigoJuego] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[CantDisponible] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoJuego] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [JuegosSocios]
) ON [JuegosSocios]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 5/11/2020 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[CodigoPersona] [int] IDENTITY(1,1) NOT NULL,
	[TipoDocumento] [varchar](10) NOT NULL,
	[NroDocumento] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Direccion] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[CP] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Personas],
 CONSTRAINT [uq_TipoDocumento_NumeroDocumento] UNIQUE NONCLUSTERED 
(
	[TipoDocumento] ASC,
	[NroDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Personas]
) ON [Personas]
GO
/****** Object:  Table [dbo].[Socios]    Script Date: 5/11/2020 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Socios](
	[CodigoSocio] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCategoria] [int] NOT NULL,
	[CodigoPersona] [int] NOT NULL,
	[Saldo] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoSocio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [JuegosSocios]
) ON [JuegosSocios]
GO
/****** Object:  Table [dbo].[Alquileres]    Script Date: 5/11/2020 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alquileres](
	[CodigoAlquiler] [int] IDENTITY(1,1) NOT NULL,
	[CodigoJuego] [int] NOT NULL,
	[CodigoFormato] [int] NOT NULL,
	[FechaRetiro] [datetime] NOT NULL,
	[FechaDevolucion] [datetime] NULL,
	[CodigoSocio] [int] NOT NULL,
	[CostoPorDia] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoAlquiler] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Alquileres]
) ON [Alquileres]
GO
/****** Object:  Table [dbo].[AlquileresCosto]    Script Date: 5/11/2020 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlquileresCosto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoAlquiler] [int] NOT NULL,
	[Costo] [float] NULL,
	[FechaPago] [datetime] NULL,
	[EstadoPago] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Alquileres]
) ON [Alquileres]
GO
/****** Object:  View [dbo].[AlquileresPersonasJuegos]    Script Date: 5/11/2020 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Crear una vista que muestre el costo de cada alquiler de un usuario y si lo debe,
junto con el total de alquileres de un usurio y el juego que alquilo con su costo unitario.
*/
CREATE VIEW [dbo].[AlquileresPersonasJuegos] AS
	SELECT p.Nombre,
	p.Apellido,
	p.Email,
	s.CodigoSocio,
	a.CodigoAlquiler,
	j.Nombre as 'Nombre juego',
	a.FechaRetiro,
	a.FechaDevolucion,
	a.CostoPorDia, 
	ac.Costo, 
	ac.EstadoPago, 
	ac.FechaPago,
	s.Saldo as 'deuda total'
	FROM dbo.AlquileresCosto ac, dbo.Alquileres a, dbo.Socios s, dbo.Personas p, dbo.Juegos j
	WHERE a.CodigoSocio = s.CodigoSocio
	AND s.CodigoPersona = p.CodigoPersona
	AND a.CodigoAlquiler = ac.CodigoAlquiler
	AND j.CodigoJuego = a.CodigoJuego;

GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 5/11/2020 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[CodigoCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Descuento] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [EntidadesComunes]
) ON [EntidadesComunes]
GO
/****** Object:  Table [dbo].[Formatos]    Script Date: 5/11/2020 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formatos](
	[CodigoFormato] [int] IDENTITY(1,1) NOT NULL,
	[TipoConsola] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoFormato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [EntidadesComunes]
) ON [EntidadesComunes]
GO
/****** Object:  Table [dbo].[Generos]    Script Date: 5/11/2020 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos](
	[CodigoGenero] [int] IDENTITY(1,1) NOT NULL,
	[Detalle] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [EntidadesComunes]
) ON [EntidadesComunes]
GO
/****** Object:  Table [dbo].[JuegosFormatos]    Script Date: 5/11/2020 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JuegosFormatos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoJuego] [int] NOT NULL,
	[CodigoFormato] [int] NOT NULL,
	[PrecioJuego] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [JuegosFormatoGenero]
) ON [JuegosFormatoGenero]
GO
/****** Object:  Table [dbo].[JuegosGeneros]    Script Date: 5/11/2020 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JuegosGeneros](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoGenero] [int] NOT NULL,
	[CodigoJuego] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [JuegosFormatoGenero]
) ON [JuegosFormatoGenero]
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 5/11/2020 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidades](
	[CP] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [EntidadesComunes]
) ON [EntidadesComunes]
GO
ALTER TABLE [dbo].[Alquileres]  WITH CHECK ADD  CONSTRAINT [fk_FormatosAlquileres] FOREIGN KEY([CodigoFormato])
REFERENCES [dbo].[Formatos] ([CodigoFormato])
GO
ALTER TABLE [dbo].[Alquileres] CHECK CONSTRAINT [fk_FormatosAlquileres]
GO
ALTER TABLE [dbo].[Alquileres]  WITH CHECK ADD  CONSTRAINT [fk_JuegosAlquileres] FOREIGN KEY([CodigoJuego])
REFERENCES [dbo].[Juegos] ([CodigoJuego])
GO
ALTER TABLE [dbo].[Alquileres] CHECK CONSTRAINT [fk_JuegosAlquileres]
GO
ALTER TABLE [dbo].[Alquileres]  WITH CHECK ADD  CONSTRAINT [fk_Socios] FOREIGN KEY([CodigoSocio])
REFERENCES [dbo].[Socios] ([CodigoSocio])
GO
ALTER TABLE [dbo].[Alquileres] CHECK CONSTRAINT [fk_Socios]
GO
ALTER TABLE [dbo].[AlquileresCosto]  WITH CHECK ADD  CONSTRAINT [fk_AlquileresCosto] FOREIGN KEY([CodigoAlquiler])
REFERENCES [dbo].[Alquileres] ([CodigoAlquiler])
GO
ALTER TABLE [dbo].[AlquileresCosto] CHECK CONSTRAINT [fk_AlquileresCosto]
GO
ALTER TABLE [dbo].[JuegosFormatos]  WITH CHECK ADD  CONSTRAINT [fk_Formatos] FOREIGN KEY([CodigoFormato])
REFERENCES [dbo].[Formatos] ([CodigoFormato])
GO
ALTER TABLE [dbo].[JuegosFormatos] CHECK CONSTRAINT [fk_Formatos]
GO
ALTER TABLE [dbo].[JuegosFormatos]  WITH CHECK ADD  CONSTRAINT [fk_JuegosFormatos] FOREIGN KEY([CodigoJuego])
REFERENCES [dbo].[Juegos] ([CodigoJuego])
GO
ALTER TABLE [dbo].[JuegosFormatos] CHECK CONSTRAINT [fk_JuegosFormatos]
GO
ALTER TABLE [dbo].[JuegosGeneros]  WITH CHECK ADD  CONSTRAINT [fk_Generos] FOREIGN KEY([CodigoGenero])
REFERENCES [dbo].[Generos] ([CodigoGenero])
GO
ALTER TABLE [dbo].[JuegosGeneros] CHECK CONSTRAINT [fk_Generos]
GO
ALTER TABLE [dbo].[JuegosGeneros]  WITH CHECK ADD  CONSTRAINT [fk_Juegos] FOREIGN KEY([CodigoJuego])
REFERENCES [dbo].[Juegos] ([CodigoJuego])
GO
ALTER TABLE [dbo].[JuegosGeneros] CHECK CONSTRAINT [fk_Juegos]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [fk_Localidades] FOREIGN KEY([CP])
REFERENCES [dbo].[Localidades] ([CP])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [fk_Localidades]
GO
ALTER TABLE [dbo].[Socios]  WITH CHECK ADD  CONSTRAINT [fk_Categorias] FOREIGN KEY([CodigoCategoria])
REFERENCES [dbo].[Categorias] ([CodigoCategoria])
GO
ALTER TABLE [dbo].[Socios] CHECK CONSTRAINT [fk_Categorias]
GO
ALTER TABLE [dbo].[Socios]  WITH CHECK ADD  CONSTRAINT [fk_Personas] FOREIGN KEY([CodigoPersona])
REFERENCES [dbo].[Personas] ([CodigoPersona])
GO
ALTER TABLE [dbo].[Socios] CHECK CONSTRAINT [fk_Personas]
GO
ALTER TABLE [dbo].[Alquileres]  WITH CHECK ADD  CONSTRAINT [CHK_CostoPorDia] CHECK  (([CostoPorDia]>=(0)))
GO
ALTER TABLE [dbo].[Alquileres] CHECK CONSTRAINT [CHK_CostoPorDia]
GO
ALTER TABLE [dbo].[Alquileres]  WITH CHECK ADD  CONSTRAINT [CHK_FechaDevolucion] CHECK  (([FechaDevolucion] IS NOT NULL AND [FechaDevolucion]>=[FechaRetiro] OR [FechaDevolucion] IS NULL))
GO
ALTER TABLE [dbo].[Alquileres] CHECK CONSTRAINT [CHK_FechaDevolucion]
GO
ALTER TABLE [dbo].[AlquileresCosto]  WITH CHECK ADD  CONSTRAINT [CHK_Costo] CHECK  (([Costo]>=(0)))
GO
ALTER TABLE [dbo].[AlquileresCosto] CHECK CONSTRAINT [CHK_Costo]
GO
ALTER TABLE [dbo].[AlquileresCosto]  WITH CHECK ADD  CONSTRAINT [CHK_FechaPago] CHECK  (([EstadoPago]='DEBE' AND [FechaPago] IS NULL OR [EstadoPago]='PAGADO' AND [FechaPago] IS NOT NULL))
GO
ALTER TABLE [dbo].[AlquileresCosto] CHECK CONSTRAINT [CHK_FechaPago]
GO
ALTER TABLE [dbo].[Categorias]  WITH CHECK ADD  CONSTRAINT [CHK_DescuentoPrecio] CHECK  (([Descuento]>=(0)))
GO
ALTER TABLE [dbo].[Categorias] CHECK CONSTRAINT [CHK_DescuentoPrecio]
GO
ALTER TABLE [dbo].[Juegos]  WITH CHECK ADD  CONSTRAINT [CHK_CantDisponible] CHECK  (([CantDisponible]>=(0)))
GO
ALTER TABLE [dbo].[Juegos] CHECK CONSTRAINT [CHK_CantDisponible]
GO
ALTER TABLE [dbo].[JuegosFormatos]  WITH CHECK ADD  CONSTRAINT [CHK_PrecioJuego] CHECK  (([PrecioJuego]>=(0)))
GO
ALTER TABLE [dbo].[JuegosFormatos] CHECK CONSTRAINT [CHK_PrecioJuego]
GO
ALTER TABLE [dbo].[Socios]  WITH CHECK ADD  CONSTRAINT [CHK_SaldoSocio] CHECK  (([Saldo]>=(0)))
GO
ALTER TABLE [dbo].[Socios] CHECK CONSTRAINT [CHK_SaldoSocio]
GO
/****** Object:  StoredProcedure [dbo].[CrearJuego]    Script Date: 5/11/2020 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CrearJuego]
 (
	@Nombre varchar(30), 
	@Cantidad int, 
	@CodigoGenero int,
	@CodigoFormato int,
	@Precio float
 )
AS
BEGIN
BEGIN TRANSACTION
	DECLARE @CodigoJuego int;
    SAVE TRANSACTION GuardadoAnterior;
	BEGIN TRY
		INSERT INTO dbo.Juegos
		VALUES(@Nombre, @Cantidad);

		SELECT @CodigoJuego = SCOPE_IDENTITY();

		INSERT INTO dbo.JuegosFormatos
		VALUES(@CodigoJuego, @CodigoFormato, @Precio);

		INSERT INTO dbo.JuegosGeneros
		VALUES(@CodigoGenero, @CodigoJuego);
	COMMIT TRANSACTION 
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION GuardadoAnterior; -- Rollback GuardadoAnterior
        END
    END CATCH
END;
GO
