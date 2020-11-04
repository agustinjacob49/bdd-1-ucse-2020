/*

Lo mas caro es el flash
despues raid 10
despues raid 5 
Flash : Rapidisimo y caro. 

RAID5 : Balancea costo pero pierde desempeño. 
Tiene alta disponibilidad

Nivel Interno
Discos: 
E_Flash Alquileres (Grande, rapida y muy usada)
F_Flash Personas (Grande rapida y muy usada)
I_RAI10 Juegos Socios (No tan grande, pero es muy usada)
G_RAID10 Juegos/Formatos Juegos/Genero (Son usadas pero chicas)
H_RAID5 Localidades Categorias Generos Formatos(Chicas)
 
 Restriccion de dominio:
 - Tipo de dato 
 Checks : 
 - Condicion (not null or null)
*/
USE [master]
GO

/****** Object:  Database [Juegos]    Script Date: 1/11/2020 22:42:25 ******/
CREATE DATABASE [Juegos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Juegos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.INSTANCE1\MSSQL\DATA\Juegos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [Alquileres] 
( NAME = N'File2_Alquileres', FILENAME = N'E:\TPDB\Discos\F_Flash\File2_Alquileres.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [EntidadesComunes] 
( NAME = N'File5_EntidadesComunes', FILENAME = N'E:\TPDB\Discos\H_RAID5\File5_EntidadesComunes.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [JuegosFormatoGenero] 
( NAME = N'File4_JuegosFormatos', FILENAME = N'E:\TPDB\Discos\G_RAID10\File4_JuegosFormatos.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [JuegosSocios] 
( NAME = N'File3_JuegosSocios', FILENAME = N'E:\TPDB\Discos\I_RAID10\File3_JuegosSocios.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [Personas] 
( NAME = N'File1_Personas', FILENAME = N'E:\TPDB\Discos\E_Flash\File1_Personas.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Juegos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.INSTANCE1\MSSQL\DATA\Juegos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Juegos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Juegos] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Juegos] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Juegos] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Juegos] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Juegos] SET ARITHABORT OFF 
GO

ALTER DATABASE [Juegos] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Juegos] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Juegos] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Juegos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Juegos] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Juegos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Juegos] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Juegos] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Juegos] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Juegos] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Juegos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Juegos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Juegos] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Juegos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Juegos] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Juegos] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Juegos] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Juegos] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Juegos] SET  MULTI_USER 
GO

ALTER DATABASE [Juegos] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Juegos] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Juegos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Juegos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Juegos] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Juegos] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Juegos] SET  READ_WRITE 
GO


use Juegos
go

CREATE TABLE dbo.Formatos(
	[CodigoFormato] int not null identity primary key,
    [TipoConsola] varchar(10) not null
) ON [EntidadesComunes];

go

use Juegos
go

CREATE TABLE dbo.Generos(
	[CodigoGenero] int not null identity primary key,
    [Detalle] varchar(50) not null
) ON [EntidadesComunes];

go

use Juegos
go

CREATE TABLE dbo.Juegos(
	[CodigoJuego] int not null identity primary key,
    [Nombre] varchar(100) not null,
	[CantDisponible] int not null,
	CONSTRAINT CHK_CantDisponible CHECK (CantDisponible >= 0 ),
) ON [JuegosSocios];

/*
Primera restriccion de nivel conceptual.
Existe un check en cant disponible el cual no deja que se decremente la cantdisponible a menos de cero.
*/

go


use Juegos
go

CREATE TABLE dbo.JuegosFormatos(
	[CodigoJuego] int not null,
	[CodigoFormato] int not null,
    [PrecioJuego] float,
	CONSTRAINT CHK_PrecioJuego CHECK (PrecioJuego >= 0 ),
    CONSTRAINT fk_JuegosFormatos FOREIGN KEY (CodigoJuego) REFERENCES dbo.Juegos (CodigoJuego),
	CONSTRAINT fk_Formatos FOREIGN KEY (CodigoFormato) REFERENCES dbo.Formatos (CodigoFormato)
) ON [JuegosFormatoGenero];

go


use Juegos
go

CREATE TABLE dbo.JuegosGeneros(
	[CodigoGenero] int not null,
    [CodigoJuego] int not null,
	CONSTRAINT fk_Generos FOREIGN KEY (CodigoGenero) REFERENCES dbo.Generos (CodigoGenero),
	CONSTRAINT fk_Juegos FOREIGN KEY (CodigoJuego) REFERENCES dbo.Juegos (CodigoJuego)
) ON [JuegosFormatoGenero];

