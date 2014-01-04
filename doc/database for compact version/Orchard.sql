CREATE TABLE [Settings_SiteSettingsPartRecord] (
  [Id] int NOT NULL
, [SiteSalt] nvarchar(255) NULL
, [SiteName] nvarchar(255) NULL
, [SuperUser] nvarchar(255) NULL
, [PageTitleSeparator] nvarchar(255) NULL
, [HomePage] nvarchar(255) NULL
, [SiteCulture] nvarchar(255) NULL
, [ResourceDebugMode] nvarchar(255) DEFAULT 'FromAppSetting' NULL
, [PageSize] int NULL
, [SiteTimeZone] nvarchar(255) NULL
);
GO
CREATE TABLE [Settings_SiteSettings2PartRecord] (
  [Id] int NOT NULL
, [BaseUrl] nvarchar(255) NULL
);
GO
CREATE TABLE [Settings_ShellStateRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [Unused] nvarchar(255) NULL
);
GO
CREATE TABLE [Settings_ShellParameterRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [Component] nvarchar(255) NULL
, [Name] nvarchar(255) NULL
, [Value] nvarchar(255) NULL
, [ShellDescriptorRecord_id] int NULL
);
GO
CREATE TABLE [Settings_ShellFeatureStateRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [Name] nvarchar(255) NULL
, [InstallState] nvarchar(255) NULL
, [EnableState] nvarchar(255) NULL
, [ShellStateRecord_Id] int NULL
);
GO
CREATE TABLE [Settings_ShellFeatureRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [Name] nvarchar(255) NULL
, [ShellDescriptorRecord_id] int NULL
);
GO
CREATE TABLE [Settings_ShellDescriptorRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [SerialNumber] int NULL
);
GO
CREATE TABLE [Settings_ContentTypePartDefinitionRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [Settings] ntext NULL
, [ContentPartDefinitionRecord_id] int NULL
, [ContentTypeDefinitionRecord_Id] int NULL
);
GO
CREATE TABLE [Settings_ContentTypeDefinitionRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [Name] nvarchar(255) NULL
, [DisplayName] nvarchar(255) NULL
, [Hidden] bit NULL
, [Settings] ntext NULL
);
GO
CREATE TABLE [Settings_ContentPartFieldDefinitionRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [Name] nvarchar(255) NULL
, [Settings] ntext NULL
, [ContentFieldRecord_id] int NULL
, [ContentPartDefinitionRecord_Id] int NULL
);
GO
CREATE TABLE [Settings_ContentPartDefinitionRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [Name] nvarchar(255) NULL
, [Hidden] bit NULL
, [Settings] ntext NULL
);
GO
CREATE TABLE [Settings_ContentFieldRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [Name] nvarchar(255) NULL
);
GO
CREATE TABLE [Orchard_Themes_ThemeSiteSettingsPartRecord] (
  [Id] int NOT NULL
, [CurrentThemeName] nvarchar(255) NULL
);
GO
CREATE TABLE [Orchard_Framework_DataMigrationRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [DataMigrationClass] nvarchar(255) NULL
, [Version] int NULL
);
GO
CREATE TABLE [Orchard_Framework_CultureRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [Culture] nvarchar(255) NULL
);
GO
CREATE TABLE [Orchard_Framework_ContentTypeRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [Name] nvarchar(255) NULL
);
GO
CREATE TABLE [Orchard_Framework_ContentItemVersionRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [VersionNumber] int NULL
, [Published] bit NULL
, [Latest] bit NULL
, [Data] nvarchar(255) NULL
, [ContentItemRecord_id] int NOT NULL
);
GO
CREATE TABLE [Orchard_Framework_ContentItemRecord] (
  [Id] int IDENTITY (100,1) NOT NULL
, [Data] nvarchar(255) NULL
, [ContentType_id] int NULL
);
GO


