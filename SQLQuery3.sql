USE [Carrental]
GO

/** Object:  Table [dbo].[CarRent]    Script Date: 10-11-2022 16:37:53 **/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CarRent](
	[RentId] [int] NOT NULL,
	[CarId] [int] NULL,
	[CustomerId] [int] NULL,
	[RentOrderDate] [date] NULL,
	[OdoReading] [int] NULL,
	[ReturnDate] [datetime] NULL,
	[ReturnOdoReading] [int] NULL,
	[Licensenumber] [nchar](15) NULL,
 CONSTRAINT [pk_rent] PRIMARY KEY CLUSTERED 
(
	[RentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CarRent]  WITH CHECK ADD  CONSTRAINT [fk_rentcar] FOREIGN KEY([CarId])
REFERENCES [dbo].[Car] ([Carid])
GO