go

use Juegos
go

CREATE TABLE dbo.Localidades(
	[CP] int not null primary key,
    [Nombre] varchar(50) not null
) ON [EntidadesComunes]

go

use Juegos
go

CREATE TABLE dbo.Categorias(
	[CodigoCategoria] int not null identity primary key,
    [Descuento] float not null,
	CONSTRAINT CHK_DescuentoPrecio CHECK (Descuento >= 0 )
) ON [EntidadesComunes]

go

use Juegos
go

CREATE TABLE dbo.Personas(
	[CodigoPersona] int not null identity primary key,
	[TipoDocumento] varchar(10) not null,
	[NroDocumento] int not null,
	[Nombre] varchar(50) not null,
	[Apellido] varchar(50) not null,
	[Direccion] varchar(100) not null,
	[Email] varchar(100) not null,
	[CP] int not null,
	CONSTRAINT fk_Localidades FOREIGN KEY (CP) REFERENCES dbo.Localidades (CP),
	CONSTRAINT uq_TipoDocumento_NumeroDocumento UNIQUE(TipoDocumento, NroDocumento)
) ON [Personas];
go

use Juegos
go

CREATE TABLE dbo.Socios(
	[CodigoSocio] int not null identity primary key,
	[CodigoCategoria] int not null,
	[CodigoPersona] int not null,
	[Saldo] float null,
	CONSTRAINT CHK_SaldoSocio CHECK (Saldo >= 0 ),
	CONSTRAINT fk_Personas FOREIGN KEY (CodigoPersona) REFERENCES dbo.Personas (CodigoPersona),
	CONSTRAINT fk_Categorias FOREIGN KEY (CodigoCategoria) REFERENCES dbo.Categorias (CodigoCategoria)
) ON [JuegosSocios];

go

use Juegos
go

CREATE TABLE dbo.Alquileres(
	[CodigoAlquiler] int not null identity primary key,
	[CodigoJuego] int not null,
	[CodigoFormato] int not null,
	[FechaRetiro] datetime not null,
	[FechaDevolucion] datetime null,
	[CodigoSocio] int not null,
	[CostoPorDia] float not null,
	CONSTRAINT CHK_CostoPorDia CHECK (CostoPorDia >= 0 ),
 	CONSTRAINT CHK_FechaDevolucion CHECK ((FechaDevolucion is NOT NULL AND FechaDevolucion >=FechaRetiro ) OR FechaDevolucion is null),
	CONSTRAINT fk_Socios FOREIGN KEY (CodigoSocio) REFERENCES dbo.Socios (CodigoSocio),
	CONSTRAINT fk_JuegosAlquileres FOREIGN KEY (CodigoJuego) REFERENCES dbo.Juegos (CodigoJuego),
	CONSTRAINT fk_FormatosAlquileres FOREIGN KEY (CodigoFormato) REFERENCES dbo.Formatos (CodigoFormato)
) ON [Alquileres];

use Juegos
go


CREATE TABLE dbo.AlquileresCosto(
	[Id] int not null identity primary key,
	[CodigoAlquiler] int not null,
	[Costo] float null,
	[FechaPago] datetime null,
	[EstadoPago] varchar(10) not null,
 	CONSTRAINT CHK_FechaPago CHECK ((EstadoPago = 'DEBE' and FechaPago is null) OR (EstadoPago = 'PAGADO' and FechaPago is not null)),
	CONSTRAINT CHK_Costo CHECK (Costo >= 0 ),
	CONSTRAINT fk_AlquileresCosto FOREIGN KEY (CodigoAlquiler) REFERENCES dbo.Alquileres (CodigoAlquiler)
) ON [Alquileres];

/* cuando hay un insert en alquiler debemos bajar la cant disponible de juego */
GO

use Juegos
go

