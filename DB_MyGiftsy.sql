USE [DB_MyGiftsy]
GO
/****** Object:  Table [dbo].[CGErrorLog]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CGErrorLog](
	[ErrorId] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NULL,
	[SPName] [nvarchar](max) NULL,
	[TableName] [nvarchar](max) NULL,
	[Mode] [int] NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[ErrorCode] [nvarchar](50) NULL,
	[LineNumber] [int] NULL,
	[EnterDate] [datetime] NULL,
 CONSTRAINT [PK_ErrorLog] PRIMARY KEY CLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterLogin]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterLogin](
	[LoginMasterId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[EmailId] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[UserCode] [nvarchar](max) NULL,
	[VerificationCode] [nvarchar](max) NULL,
	[ProfileMasterId] [int] NULL,
	[LoginTypeId] [int] NULL,
	[Active] [int] NULL,
	[FirstLogin] [int] NULL,
	[EnterById] [int] NULL,
	[EnterByDate] [datetime] NULL,
	[ModifiedById] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[MasterLicenceId] [int] NULL,
 CONSTRAINT [PK_LoginMaster] PRIMARY KEY CLUSTERED 
(
	[LoginMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterProfile]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterProfile](
	[ProfileMasterId] [int] IDENTITY(1,1) NOT NULL,
	[ProfileName] [nvarchar](max) NULL,
	[ProfileDescription] [nvarchar](max) NULL,
	[ProfileCode] [nvarchar](max) NULL,
	[Active] [int] NULL,
	[EnterById] [int] NULL,
	[EnterByDate] [datetime] NULL,
	[ModifiedById] [int] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MasterBanner]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MasterBanner](
	[Master_Banner_Id] [int] IDENTITY(1,1) NOT NULL,
	[Banner_Title] [varchar](100) NULL,
	[Bannger_Img_URL] [nvarchar](100) NULL,
	[Is_Active] [bit] NULL,
	[Sequence] [int] NULL,
	[Created_by] [int] NULL,
	[Created_on] [datetime] NULL,
	[Modified_by] [int] NULL,
	[Modified_on] [datetime] NULL,
 CONSTRAINT [PK_tbl_MasterBanner] PRIMARY KEY CLUSTERED 
(
	[Master_Banner_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MasterCategory]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MasterCategory](
	[Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Category_Title] [varchar](100) NULL,
	[Sequence] [int] NULL,
	[category_image_URL] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created_by] [int] NULL,
	[Created_on] [datetime] NULL,
	[Modified_by] [int] NULL,
	[Modified_on] [datetime] NULL,
 CONSTRAINT [PK_tbl_Category] PRIMARY KEY CLUSTERED 
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MasterProduct]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MasterProduct](
	[Product_Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Title] [varchar](100) NULL,
	[Product_category_id] [int] NULL,
	[sub_category_id] [int] NULL,
	[Product_Description] [varchar](100) NULL,
	[product_size] [varchar](50) NULL,
	[is_active] [bit] NULL,
	[Created_by] [int] NULL,
	[Created_on] [datetime] NULL,
	[Modified_by] [int] NULL,
	[Modified_on] [datetime] NULL,
	[product_image] [varchar](100) NULL,
 CONSTRAINT [PK_tbl_ProductMaster] PRIMARY KEY CLUSTERED 
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MasterProduct_Price_Size]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MasterProduct_Price_Size](
	[Size_Price_Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NULL,
	[Size] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[Is_active] [bit] NULL,
	[Created_by] [int] NULL,
	[Created_on] [datetime] NULL,
	[Modified_by] [int] NULL,
	[Modified_on] [datetime] NULL,
 CONSTRAINT [PK_tbl_MasterProduct_Price_Size] PRIMARY KEY CLUSTERED 
(
	[Size_Price_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_MasterCategory] ADD  CONSTRAINT [DF_tbl_MasterCategory_Created_on]  DEFAULT (getdate()) FOR [Created_on]
GO
/****** Object:  StoredProcedure [dbo].[mygiftsy_usp_AddCategoryDetails]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[mygiftsy_usp_AddCategoryDetails]
(
@CategoryId INT,
@CategoryTitle varchar(100),
@Sequence INT,
@IsActive Bit,
@CreatedBy INT,
@response_message varchar(100) OUTPUT
)
AS
BEGIN
	BEGIN TRY
	BEGIN TRANSACTION
		
			INSERT INTO tbl_MasterCategory (Category_Title,Sequence,IsActive,Created_by,Created_on)
			VALUES (@CategoryTitle,@Sequence,@IsActive,@CreatedBy,GETDATE())
			
			set @response_message = 'SUCCESS'

	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
	ROLLBACK TRANSACTION
	set @response_message = ERROR_MESSAGE()
	INSERT INTO CGErrorLog(MasterId,SPName,TableName,ErrorMessage,LineNumber,EnterDate) 
	VALUES (@CategoryId,'mygiftsy_usp_AddCategoryDetails','tbl_MasterCategory',ERROR_MESSAGE(),ERROR_LINE(),GETDATE())
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[mygiftsy_usp_CheckUser]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec [dbo].[mygiftsy_usp_CheckUser] 'naktodemayur@gmail.com','P@ss@123'

CREATE procedure [dbo].[mygiftsy_usp_CheckUser]
(
@UserEmail nvarchar(50),
@Password nvarchar(20)
)
AS
Begin

	SELECT A.LoginMasterId,A.EmailId,B.ProfileName 
	FROM [dbo].[MasterLogin] A
	INNER JOIN [dbo].[MasterProfile] B 
	ON A.ProfileMasterId = B.ProfileMasterId
	WHERE A.EmailId =@UserEmail AND A.[Password] =@Password

End
GO
/****** Object:  StoredProcedure [dbo].[mygiftsy_usp_DeleteCategoryDetails]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--declare @reponse varchar(100)
--exec mygiftsy_usp_DeleteCategoryDetails 3,@reponse
--select @reponse

CREATE PROCEDURE [dbo].[mygiftsy_usp_DeleteCategoryDetails]
(
@CategoryId INT,
@return_message varchar(100) output 
)
AS
BEGIN
	BEGIN TRY
	BEGIN TRANSACTION

		IF EXISTS (SELECT 1 FROM tbl_MasterCategory WHERE Category_Id = @CategoryId)
		BEGIN	
			select 'E1'
			UPDATE tbl_MasterCategory SET IsActive = 0 
			WHERE Category_Id =@CategoryId

			SET @return_message = 'Success'
			 
		END
		ELSE
		BEGIN
		select 'E2'
			SET @return_message =  'RECORD NOT FOUND'
			return
		 
		END

	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
	ROLLBACK TRANSACTION
	select 'E'
	     SET @return_message = ERROR_MESSAGE()
	INSERT INTO CGErrorLog(MasterId,SPName,TableName,ErrorMessage,LineNumber,EnterDate) 
	VALUES (@CategoryId,'mygiftsy_usp_DeleteCategoryDetails','tbl_MasterCategory',ERROR_MESSAGE(),ERROR_LINE(),GETDATE())
	END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[mygiftsy_usp_GetAllCategory]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mygiftsy_usp_GetAllCategory]
AS
BEGIN

SELECT Category_Id,Category_Title,category_image_URL,IsNull(IsActive,0) AS IsActive,ISNULL(Sequence,0) as Sequence
	   FROM [dbo].[tbl_MasterCategory] where IsActive=1
	
end
GO
/****** Object:  StoredProcedure [dbo].[mygiftsy_usp_GetCategoryById]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[mygiftsy_usp_GetCategoryById]
(
@CategoryId INT
--@response_message varchar(max) output
)
AS
Begin
	Begin Try
	Begin Transaction

	  if Exists (Select 1 from  dbo.tbl_masterCategory where Category_Id =@CategoryId)
	  Begin
			
			Select Category_Id,Category_Title,Sequence,IsActive from dbo.tbl_masterCategory
			where Category_Id =@CategoryId
		
			--set @response_message = 'Success'

	  End
	  Else
	  --Begin
			----set @response_message = 'Record Not Found'
	  --End

	  Commit Transaction
	  End Try
	  Begin Catch
	  RollBack Transaction
		--set @response_message = Error_message()

		INSERT INTO CGErrorLog(MasterId,SPName,TableName,ErrorMessage,LineNumber,EnterDate) 
	VALUES (@CategoryId,'mygiftsy_usp_GetCategoryById','tbl_MasterCategory',ERROR_MESSAGE(),ERROR_LINE(),GETDATE())
	END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[mygiftsy_usp_SearchCategory]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec [dbo].[mygiftsy_usp_SearchCategory] 'b'

CREATE PROCEDURE [dbo].[mygiftsy_usp_SearchCategory]
(
@search NVARCHAR(MAX)
)
AS
BEGIN
	
	SELECT Category_Id,Category_Title,Sequence,IsActive 
	FROM dbo.tbl_masterCategory
    WHERE Category_Title = @search --LIKE '%' + @search +'%'

END
GO
/****** Object:  StoredProcedure [dbo].[mygiftsy_usp_SP_DropDownFill]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mygiftsy_usp_SP_DropDownFill]
(
@Code varchar(50)
)
AS
BEGIN
BEGIN TRY


IF(@Code ='CategoryList')
BEGIN

	SELECT Category_Id AS MasterId,
	       Category_Title AS MasterValue 
          FROM tbl_MasterCategory
	ORDER BY Category_Title

END



END TRY
BEGIN CATCH
INSERT INTO CGErrorLog(MasterId,SPName,TableName,ErrorMessage,LineNumber,EnterDate) 
	VALUES (001,'SP_DropDownFill','SP_DropDownFill',ERROR_MESSAGE(),ERROR_LINE(),GETDATE())	
END CATCH 
End
GO
/****** Object:  StoredProcedure [dbo].[mygiftsy_usp_UpdateCategoryDetails]    Script Date: 09-May-24 10:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[mygiftsy_usp_UpdateCategoryDetails]
(
@Category_Id INT,
@CategoryTitle varchar(100),
@Sequence INT,
@IsActive Bit,
@ModifiedBy INT,
@response_message varchar(100) output
)
AS
BEGIN
	BEGIN TRY
	BEGIN TRANSACTION

		IF EXISTS(SELECT 1  FROM tbl_MasterCategory WHERE Category_Id =@Category_Id)
		BEGIN
			UPDATE tbl_MasterCategory 
				   SET Category_Title=@CategoryTitle,
					   Sequence=@Sequence,
					   IsActive =@IsActive,
					   Modified_by=@ModifiedBy,
					   Modified_on = GETDATE()
					   WHERE Category_Id = @Category_Id

		Set @response_message = 'SUCCESS'
		END

	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
	ROLLBACK TRANSACTION
	Set @response_message = ERROR_MESSAGE()
	INSERT INTO CGErrorLog(MasterId,SPName,TableName,ErrorMessage,LineNumber,EnterDate) 
	VALUES (@Category_Id,'mygiftsy_usp_UpdateCategoryDetails','tbl_MasterCategory',ERROR_MESSAGE(),ERROR_LINE(),GETDATE())
	END CATCH
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table for to log the erros which will occure via stored procedure.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CGErrorLog', @level2type=N'COLUMN',@level2name=N'ErrorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'here system will save all the user''s login details/credentails' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MasterLogin', @level2type=N'COLUMN',@level2name=N'LoginMasterId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'system will save all the profile  details. this is master table where user can add new profile as per the business requirement.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MasterProfile', @level2type=N'COLUMN',@level2name=N'ProfileMasterId'
GO
