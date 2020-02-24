
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[Detail] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
	[Audit] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[IsDeleted] [bit] NULL,
	[Name] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[IsDeleted] [bit] NULL,
	[BirthDate] [datetime] NULL,
	[IdentityNumber] [nvarchar](11) NULL,
	[Passport] [nvarchar](20) NULL,
	[UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[IsDeleted] [bit] NULL,
	[UserId] [int] NULL,
	[OperationClaimId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
	[Name] [nvarchar](100) NULL,
	[Email] [nvarchar](250) NULL,
	[Phone] [nvarchar](25) NULL,
	[PasswordSalt] [varbinary](500) NULL,
	[PasswordHash] [varbinary](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