CREATE TRIGGER BajarUnidadesDisponibles
ON dbo.Alquileres
 AFTER INSERT AS 
	DECLARE @UnidadesDisponibles int,
	@CodigoJuego int;
 
	SELECT @CodigoJuego = ins.CodigoJuego FROM INSERTED ins;
	SELECT @UnidadesDisponibles = j.CantDisponible FROM dbo.Juegos j WHERE j.CodigoJuego = @CodigoJuego

	IF (@UnidadesDisponibles = 0)
	BEGIN
		RAISERROR ('Error. Las unidades disponibles son 0', 16, 1);
		ROLLBACK TRANSACTION;
		RETURN;
	END

	UPDATE dbo.Juegos SET CantDisponible = @UnidadesDisponibles - 1
	WHERE CodigoJuego = @CodigoJuego

GO

use Juegos
go

/*Cuando se actualiza la fecha de devolucion, SUBE CANTIDAD DISPONIBLE DE JUEGO,  insert en alquileresCosto*/
GO

CREATE TRIGGER CargarTablaAlquileresCosto
ON dbo.Alquileres
 AFTER UPDATE AS 
 IF UPDATE(FechaDevolucion)
 BEGIN
	DECLARE @Costo float,
	@DiasAlquiler int,
	@CodigoSocio int,
	@SaldoViejo float,
	@UnidadesDisponibles int,
	@CodigoJuego int,
	@CodigoAlquiler int;

	SELECT @CodigoJuego = ins.CodigoJuego FROM INSERTED ins;
	SELECT @CodigoAlquiler = ins.CodigoAlquiler FROM INSERTED ins;
	SELECT @UnidadesDisponibles = j.CantDisponible FROM dbo.Juegos j WHERE j.CodigoJuego = @CodigoJuego
	SELECT @DiasAlquiler = (DATEDIFF(day, ins.FechaRetiro, ins.FechaDevolucion)) FROM INSERTED ins;
	SELECT @CodigoSocio = ins.CodigoSocio from INSERTED ins;

	IF (@DiasAlquiler = 0)
	BEGIN
		SELECT @DiasAlquiler = 1
	END

	SELECT @Costo = ins.CostoPorDia * @DiasAlquiler
	FROM INSERTED ins;

	------------------Insert en alquileres costo------------------------

	INSERT INTO dbo.AlquileresCosto 
	(CodigoAlquiler, Costo, FechaPago, EstadoPago)
	VALUES (@CodigoAlquiler, @Costo, null, 'DEBE');

	------------------Actualizar saldo------------------------
	SELECT @SaldoViejo = s.Saldo FROM dbo.Socios s WHERE s.CodigoSocio = @CodigoSocio

	UPDATE dbo.Socios SET Saldo = @SaldoViejo + @Costo
	WHERE CodigoSocio = @CodigoSocio

	------------------- Retornar unidad -----------------------
	UPDATE dbo.Juegos SET CantDisponible = @UnidadesDisponibles + 1
	WHERE CodigoJuego = @CodigoJuego

 END;

GO

/* Cuando se updatea algo en alquileres costo, update a saldo de socio. */

GO
use Juegos
go


CREATE TRIGGER BajarSaldo
ON dbo.AlquileresCosto
 AFTER UPDATE AS 
 IF UPDATE(EstadoPago)
 BEGIN
	DECLARE @SaldoADescontar float,
	@SaldoViejo float,
	@CodigoSocio int;

	SELECT @SaldoADescontar = ins.Costo FROM INSERTED ins;
	SELECT @CodigoSocio = s.CodigoSocio 
	FROM dbo.Socios s, dbo.Alquileres a, INSERTED ins 
	WHERE a.CodigoAlquiler = ins.CodigoAlquiler
	AND a.CodigoSocio = s.CodigoSocio

	SELECT @SaldoViejo = s.Saldo FROM dbo.Socios s WHERE s.CodigoSocio = @CodigoSocio

	UPDATE dbo.Socios SET Saldo = @SaldoViejo - @SaldoADescontar
	WHERE CodigoSocio = @CodigoSocio
 END;

GO

GO

/*
Crear una vista que muestre el costo de cada alquiler de un usuario y si lo debe,
junto con el total de alquileres de un usurio y el juego que alquilo con su costo unitario.
*/
CREATE VIEW AlquileresPersonasJuegos AS
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

use Juegos
go


INSERT INTO dbo.Formatos 
VALUES ('PS5'),
('PS3'),
('XBOX360'),
('XBOXONES');

go

use Juegos
go


INSERT INTO dbo.Generos 
VALUES ('Accion'),
('Aventura'),
('Rol'),
('Simulador');

go

use Juegos
go