INSERT INTO [Settings_SiteSettingsPartRecord] ([Id],[SiteSalt],[SiteName],[SuperUser],[PageTitleSeparator],[HomePage],[SiteCulture],[ResourceDebugMode],[PageSize],[SiteTimeZone]) VALUES (1,N'c8147e8dab1c4130b33bd24b803163f6',N'Orchard',N'admin',N' - ',NULL,N'en-US',N'FromAppSetting',10,N'China Standard Time');
GO
INSERT INTO [Settings_SiteSettings2PartRecord] ([Id],[BaseUrl]) VALUES (1,N'http://localhost:30321/OrchardLocal');
GO
SET IDENTITY_INSERT [Settings_ShellStateRecord] ON;
GO
INSERT INTO [Settings_ShellStateRecord] ([Id],[Unused]) VALUES (1,NULL);
GO
SET IDENTITY_INSERT [Settings_ShellStateRecord] OFF;
GO
SET IDENTITY_INSERT [Settings_ShellParameterRecord] OFF;
GO
SET IDENTITY_INSERT [Settings_ShellFeatureStateRecord] ON;
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (1,N'Orchard.Framework',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (10,N'Settings',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (11,N'Shapes',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (15,N'Orchard.Themes',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (18,N'Orchard.Modules',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (26,N'Orchard.jQuery',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (44,N'TheThemeMachine',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (45,N'Orchard.Home',N'Up',N'Up',1);
GO
SET IDENTITY_INSERT [Settings_ShellFeatureStateRecord] OFF;
GO
SET IDENTITY_INSERT [Settings_ShellFeatureRecord] ON;
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (23,N'Orchard.Framework',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (32,N'Settings',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (33,N'Shapes',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (37,N'Orchard.Themes',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (40,N'Orchard.Modules',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (48,N'Orchard.jQuery',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (49,N'Orchard.PublishLater',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (50,N'Orchard.jQuery',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (91,N'TheThemeMachine',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (92,N'Orchard.Home',1);
GO
SET IDENTITY_INSERT [Settings_ShellFeatureRecord] OFF;
GO
SET IDENTITY_INSERT [Settings_ShellDescriptorRecord] ON;
GO
INSERT INTO [Settings_ShellDescriptorRecord] ([Id],[SerialNumber]) VALUES (1,2);
GO
SET IDENTITY_INSERT [Settings_ShellDescriptorRecord] OFF;
GO
SET IDENTITY_INSERT [Settings_ContentTypePartDefinitionRecord] OFF;
GO
SET IDENTITY_INSERT [Settings_ContentTypeDefinitionRecord] ON;
GO
INSERT INTO [Settings_ContentTypeDefinitionRecord] ([Id],[Name],[DisplayName],[Hidden],[Settings]) VALUES (1,N'Site',N'Site',0,N'<settings />');
GO
INSERT INTO [Settings_ContentTypeDefinitionRecord] ([Id],[Name],[DisplayName],[Hidden],[Settings]) VALUES (10,N'User',N'User',0,N'<settings ContentTypeSettings.Creatable="False" />');
GO
SET IDENTITY_INSERT [Settings_ContentTypeDefinitionRecord] OFF;
GO
SET IDENTITY_INSERT [Settings_ContentPartFieldDefinitionRecord] OFF;
GO
SET IDENTITY_INSERT [Settings_ContentPartDefinitionRecord] OFF;
GO
SET IDENTITY_INSERT [Settings_ContentFieldRecord] OFF;
GO
INSERT INTO [Orchard_Themes_ThemeSiteSettingsPartRecord] ([Id],[CurrentThemeName]) VALUES (1,N'TheThemeMachine');
GO
SET IDENTITY_INSERT [Orchard_Framework_DataMigrationRecord] ON;
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (1,N'Orchard.Core.Settings.Migrations',4);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (2,N'Orchard.ContentManagement.DataMigrations.FrameworkDataMigration',2);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (10,N'Orchard.Themes.ThemesDataMigration',1);
GO
SET IDENTITY_INSERT [Orchard_Framework_DataMigrationRecord] OFF;
GO
SET IDENTITY_INSERT [Orchard_Framework_CultureRecord] ON;
GO
INSERT INTO [Orchard_Framework_CultureRecord] ([Id],[Culture]) VALUES (1,N'en-US');
GO
SET IDENTITY_INSERT [Orchard_Framework_CultureRecord] OFF;
GO
SET IDENTITY_INSERT [Orchard_Framework_ContentTypeRecord] ON;
GO
INSERT INTO [Orchard_Framework_ContentTypeRecord] ([Id],[Name]) VALUES (1,N'Site');
GO
INSERT INTO [Orchard_Framework_ContentTypeRecord] ([Id],[Name]) VALUES (2,N'User');
GO
SET IDENTITY_INSERT [Orchard_Framework_ContentTypeRecord] OFF;
GO
SET IDENTITY_INSERT [Orchard_Framework_ContentItemVersionRecord] ON;
GO
INSERT INTO [Orchard_Framework_ContentItemVersionRecord] ([Id],[VersionNumber],[Published],[Latest],[Data],[ContentItemRecord_id]) VALUES (1,1,1,1,NULL,1);
GO
INSERT INTO [Orchard_Framework_ContentItemVersionRecord] ([Id],[VersionNumber],[Published],[Latest],[Data],[ContentItemRecord_id]) VALUES (2,1,1,1,NULL,2);
GO
SET IDENTITY_INSERT [Orchard_Framework_ContentItemVersionRecord] OFF;
GO
SET IDENTITY_INSERT [Orchard_Framework_ContentItemRecord] ON;
GO
INSERT INTO [Orchard_Framework_ContentItemRecord] ([Id],[Data],[ContentType_id]) VALUES (1,NULL,1);
GO
INSERT INTO [Orchard_Framework_ContentItemRecord] ([Id],[Data],[ContentType_id]) VALUES (2,NULL,2);
GO
SET IDENTITY_INSERT [Orchard_Framework_ContentItemRecord] OFF;
GO


ALTER TABLE [Settings_SiteSettingsPartRecord] ADD CONSTRAINT [PK__Settings_SiteSettingsPartRecord__00000000000000AB] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_SiteSettings2PartRecord] ADD CONSTRAINT [PK__Settings_SiteSettings2PartRecord__00000000000000B5] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ShellStateRecord] ADD CONSTRAINT [PK__Settings_ShellStateRecord__000000000000008E] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ShellParameterRecord] ADD CONSTRAINT [PK__Settings_ShellParameterRecord__0000000000000084] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ShellFeatureStateRecord] ADD CONSTRAINT [PK__Settings_ShellFeatureStateRecord__0000000000000074] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ShellFeatureRecord] ADD CONSTRAINT [PK__Settings_ShellFeatureRecord__0000000000000064] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ShellDescriptorRecord] ADD CONSTRAINT [PK__Settings_ShellDescriptorRecord__0000000000000058] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ContentTypePartDefinitionRecord] ADD CONSTRAINT [PK__Settings_ContentTypePartDefinitionRecord__000000000000004E] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ContentTypeDefinitionRecord] ADD CONSTRAINT [PK__Settings_ContentTypeDefinitionRecord__0000000000000040] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ContentPartFieldDefinitionRecord] ADD CONSTRAINT [PK__Settings_ContentPartFieldDefinitionRecord__0000000000000030] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ContentPartDefinitionRecord] ADD CONSTRAINT [PK__Settings_ContentPartDefinitionRecord__0000000000000020] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ContentFieldRecord] ADD CONSTRAINT [PK__Settings_ContentFieldDefinitionRecord__0000000000000012] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Orchard_Themes_ThemeSiteSettingsPartRecord] ADD CONSTRAINT [PK__Orchard_Themes_ThemeSiteSettingsPartRecord__00000000000001E0] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Orchard_Framework_DataMigrationRecord] ADD CONSTRAINT [PK__Orchard_Framework_DataMigrationRecord__0000000000000008] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Orchard_Framework_CultureRecord] ADD CONSTRAINT [PK__Orchard_Framework_CultureRecord__00000000000000E7] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Orchard_Framework_ContentTypeRecord] ADD CONSTRAINT [PK__Orchard_Framework_ContentTypeRecord__00000000000000DD] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Orchard_Framework_ContentItemVersionRecord] ADD CONSTRAINT [PK__Orchard_Framework_ContentItemVersionRecord__00000000000000D3] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Orchard_Framework_ContentItemRecord] ADD CONSTRAINT [PK__Orchard_Framework_ContentItemRecord__00000000000000C1] PRIMARY KEY ([Id]);
GO

CREATE INDEX [IDX_ContentItemRecord_id] ON [Orchard_Framework_ContentItemVersionRecord] ([ContentItemRecord_id] ASC);
GO
CREATE INDEX [IDX_ContentType_id] ON [Orchard_Framework_ContentItemRecord] ([ContentType_id] ASC);
GO