INSERT INTO dbo.Juegos
VALUES('Tomb Raider', 100),
('Grand Theft Auto V', 5),
('COD 3', 15),
('Cs Go', 10),
('The sims', 3);
go

use Juegos
go


INSERT INTO dbo.JuegosFormatos
VALUES(1, 1, 450.30),
(1, 2, 350.76),
(2, 1, 250.89),
(2, 3, 90.90),
(3, 3, 125.90),
(3, 1, 58.90),
(4, 1, 199.90),
(5, 2, 52.30 );
go

use Juegos
go

INSERT INTO dbo.JuegosGeneros
VALUES(1, 1),
(2, 1),
(3, 2),
(4, 3),
(4, 5);

use Juegos
go


INSERT INTO dbo.Categorias
VALUES(10),
(12.3),
(20),
(5.5);
go

use Juegos
go


INSERT INTO dbo.Localidades
VALUES(2300, 'Rafaela'),
(3000, 'Santa Fe'),
(3100, 'Parana');
go

use Juegos
go

INSERT INTO dbo.Personas
VALUES ('DNI', 85254780, 'Pepe', 'Perez', 'Oyoli 791', 'pepePerez@gmail.com', 3100),
('DNI', 20145258, 'Alexis','Kilbel', 'Orione 663', 'alexis.kilbel@gmail.com', 3000),
('DNI', 14253652, 'Donna', 'Gonzalez', 'Avenida Brasil 132', 'donna.gonzalez@gmail.com', 2300);
go

use Juegos
go


INSERT INTO dbo.Socios
VALUES(1, 1, 0),
(1, 3, 0),
(2, 2, 0);
go


/*
INSERT INTO dbo.Alquileres
VALUES (1, 1, CONVERT(Datetime, '2020-09-10 18:01:00', 120), null, 1, 120.50);

INSERT INTO dbo.Alquileres
VALUES (2, 1, CONVERT(Datetime, '2020-10-02 10:15:00', 120), null, 1, 99.50);

INSERT INTO dbo.Alquileres
VALUES (3, 2, CONVERT(Datetime, '2020-11-03 09:35:00', 120), null, 1, 210.50);

INSERT INTO dbo.Alquileres
VALUES (1, 2, CONVERT(Datetime, '2020-11-05 09:35:00', 120), null, 2, 180.50);

INSERT INTO dbo.Alquileres
VALUES (4, 2, CONVERT(Datetime, '2020-10-27 09:35:00', 120), null, 2, 45.50);

UPDATE dbo.Alquileres SET FechaDevolucion = CONVERT(Datetime, '2020-09-12 18:01:00', 120)
WHERE CodigoAlquiler = 1

UPDATE dbo.Alquileres SET FechaDevolucion = CONVERT(Datetime, '2020-10-20 18:01:00', 120)
WHERE CodigoAlquiler = 2

UPDATE dbo.Alquileres SET FechaDevolucion = CONVERT(Datetime, '2020-11-09 18:01:00', 120)
WHERE CodigoAlquiler = 3

UPDATE dbo.Alquileres SET FechaDevolucion = CONVERT(Datetime, '2020-11-15 18:01:00', 120)
WHERE CodigoAlquiler = 4

UPDATE dbo.AlquileresCosto SET 
FechaPago = CONVERT(Datetime, '2020-09-12 18:01:00', 120),
EstadoPago = 'PAGADO'
WHERE CodigoAlquiler = 1 

UPDATE dbo.AlquileresCosto SET 
FechaPago = CONVERT(Datetime, '2020-09-12 18:01:00', 120),
EstadoPago = 'PAGADO'
WHERE CodigoAlquiler = 2
*/


/*
CREAR UN SP QUE RECIBA COMO PARAMETROS UN JUEGO Y CARGUE LAS TABLAS DE 
FORMATO JUEGO Y JUEGO GENERO.
USAR TRANSACCIONES 

EXEC dbo.CrearJuego @Nombre = 'NuevoJuegoViaSP', @Cantidad = 10, @CodigoGenero = 1, @CodigoFormato = 1, @Precio = 75.50 
*/
GO

CREATE PROCEDURE dbo.CrearJuego
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
		VALUES(Nombre, @Cantidad);

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

/*
EXEC dbo.CrearJuego @Nombre = 'NuevoJuegoViaSP', @Cantidad = 10, @CodigoGenero = 1, @CodigoFormato = 1, @Precio = 75.50 

*/
