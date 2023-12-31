USE [encuestas]
GO
/****** Object:  Table [dbo].[answers]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[answers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assistants]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assistants](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[detail] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boxes]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boxes](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[detail] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boxes_details]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boxes_details](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[detail] [nvarchar](255) NULL,
	[boxe_id] [bigint] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[detail] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courses]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[type_id] [bigint] NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[hours] [nvarchar](255) NOT NULL,
	[detail] [nvarchar](255) NULL,
	[folder_certification] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[events]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[events](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[schedule_id] [bigint] NOT NULL,
	[code] [nvarchar](255) NOT NULL,
	[detail] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[failed_jobs]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[failed_jobs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[uuid] [nvarchar](255) NOT NULL,
	[connection] [nvarchar](max) NOT NULL,
	[queue] [nvarchar](max) NOT NULL,
	[payload] [nvarchar](max) NOT NULL,
	[exception] [nvarchar](max) NOT NULL,
	[failed_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[migrations]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[migrations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[migration] [nvarchar](255) NOT NULL,
	[batch] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[model_has_permissions]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[model_has_permissions](
	[permission_id] [bigint] NOT NULL,
	[model_type] [nvarchar](255) NOT NULL,
	[model_id] [bigint] NOT NULL,
 CONSTRAINT [model_has_permissions_permission_model_type_primary] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC,
	[model_id] ASC,
	[model_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[model_has_roles]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[model_has_roles](
	[role_id] [bigint] NOT NULL,
	[model_type] [nvarchar](255) NOT NULL,
	[model_id] [bigint] NOT NULL,
 CONSTRAINT [model_has_roles_role_model_type_primary] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[model_id] ASC,
	[model_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[participants]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[participants](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[event_id] [bigint] NOT NULL,
	[dni] [nvarchar](9) NOT NULL,
	[firstname] [nvarchar](255) NOT NULL,
	[lastname] [nvarchar](255) NOT NULL,
	[names] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[datebirth] [date] NOT NULL,
	[cellphone] [nvarchar](20) NOT NULL,
	[photo] [nvarchar](max) NULL,
	[sex] [nvarchar](1) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[email_verified_at] [datetime] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[password_reset_tokens]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[password_reset_tokens](
	[email] [nvarchar](255) NOT NULL,
	[token] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [password_reset_tokens_email_primary] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[password_resets]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[password_resets](
	[email] [nvarchar](255) NOT NULL,
	[token] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permissions]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permissions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[guard_name] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personal_access_tokens]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personal_access_tokens](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[tokenable_type] [nvarchar](255) NOT NULL,
	[tokenable_id] [bigint] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[token] [nvarchar](64) NOT NULL,
	[abilities] [nvarchar](max) NULL,
	[last_used_at] [datetime] NULL,
	[expires_at] [datetime] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questions]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reports]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reports](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[client_id] [bigint] NULL,
	[description] [nvarchar](255) NULL,
	[detail] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role_has_permissions]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role_has_permissions](
	[permission_id] [bigint] NOT NULL,
	[role_id] [bigint] NOT NULL,
 CONSTRAINT [role_has_permissions_permission_id_role_id_primary] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[guard_name] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedules]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedules](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[detail] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[selection_details]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[selection_details](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[detail] [nvarchar](255) NULL,
	[selection_id] [bigint] NOT NULL,
	[associate_detail_id] [bigint] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[selections]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[selections](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[detail] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[associate_id] [bigint] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sessions]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sessions](
	[id] [nvarchar](255) NOT NULL,
	[user_id] [bigint] NULL,
	[ip_address] [nvarchar](45) NULL,
	[user_agent] [nvarchar](max) NULL,
	[payload] [nvarchar](max) NOT NULL,
	[last_activity] [int] NOT NULL,
 CONSTRAINT [sessions_id_primary] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[students]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[description] [nvarchar](255) NULL,
	[detail] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[survey_clients]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[survey_clients](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[survey_detail_id] [bigint] NOT NULL,
	[selection_detail_id] [bigint] NULL,
	[client_id] [bigint] NULL,
	[answer] [nvarchar](255) NULL,
	[option] [nvarchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[survey_details]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[survey_details](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[survey_id] [bigint] NOT NULL,
	[selection_id] [bigint] NULL,
	[question] [nvarchar](max) NOT NULL,
	[type] [nvarchar](255) NOT NULL,
	[option] [nvarchar](max) NULL,
	[requerid] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[detail] [nvarchar](255) NULL,
	[title] [nvarchar](max) NULL,
	[detail_2] [nvarchar](max) NULL,
	[detail_3] [nvarchar](max) NULL,
	[evaluate] [nvarchar](255) NOT NULL,
	[correct] [nvarchar](255) NULL,
	[point] [nvarchar](max) NULL,
	[initialize] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[surveys]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[surveys](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[detail] [nvarchar](255) NULL,
	[url] [nvarchar](255) NULL,
	[date_start] [date] NULL,
	[date_end] [date] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[type] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[pollster_t] [nvarchar](255) NULL,
	[pollster_r] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topics]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topics](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[course_id] [bigint] NOT NULL,
	[detail] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[types]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[types](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[detail] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 9/22/2023 8:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[dni] [nvarchar](9) NULL,
	[firstname] [nvarchar](255) NULL,
	[lastname] [nvarchar](255) NULL,
	[names] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[datebirth] [date] NULL,
	[cellphone] [nvarchar](30) NULL,
	[photo] [nvarchar](max) NULL,
	[sex] [nvarchar](1) NULL,
	[email] [nvarchar](100) NOT NULL,
	[email_verified_at] [datetime] NULL,
	[remember_token] [nvarchar](100) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[google_id] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [description], [detail], [created_at], [updated_at]) VALUES (1, N'Data Science', N'', CAST(N'2023-08-18T21:47:34.357' AS DateTime), CAST(N'2023-08-18T21:47:34.357' AS DateTime))
INSERT [dbo].[categories] ([id], [description], [detail], [created_at], [updated_at]) VALUES (2, N'Programación', N'', CAST(N'2023-08-18T21:47:34.357' AS DateTime), CAST(N'2023-08-18T21:47:34.357' AS DateTime))
INSERT [dbo].[categories] ([id], [description], [detail], [created_at], [updated_at]) VALUES (3, N'Bases de datos', N'', CAST(N'2023-08-18T21:47:34.357' AS DateTime), CAST(N'2023-08-18T21:47:34.357' AS DateTime))
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[clients] ON 

INSERT [dbo].[clients] ([id], [created_at], [updated_at]) VALUES (1, CAST(N'2023-08-18T21:50:16.533' AS DateTime), CAST(N'2023-08-18T21:50:16.533' AS DateTime))
INSERT [dbo].[clients] ([id], [created_at], [updated_at]) VALUES (2, CAST(N'2023-08-18T21:52:23.613' AS DateTime), CAST(N'2023-08-18T21:52:23.613' AS DateTime))
INSERT [dbo].[clients] ([id], [created_at], [updated_at]) VALUES (3, CAST(N'2023-08-19T00:39:18.877' AS DateTime), CAST(N'2023-08-19T00:39:18.877' AS DateTime))
INSERT [dbo].[clients] ([id], [created_at], [updated_at]) VALUES (4, CAST(N'2023-08-19T00:52:28.493' AS DateTime), CAST(N'2023-08-19T00:52:28.493' AS DateTime))
INSERT [dbo].[clients] ([id], [created_at], [updated_at]) VALUES (5, CAST(N'2023-08-19T01:02:06.183' AS DateTime), CAST(N'2023-08-19T01:02:06.183' AS DateTime))
INSERT [dbo].[clients] ([id], [created_at], [updated_at]) VALUES (6, CAST(N'2023-08-19T01:13:43.327' AS DateTime), CAST(N'2023-08-19T01:13:43.327' AS DateTime))
INSERT [dbo].[clients] ([id], [created_at], [updated_at]) VALUES (7, CAST(N'2023-08-19T01:29:04.427' AS DateTime), CAST(N'2023-08-19T01:29:04.427' AS DateTime))
SET IDENTITY_INSERT [dbo].[clients] OFF
GO
SET IDENTITY_INSERT [dbo].[migrations] ON 

INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (1, N'2014_10_12_000000_create_users_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (2, N'2014_10_12_100000_create_password_reset_tokens_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (3, N'2014_10_12_100000_create_password_resets_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (4, N'2019_08_19_000000_create_failed_jobs_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (5, N'2019_12_14_000001_create_personal_access_tokens_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (6, N'2020_09_30_155931_create_categories_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (7, N'2020_10_07_162257_create_types_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (8, N'2023_04_28_163118_create_permission_tables', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (9, N'2023_04_30_051308_create_courses_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (10, N'2023_04_30_051444_create_schedules_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (11, N'2023_04_30_051506_create_assistants_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (12, N'2023_04_30_051636_create_topics_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (13, N'2023_04_30_051722_create_category_courses_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (14, N'2023_04_30_052010_create_events_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (15, N'2023_04_30_052026_create_participants_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (16, N'2023_04_30_052030_create_students_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (17, N'2023_05_16_024959_create_sessions_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (18, N'2023_05_21_210300_create_surveys_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (19, N'2023_05_22_032736_create_questions_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (20, N'2023_06_18_143450_create_answers_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (21, N'2023_06_22_161804_create_boxes_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (22, N'2023_06_22_162012_create_boxes_details_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (23, N'2023_06_22_173943_create_selections_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (24, N'2023_06_22_173949_create_selection_details_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (25, N'2023_06_22_173950_create_survey_details_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (26, N'2023_06_29_145959_create_clients_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (27, N'2023_06_30_173960_create_survey_clients_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (28, N'2023_07_10_234902_add_detail_column_to_survey_detail', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (29, N'2023_07_23_022114_add_google_id_column', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (30, N'2023_07_23_202544_modify_paterno_materno_column_in_users_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (31, N'2023_07_23_202600_add_column_in_survey_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (32, N'2023_07_29_184136_create_reports_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (33, N'2023_07_30_202700_add_column_in_survey_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (34, N'2023_07_30_202700_add_column_in_survey_table copy', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (35, N'2023_07_30_202720_modify_column_in_survey_details_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (36, N'2023_07_31_202700_add_column_in_survey_table copy', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (37, N'2023_07_31_202701_add_column_in_survey_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (38, N'2023_07_31_202721_add_column_in_survey_details_table', 1)
SET IDENTITY_INSERT [dbo].[migrations] OFF
GO
INSERT [dbo].[model_has_roles] ([role_id], [model_type], [model_id]) VALUES (1, N'App\Models\User', 1)
INSERT [dbo].[model_has_roles] ([role_id], [model_type], [model_id]) VALUES (2, N'App\Models\User', 2)
GO
SET IDENTITY_INSERT [dbo].[permissions] ON 

INSERT [dbo].[permissions] ([id], [name], [guard_name], [created_at], [updated_at]) VALUES (1, N'administrar', N'web', CAST(N'2023-08-18T21:47:34.187' AS DateTime), CAST(N'2023-08-18T21:47:34.187' AS DateTime))
INSERT [dbo].[permissions] ([id], [name], [guard_name], [created_at], [updated_at]) VALUES (2, N'Responder encuesta', N'web', CAST(N'2023-08-18T21:47:34.283' AS DateTime), CAST(N'2023-08-18T21:47:34.283' AS DateTime))
SET IDENTITY_INSERT [dbo].[permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[reports] ON 

INSERT [dbo].[reports] ([id], [client_id], [description], [detail], [created_at], [updated_at]) VALUES (1, 1, N'', N'', CAST(N'2023-08-18T21:50:16.537' AS DateTime), CAST(N'2023-08-18T21:50:16.537' AS DateTime))
INSERT [dbo].[reports] ([id], [client_id], [description], [detail], [created_at], [updated_at]) VALUES (2, 2, N'.', NULL, CAST(N'2023-08-18T21:52:23.617' AS DateTime), CAST(N'2023-08-18T21:57:34.467' AS DateTime))
INSERT [dbo].[reports] ([id], [client_id], [description], [detail], [created_at], [updated_at]) VALUES (3, 3, N'', N'', CAST(N'2023-08-19T00:39:18.883' AS DateTime), CAST(N'2023-08-19T00:39:18.883' AS DateTime))
INSERT [dbo].[reports] ([id], [client_id], [description], [detail], [created_at], [updated_at]) VALUES (4, 4, N'', N'', CAST(N'2023-08-19T00:52:28.497' AS DateTime), CAST(N'2023-08-19T00:52:28.497' AS DateTime))
INSERT [dbo].[reports] ([id], [client_id], [description], [detail], [created_at], [updated_at]) VALUES (5, 5, N'', N'', CAST(N'2023-08-19T01:02:06.187' AS DateTime), CAST(N'2023-08-19T01:02:06.187' AS DateTime))
INSERT [dbo].[reports] ([id], [client_id], [description], [detail], [created_at], [updated_at]) VALUES (6, 6, N'', N'', CAST(N'2023-08-19T01:13:43.330' AS DateTime), CAST(N'2023-08-19T01:13:43.330' AS DateTime))
INSERT [dbo].[reports] ([id], [client_id], [description], [detail], [created_at], [updated_at]) VALUES (7, 7, N'', N'', CAST(N'2023-08-19T01:29:04.427' AS DateTime), CAST(N'2023-08-19T01:29:04.427' AS DateTime))
SET IDENTITY_INSERT [dbo].[reports] OFF
GO
INSERT [dbo].[role_has_permissions] ([permission_id], [role_id]) VALUES (1, 1)
INSERT [dbo].[role_has_permissions] ([permission_id], [role_id]) VALUES (2, 2)
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([id], [name], [guard_name], [created_at], [updated_at]) VALUES (1, N'Administrador', N'web', CAST(N'2023-08-18T21:47:34.193' AS DateTime), CAST(N'2023-08-18T21:47:34.193' AS DateTime))
INSERT [dbo].[roles] ([id], [name], [guard_name], [created_at], [updated_at]) VALUES (2, N'Encuestador', N'web', CAST(N'2023-08-18T21:47:34.287' AS DateTime), CAST(N'2023-08-18T21:47:34.287' AS DateTime))
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
SET IDENTITY_INSERT [dbo].[selection_details] ON 

INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (1, N'Argentina', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.373' AS DateTime), CAST(N'2023-08-18T21:47:34.373' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (2, N'Bolivia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.377' AS DateTime), CAST(N'2023-08-18T21:47:34.377' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (3, N'Brasil', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.377' AS DateTime), CAST(N'2023-08-18T21:47:34.377' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (4, N'Chile', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.377' AS DateTime), CAST(N'2023-08-18T21:47:34.377' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (5, N'Colombia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.377' AS DateTime), CAST(N'2023-08-18T21:47:34.377' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (6, N'Costa Rica', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.377' AS DateTime), CAST(N'2023-08-18T21:47:34.377' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (7, N'Cuba', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.377' AS DateTime), CAST(N'2023-08-18T21:47:34.377' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (8, N'República Dominicana', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.377' AS DateTime), CAST(N'2023-08-18T21:47:34.377' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (9, N'Ecuador', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.380' AS DateTime), CAST(N'2023-08-18T21:47:34.380' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (10, N'El Salvador', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.380' AS DateTime), CAST(N'2023-08-18T21:47:34.380' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (11, N'Guatemala', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.380' AS DateTime), CAST(N'2023-08-18T21:47:34.380' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (12, N'Honduras', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.380' AS DateTime), CAST(N'2023-08-18T21:47:34.380' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (13, N'México', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.380' AS DateTime), CAST(N'2023-08-18T21:47:34.380' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (14, N'Nicaragua', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.383' AS DateTime), CAST(N'2023-08-18T21:47:34.383' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (15, N'Panamá', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.383' AS DateTime), CAST(N'2023-08-18T21:47:34.383' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (16, N'Paraguay', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.383' AS DateTime), CAST(N'2023-08-18T21:47:34.383' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (17, N'Perú', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.383' AS DateTime), CAST(N'2023-08-18T21:47:34.383' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (18, N'Puerto Rico', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.387' AS DateTime), CAST(N'2023-08-18T21:47:34.387' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (19, N'Uruguay', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.387' AS DateTime), CAST(N'2023-08-18T21:47:34.387' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (20, N'Venezuela', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.387' AS DateTime), CAST(N'2023-08-18T21:47:34.387' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (21, N'Canadá', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.387' AS DateTime), CAST(N'2023-08-18T21:47:34.387' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (22, N'Estados Unidos', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.387' AS DateTime), CAST(N'2023-08-18T21:47:34.387' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (23, N'Albania', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.390' AS DateTime), CAST(N'2023-08-18T21:47:34.390' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (24, N'Alemania', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.390' AS DateTime), CAST(N'2023-08-18T21:47:34.390' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (25, N'Andorra', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.390' AS DateTime), CAST(N'2023-08-18T21:47:34.390' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (26, N'Austria', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.390' AS DateTime), CAST(N'2023-08-18T21:47:34.390' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (27, N'Bélgica', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.390' AS DateTime), CAST(N'2023-08-18T21:47:34.390' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (28, N'Bielorrusia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.390' AS DateTime), CAST(N'2023-08-18T21:47:34.390' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (29, N'Bosnia y Herzegovina', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.390' AS DateTime), CAST(N'2023-08-18T21:47:34.390' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (30, N'Bulgaria', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.390' AS DateTime), CAST(N'2023-08-18T21:47:34.390' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (31, N'Chipre', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.393' AS DateTime), CAST(N'2023-08-18T21:47:34.393' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (32, N'Croacia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.393' AS DateTime), CAST(N'2023-08-18T21:47:34.393' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (33, N'Dinamarca', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.393' AS DateTime), CAST(N'2023-08-18T21:47:34.393' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (34, N'Eslovaquia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.393' AS DateTime), CAST(N'2023-08-18T21:47:34.393' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (35, N'Eslovenia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.393' AS DateTime), CAST(N'2023-08-18T21:47:34.393' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (36, N'España', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.397' AS DateTime), CAST(N'2023-08-18T21:47:34.397' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (37, N'Estonia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.397' AS DateTime), CAST(N'2023-08-18T21:47:34.397' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (38, N'Finlandia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.397' AS DateTime), CAST(N'2023-08-18T21:47:34.397' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (39, N'Francia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.397' AS DateTime), CAST(N'2023-08-18T21:47:34.397' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (40, N'Grecia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.397' AS DateTime), CAST(N'2023-08-18T21:47:34.397' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (41, N'Hungría', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.397' AS DateTime), CAST(N'2023-08-18T21:47:34.397' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (42, N'Irlanda', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.397' AS DateTime), CAST(N'2023-08-18T21:47:34.397' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (43, N'Islandia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.397' AS DateTime), CAST(N'2023-08-18T21:47:34.397' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (44, N'Italia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.397' AS DateTime), CAST(N'2023-08-18T21:47:34.397' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (45, N'Kosovo', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.397' AS DateTime), CAST(N'2023-08-18T21:47:34.397' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (46, N'Letonia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.400' AS DateTime), CAST(N'2023-08-18T21:47:34.400' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (47, N'Liechtenstein', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.400' AS DateTime), CAST(N'2023-08-18T21:47:34.400' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (48, N'Lituania', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.400' AS DateTime), CAST(N'2023-08-18T21:47:34.400' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (49, N'Luxemburgo', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.400' AS DateTime), CAST(N'2023-08-18T21:47:34.400' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (50, N'Macedonia del Norte', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.400' AS DateTime), CAST(N'2023-08-18T21:47:34.400' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (51, N'Malta', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.400' AS DateTime), CAST(N'2023-08-18T21:47:34.400' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (52, N'Moldavia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.400' AS DateTime), CAST(N'2023-08-18T21:47:34.400' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (53, N'Mónaco', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.403' AS DateTime), CAST(N'2023-08-18T21:47:34.403' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (54, N'Montenegro', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.403' AS DateTime), CAST(N'2023-08-18T21:47:34.403' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (55, N'Noruega', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.403' AS DateTime), CAST(N'2023-08-18T21:47:34.403' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (56, N'Países Bajos', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.407' AS DateTime), CAST(N'2023-08-18T21:47:34.407' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (57, N'Polonia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.407' AS DateTime), CAST(N'2023-08-18T21:47:34.407' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (58, N'Portugal', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.407' AS DateTime), CAST(N'2023-08-18T21:47:34.407' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (59, N'Reino Unido', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.407' AS DateTime), CAST(N'2023-08-18T21:47:34.407' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (60, N'República Checa', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.407' AS DateTime), CAST(N'2023-08-18T21:47:34.407' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (61, N'Rumania', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.407' AS DateTime), CAST(N'2023-08-18T21:47:34.407' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (62, N'Rusia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.410' AS DateTime), CAST(N'2023-08-18T21:47:34.410' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (63, N'San Marino', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.410' AS DateTime), CAST(N'2023-08-18T21:47:34.410' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (64, N'Serbia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.410' AS DateTime), CAST(N'2023-08-18T21:47:34.410' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (65, N'Suecia', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.410' AS DateTime), CAST(N'2023-08-18T21:47:34.410' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (66, N'Suiza', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.410' AS DateTime), CAST(N'2023-08-18T21:47:34.410' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (67, N'Turquía', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.410' AS DateTime), CAST(N'2023-08-18T21:47:34.410' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (68, N'Ucrania', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.413' AS DateTime), CAST(N'2023-08-18T21:47:34.413' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (69, N'Vaticano', N'', 2, NULL, CAST(N'2023-08-18T21:47:34.413' AS DateTime), CAST(N'2023-08-18T21:47:34.413' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (70, N'Amazonas', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.413' AS DateTime), CAST(N'2023-08-18T21:47:34.413' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (71, N'Bagua', N'', 4, 70, CAST(N'2023-08-18T21:47:34.413' AS DateTime), CAST(N'2023-08-18T21:47:34.413' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (72, N'Bongará', N'', 4, 70, CAST(N'2023-08-18T21:47:34.413' AS DateTime), CAST(N'2023-08-18T21:47:34.413' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (73, N'Chachapoyas', N'', 4, 70, CAST(N'2023-08-18T21:47:34.417' AS DateTime), CAST(N'2023-08-18T21:47:34.417' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (74, N'Condorcanqui', N'', 4, 70, CAST(N'2023-08-18T21:47:34.417' AS DateTime), CAST(N'2023-08-18T21:47:34.417' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (75, N'Luya', N'', 4, 70, CAST(N'2023-08-18T21:47:34.417' AS DateTime), CAST(N'2023-08-18T21:47:34.417' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (76, N'Rodríguez de Mendoza', N'', 4, 70, CAST(N'2023-08-18T21:47:34.417' AS DateTime), CAST(N'2023-08-18T21:47:34.417' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (77, N'Utcubamba', N'', 4, 70, CAST(N'2023-08-18T21:47:34.417' AS DateTime), CAST(N'2023-08-18T21:47:34.417' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (78, N'Áncash', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.417' AS DateTime), CAST(N'2023-08-18T21:47:34.417' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (79, N'Aija', N'', 4, 78, CAST(N'2023-08-18T21:47:34.417' AS DateTime), CAST(N'2023-08-18T21:47:34.417' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (80, N'Antonio Raymondi', N'', 4, 78, CAST(N'2023-08-18T21:47:34.417' AS DateTime), CAST(N'2023-08-18T21:47:34.417' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (81, N'Asunción', N'', 4, 78, CAST(N'2023-08-18T21:47:34.420' AS DateTime), CAST(N'2023-08-18T21:47:34.420' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (82, N'Bolognesi', N'', 4, 78, CAST(N'2023-08-18T21:47:34.420' AS DateTime), CAST(N'2023-08-18T21:47:34.420' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (83, N'Carhuaz', N'', 4, 78, CAST(N'2023-08-18T21:47:34.420' AS DateTime), CAST(N'2023-08-18T21:47:34.420' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (84, N'Carlos Fermín Fitzcarrald', N'', 4, 78, CAST(N'2023-08-18T21:47:34.423' AS DateTime), CAST(N'2023-08-18T21:47:34.423' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (85, N'Casma', N'', 4, 78, CAST(N'2023-08-18T21:47:34.423' AS DateTime), CAST(N'2023-08-18T21:47:34.423' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (86, N'Corongo', N'', 4, 78, CAST(N'2023-08-18T21:47:34.423' AS DateTime), CAST(N'2023-08-18T21:47:34.423' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (87, N'Huari', N'', 4, 78, CAST(N'2023-08-18T21:47:34.423' AS DateTime), CAST(N'2023-08-18T21:47:34.423' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (88, N'Huarmey', N'', 4, 78, CAST(N'2023-08-18T21:47:34.427' AS DateTime), CAST(N'2023-08-18T21:47:34.427' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (89, N'Huaylas', N'', 4, 78, CAST(N'2023-08-18T21:47:34.427' AS DateTime), CAST(N'2023-08-18T21:47:34.427' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (90, N'Mariscal Luzuriaga', N'', 4, 78, CAST(N'2023-08-18T21:47:34.427' AS DateTime), CAST(N'2023-08-18T21:47:34.427' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (91, N'Ocros', N'', 4, 78, CAST(N'2023-08-18T21:47:34.427' AS DateTime), CAST(N'2023-08-18T21:47:34.427' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (92, N'Pallasca', N'', 4, 78, CAST(N'2023-08-18T21:47:34.427' AS DateTime), CAST(N'2023-08-18T21:47:34.427' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (93, N'Pomabamba', N'', 4, 78, CAST(N'2023-08-18T21:47:34.427' AS DateTime), CAST(N'2023-08-18T21:47:34.427' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (94, N'Recuay', N'', 4, 78, CAST(N'2023-08-18T21:47:34.427' AS DateTime), CAST(N'2023-08-18T21:47:34.427' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (95, N'Santa', N'', 4, 78, CAST(N'2023-08-18T21:47:34.427' AS DateTime), CAST(N'2023-08-18T21:47:34.427' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (96, N'Sihuas', N'', 4, 78, CAST(N'2023-08-18T21:47:34.430' AS DateTime), CAST(N'2023-08-18T21:47:34.430' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (97, N'Yungay', N'', 4, 78, CAST(N'2023-08-18T21:47:34.430' AS DateTime), CAST(N'2023-08-18T21:47:34.430' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (98, N'Apurímac', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.430' AS DateTime), CAST(N'2023-08-18T21:47:34.430' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (99, N'Abancay', N'', 4, 98, CAST(N'2023-08-18T21:47:34.430' AS DateTime), CAST(N'2023-08-18T21:47:34.430' AS DateTime))
GO
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (100, N'Andahuaylas', N'', 4, 98, CAST(N'2023-08-18T21:47:34.430' AS DateTime), CAST(N'2023-08-18T21:47:34.430' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (101, N'Antabamba', N'', 4, 98, CAST(N'2023-08-18T21:47:34.430' AS DateTime), CAST(N'2023-08-18T21:47:34.430' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (102, N'Aymaraes', N'', 4, 98, CAST(N'2023-08-18T21:47:34.430' AS DateTime), CAST(N'2023-08-18T21:47:34.430' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (103, N'Cotabambas', N'', 4, 98, CAST(N'2023-08-18T21:47:34.430' AS DateTime), CAST(N'2023-08-18T21:47:34.430' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (104, N'Grau', N'', 4, 98, CAST(N'2023-08-18T21:47:34.433' AS DateTime), CAST(N'2023-08-18T21:47:34.433' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (105, N'Arequipa', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.433' AS DateTime), CAST(N'2023-08-18T21:47:34.433' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (106, N'Arequipa', N'', 4, 105, CAST(N'2023-08-18T21:47:34.433' AS DateTime), CAST(N'2023-08-18T21:47:34.433' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (107, N'Camaná', N'', 4, 105, CAST(N'2023-08-18T21:47:34.433' AS DateTime), CAST(N'2023-08-18T21:47:34.433' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (108, N'Caravelí', N'', 4, 105, CAST(N'2023-08-18T21:47:34.433' AS DateTime), CAST(N'2023-08-18T21:47:34.433' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (109, N'Castilla', N'', 4, 105, CAST(N'2023-08-18T21:47:34.433' AS DateTime), CAST(N'2023-08-18T21:47:34.433' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (110, N'Caylloma', N'', 4, 105, CAST(N'2023-08-18T21:47:34.433' AS DateTime), CAST(N'2023-08-18T21:47:34.433' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (111, N'Condesuyos', N'', 4, 105, CAST(N'2023-08-18T21:47:34.437' AS DateTime), CAST(N'2023-08-18T21:47:34.437' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (112, N'Islay', N'', 4, 105, CAST(N'2023-08-18T21:47:34.437' AS DateTime), CAST(N'2023-08-18T21:47:34.437' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (113, N'La Unión', N'', 4, 105, CAST(N'2023-08-18T21:47:34.437' AS DateTime), CAST(N'2023-08-18T21:47:34.437' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (114, N'Ayacucho', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.437' AS DateTime), CAST(N'2023-08-18T21:47:34.437' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (115, N'Cangallo', N'', 4, 114, CAST(N'2023-08-18T21:47:34.440' AS DateTime), CAST(N'2023-08-18T21:47:34.440' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (116, N'Huanca Sancos', N'', 4, 114, CAST(N'2023-08-18T21:47:34.440' AS DateTime), CAST(N'2023-08-18T21:47:34.440' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (117, N'Huamanga', N'', 4, 114, CAST(N'2023-08-18T21:47:34.440' AS DateTime), CAST(N'2023-08-18T21:47:34.440' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (118, N'Huanta', N'', 4, 114, CAST(N'2023-08-18T21:47:34.440' AS DateTime), CAST(N'2023-08-18T21:47:34.440' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (119, N'La Mar', N'', 4, 114, CAST(N'2023-08-18T21:47:34.443' AS DateTime), CAST(N'2023-08-18T21:47:34.443' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (120, N'Lucanas', N'', 4, 114, CAST(N'2023-08-18T21:47:34.443' AS DateTime), CAST(N'2023-08-18T21:47:34.443' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (121, N'Parinacochas', N'', 4, 114, CAST(N'2023-08-18T21:47:34.443' AS DateTime), CAST(N'2023-08-18T21:47:34.443' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (122, N'Páucar del Sara Sara', N'', 4, 114, CAST(N'2023-08-18T21:47:34.443' AS DateTime), CAST(N'2023-08-18T21:47:34.443' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (123, N'Sucre', N'', 4, 114, CAST(N'2023-08-18T21:47:34.443' AS DateTime), CAST(N'2023-08-18T21:47:34.443' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (124, N'Víctor Fajardo', N'', 4, 114, CAST(N'2023-08-18T21:47:34.443' AS DateTime), CAST(N'2023-08-18T21:47:34.443' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (125, N'Vilcas Huamán', N'', 4, 114, CAST(N'2023-08-18T21:47:34.447' AS DateTime), CAST(N'2023-08-18T21:47:34.447' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (126, N'Cajamarca', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.447' AS DateTime), CAST(N'2023-08-18T21:47:34.447' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (127, N'Cajabamba', N'', 4, 126, CAST(N'2023-08-18T21:47:34.447' AS DateTime), CAST(N'2023-08-18T21:47:34.447' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (128, N'Cajamarca', N'', 4, 126, CAST(N'2023-08-18T21:47:34.447' AS DateTime), CAST(N'2023-08-18T21:47:34.447' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (129, N'Celendín', N'', 4, 126, CAST(N'2023-08-18T21:47:34.447' AS DateTime), CAST(N'2023-08-18T21:47:34.447' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (130, N'Chota', N'', 4, 126, CAST(N'2023-08-18T21:47:34.447' AS DateTime), CAST(N'2023-08-18T21:47:34.447' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (131, N'Contumazá', N'', 4, 126, CAST(N'2023-08-18T21:47:34.447' AS DateTime), CAST(N'2023-08-18T21:47:34.447' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (132, N'Cutervo', N'', 4, 126, CAST(N'2023-08-18T21:47:34.447' AS DateTime), CAST(N'2023-08-18T21:47:34.447' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (133, N'Hualgayoc', N'', 4, 126, CAST(N'2023-08-18T21:47:34.447' AS DateTime), CAST(N'2023-08-18T21:47:34.447' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (134, N'Jaén', N'', 4, 126, CAST(N'2023-08-18T21:47:34.450' AS DateTime), CAST(N'2023-08-18T21:47:34.450' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (135, N'San Ignacio', N'', 4, 126, CAST(N'2023-08-18T21:47:34.450' AS DateTime), CAST(N'2023-08-18T21:47:34.450' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (136, N'San Marcos', N'', 4, 126, CAST(N'2023-08-18T21:47:34.450' AS DateTime), CAST(N'2023-08-18T21:47:34.450' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (137, N'San Miguel', N'', 4, 126, CAST(N'2023-08-18T21:47:34.450' AS DateTime), CAST(N'2023-08-18T21:47:34.450' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (138, N'San Pablo', N'', 4, 126, CAST(N'2023-08-18T21:47:34.450' AS DateTime), CAST(N'2023-08-18T21:47:34.450' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (139, N'Santa Cruz', N'', 4, 126, CAST(N'2023-08-18T21:47:34.450' AS DateTime), CAST(N'2023-08-18T21:47:34.450' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (140, N'Callao', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.453' AS DateTime), CAST(N'2023-08-18T21:47:34.453' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (141, N'Callao', N'', 4, 140, CAST(N'2023-08-18T21:47:34.453' AS DateTime), CAST(N'2023-08-18T21:47:34.453' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (142, N'Cusco', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.453' AS DateTime), CAST(N'2023-08-18T21:47:34.453' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (143, N'Acomayo', N'', 4, 142, CAST(N'2023-08-18T21:47:34.453' AS DateTime), CAST(N'2023-08-18T21:47:34.453' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (144, N'Anta', N'', 4, 142, CAST(N'2023-08-18T21:47:34.457' AS DateTime), CAST(N'2023-08-18T21:47:34.457' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (145, N'Calca', N'', 4, 142, CAST(N'2023-08-18T21:47:34.457' AS DateTime), CAST(N'2023-08-18T21:47:34.457' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (146, N'Canas', N'', 4, 142, CAST(N'2023-08-18T21:47:34.457' AS DateTime), CAST(N'2023-08-18T21:47:34.457' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (147, N'Canchis', N'', 4, 142, CAST(N'2023-08-18T21:47:34.457' AS DateTime), CAST(N'2023-08-18T21:47:34.457' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (148, N'Chumbivilcas', N'', 4, 142, CAST(N'2023-08-18T21:47:34.457' AS DateTime), CAST(N'2023-08-18T21:47:34.457' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (149, N'Cusco', N'', 4, 142, CAST(N'2023-08-18T21:47:34.457' AS DateTime), CAST(N'2023-08-18T21:47:34.457' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (150, N'Espinar', N'', 4, 142, CAST(N'2023-08-18T21:47:34.457' AS DateTime), CAST(N'2023-08-18T21:47:34.457' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (151, N'La Convención', N'', 4, 142, CAST(N'2023-08-18T21:47:34.457' AS DateTime), CAST(N'2023-08-18T21:47:34.457' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (152, N'Paruro', N'', 4, 142, CAST(N'2023-08-18T21:47:34.460' AS DateTime), CAST(N'2023-08-18T21:47:34.460' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (153, N'Paucartambo', N'', 4, 142, CAST(N'2023-08-18T21:47:34.460' AS DateTime), CAST(N'2023-08-18T21:47:34.460' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (154, N'Quispicanchi', N'', 4, 142, CAST(N'2023-08-18T21:47:34.460' AS DateTime), CAST(N'2023-08-18T21:47:34.460' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (155, N'Urubamba', N'', 4, 142, CAST(N'2023-08-18T21:47:34.460' AS DateTime), CAST(N'2023-08-18T21:47:34.460' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (156, N'Huancavelica', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.460' AS DateTime), CAST(N'2023-08-18T21:47:34.460' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (157, N'Acobamba', N'', 4, 156, CAST(N'2023-08-18T21:47:34.460' AS DateTime), CAST(N'2023-08-18T21:47:34.460' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (158, N'Angaraes', N'', 4, 156, CAST(N'2023-08-18T21:47:34.460' AS DateTime), CAST(N'2023-08-18T21:47:34.460' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (159, N'Castrovirreyna', N'', 4, 156, CAST(N'2023-08-18T21:47:34.463' AS DateTime), CAST(N'2023-08-18T21:47:34.463' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (160, N'Churcampa', N'', 4, 156, CAST(N'2023-08-18T21:47:34.463' AS DateTime), CAST(N'2023-08-18T21:47:34.463' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (161, N'Huancavelica', N'', 4, 156, CAST(N'2023-08-18T21:47:34.463' AS DateTime), CAST(N'2023-08-18T21:47:34.463' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (162, N'Huaytará', N'', 4, 156, CAST(N'2023-08-18T21:47:34.463' AS DateTime), CAST(N'2023-08-18T21:47:34.463' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (163, N'Tayacaja', N'', 4, 156, CAST(N'2023-08-18T21:47:34.463' AS DateTime), CAST(N'2023-08-18T21:47:34.463' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (164, N'Huánuco', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.463' AS DateTime), CAST(N'2023-08-18T21:47:34.463' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (165, N'Ambo', N'', 4, 164, CAST(N'2023-08-18T21:47:34.463' AS DateTime), CAST(N'2023-08-18T21:47:34.463' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (166, N'Dos de Mayo', N'', 4, 164, CAST(N'2023-08-18T21:47:34.463' AS DateTime), CAST(N'2023-08-18T21:47:34.463' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (167, N'Huacaybamba', N'', 4, 164, CAST(N'2023-08-18T21:47:34.467' AS DateTime), CAST(N'2023-08-18T21:47:34.467' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (168, N'Huánuco', N'', 4, 164, CAST(N'2023-08-18T21:47:34.467' AS DateTime), CAST(N'2023-08-18T21:47:34.467' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (169, N'Lauricocha', N'', 4, 164, CAST(N'2023-08-18T21:47:34.467' AS DateTime), CAST(N'2023-08-18T21:47:34.467' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (170, N'Leoncio Prado', N'', 4, 164, CAST(N'2023-08-18T21:47:34.467' AS DateTime), CAST(N'2023-08-18T21:47:34.467' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (171, N'Marañón', N'', 4, 164, CAST(N'2023-08-18T21:47:34.467' AS DateTime), CAST(N'2023-08-18T21:47:34.467' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (172, N'Pachitea', N'', 4, 164, CAST(N'2023-08-18T21:47:34.467' AS DateTime), CAST(N'2023-08-18T21:47:34.467' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (173, N'Puerto Inca', N'', 4, 164, CAST(N'2023-08-18T21:47:34.467' AS DateTime), CAST(N'2023-08-18T21:47:34.467' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (174, N'Yarowilca', N'', 4, 164, CAST(N'2023-08-18T21:47:34.467' AS DateTime), CAST(N'2023-08-18T21:47:34.467' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (175, N'Ica', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.470' AS DateTime), CAST(N'2023-08-18T21:47:34.470' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (176, N'Chincha', N'', 4, 175, CAST(N'2023-08-18T21:47:34.470' AS DateTime), CAST(N'2023-08-18T21:47:34.470' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (177, N'Ica', N'', 4, 175, CAST(N'2023-08-18T21:47:34.470' AS DateTime), CAST(N'2023-08-18T21:47:34.470' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (178, N'Nazca', N'', 4, 175, CAST(N'2023-08-18T21:47:34.473' AS DateTime), CAST(N'2023-08-18T21:47:34.473' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (179, N'Palpa', N'', 4, 175, CAST(N'2023-08-18T21:47:34.473' AS DateTime), CAST(N'2023-08-18T21:47:34.473' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (180, N'Pisco', N'', 4, 175, CAST(N'2023-08-18T21:47:34.473' AS DateTime), CAST(N'2023-08-18T21:47:34.473' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (181, N'Junín', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.473' AS DateTime), CAST(N'2023-08-18T21:47:34.473' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (182, N'Chanchamayo', N'', 4, 181, CAST(N'2023-08-18T21:47:34.473' AS DateTime), CAST(N'2023-08-18T21:47:34.473' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (183, N'Chupaca', N'', 4, 181, CAST(N'2023-08-18T21:47:34.473' AS DateTime), CAST(N'2023-08-18T21:47:34.473' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (184, N'Concepción', N'', 4, 181, CAST(N'2023-08-18T21:47:34.477' AS DateTime), CAST(N'2023-08-18T21:47:34.477' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (185, N'Huancayo', N'', 4, 181, CAST(N'2023-08-18T21:47:34.477' AS DateTime), CAST(N'2023-08-18T21:47:34.477' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (186, N'Jauja', N'', 4, 181, CAST(N'2023-08-18T21:47:34.477' AS DateTime), CAST(N'2023-08-18T21:47:34.477' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (187, N'Junín', N'', 4, 181, CAST(N'2023-08-18T21:47:34.477' AS DateTime), CAST(N'2023-08-18T21:47:34.477' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (188, N'Satipo', N'', 4, 181, CAST(N'2023-08-18T21:47:34.477' AS DateTime), CAST(N'2023-08-18T21:47:34.477' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (189, N'Tarma', N'', 4, 181, CAST(N'2023-08-18T21:47:34.477' AS DateTime), CAST(N'2023-08-18T21:47:34.477' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (190, N'Yauli', N'', 4, 181, CAST(N'2023-08-18T21:47:34.477' AS DateTime), CAST(N'2023-08-18T21:47:34.477' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (191, N'La Libertad', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.477' AS DateTime), CAST(N'2023-08-18T21:47:34.477' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (192, N'Ascope', N'', 4, 191, CAST(N'2023-08-18T21:47:34.477' AS DateTime), CAST(N'2023-08-18T21:47:34.477' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (193, N'Bolívar', N'', 4, 191, CAST(N'2023-08-18T21:47:34.477' AS DateTime), CAST(N'2023-08-18T21:47:34.477' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (194, N'Chepén', N'', 4, 191, CAST(N'2023-08-18T21:47:34.480' AS DateTime), CAST(N'2023-08-18T21:47:34.480' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (195, N'Gran Chimú', N'', 4, 191, CAST(N'2023-08-18T21:47:34.480' AS DateTime), CAST(N'2023-08-18T21:47:34.480' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (196, N'Julcán', N'', 4, 191, CAST(N'2023-08-18T21:47:34.480' AS DateTime), CAST(N'2023-08-18T21:47:34.480' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (197, N'Otuzco', N'', 4, 191, CAST(N'2023-08-18T21:47:34.480' AS DateTime), CAST(N'2023-08-18T21:47:34.480' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (198, N'Pacasmayo', N'', 4, 191, CAST(N'2023-08-18T21:47:34.480' AS DateTime), CAST(N'2023-08-18T21:47:34.480' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (199, N'Pataz', N'', 4, 191, CAST(N'2023-08-18T21:47:34.480' AS DateTime), CAST(N'2023-08-18T21:47:34.480' AS DateTime))
GO
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (200, N'Sánchez Carrión', N'', 4, 191, CAST(N'2023-08-18T21:47:34.480' AS DateTime), CAST(N'2023-08-18T21:47:34.480' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (201, N'Santiago de Chuco', N'', 4, 191, CAST(N'2023-08-18T21:47:34.480' AS DateTime), CAST(N'2023-08-18T21:47:34.480' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (202, N'Trujillo', N'', 4, 191, CAST(N'2023-08-18T21:47:34.483' AS DateTime), CAST(N'2023-08-18T21:47:34.483' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (203, N'Virú', N'', 4, 191, CAST(N'2023-08-18T21:47:34.483' AS DateTime), CAST(N'2023-08-18T21:47:34.483' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (204, N'Lambayeque', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.483' AS DateTime), CAST(N'2023-08-18T21:47:34.483' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (205, N'Chiclayo', N'', 4, 204, CAST(N'2023-08-18T21:47:34.483' AS DateTime), CAST(N'2023-08-18T21:47:34.483' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (206, N'Ferreñafe', N'', 4, 204, CAST(N'2023-08-18T21:47:34.483' AS DateTime), CAST(N'2023-08-18T21:47:34.483' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (207, N'Lambayeque', N'', 4, 204, CAST(N'2023-08-18T21:47:34.483' AS DateTime), CAST(N'2023-08-18T21:47:34.483' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (208, N'Lima', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.483' AS DateTime), CAST(N'2023-08-18T21:47:34.483' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (209, N'Barranca', N'', 4, 208, CAST(N'2023-08-18T21:47:34.487' AS DateTime), CAST(N'2023-08-18T21:47:34.487' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (210, N'Cajatambo', N'', 4, 208, CAST(N'2023-08-18T21:47:34.487' AS DateTime), CAST(N'2023-08-18T21:47:34.487' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (211, N'Canta', N'', 4, 208, CAST(N'2023-08-18T21:47:34.487' AS DateTime), CAST(N'2023-08-18T21:47:34.487' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (212, N'Cañete', N'', 4, 208, CAST(N'2023-08-18T21:47:34.487' AS DateTime), CAST(N'2023-08-18T21:47:34.487' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (213, N'Huaral', N'', 4, 208, CAST(N'2023-08-18T21:47:34.487' AS DateTime), CAST(N'2023-08-18T21:47:34.487' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (214, N'Huarochirí', N'', 4, 208, CAST(N'2023-08-18T21:47:34.487' AS DateTime), CAST(N'2023-08-18T21:47:34.487' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (215, N'Huaura', N'', 4, 208, CAST(N'2023-08-18T21:47:34.490' AS DateTime), CAST(N'2023-08-18T21:47:34.490' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (216, N'Lima', N'', 4, 208, CAST(N'2023-08-18T21:47:34.490' AS DateTime), CAST(N'2023-08-18T21:47:34.490' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (217, N'Oyón', N'', 4, 208, CAST(N'2023-08-18T21:47:34.490' AS DateTime), CAST(N'2023-08-18T21:47:34.490' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (218, N'Yauyos', N'', 4, 208, CAST(N'2023-08-18T21:47:34.490' AS DateTime), CAST(N'2023-08-18T21:47:34.490' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (219, N'Loreto', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.490' AS DateTime), CAST(N'2023-08-18T21:47:34.490' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (220, N'Alto Amazonas', N'', 4, 219, CAST(N'2023-08-18T21:47:34.490' AS DateTime), CAST(N'2023-08-18T21:47:34.490' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (221, N'Loreto', N'', 4, 219, CAST(N'2023-08-18T21:47:34.490' AS DateTime), CAST(N'2023-08-18T21:47:34.490' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (222, N'Mariscal Ramón Castilla', N'', 4, 219, CAST(N'2023-08-18T21:47:34.493' AS DateTime), CAST(N'2023-08-18T21:47:34.493' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (223, N'Maynas', N'', 4, 219, CAST(N'2023-08-18T21:47:34.493' AS DateTime), CAST(N'2023-08-18T21:47:34.493' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (224, N'Requena', N'', 4, 219, CAST(N'2023-08-18T21:47:34.493' AS DateTime), CAST(N'2023-08-18T21:47:34.493' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (225, N'Ucayali', N'', 4, 219, CAST(N'2023-08-18T21:47:34.493' AS DateTime), CAST(N'2023-08-18T21:47:34.493' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (226, N'Madre de Dios', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.493' AS DateTime), CAST(N'2023-08-18T21:47:34.493' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (227, N'Manu', N'', 4, 226, CAST(N'2023-08-18T21:47:34.493' AS DateTime), CAST(N'2023-08-18T21:47:34.493' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (228, N'Tahuamanu', N'', 4, 226, CAST(N'2023-08-18T21:47:34.493' AS DateTime), CAST(N'2023-08-18T21:47:34.493' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (229, N'Tambopata', N'', 4, 226, CAST(N'2023-08-18T21:47:34.497' AS DateTime), CAST(N'2023-08-18T21:47:34.497' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (230, N'Moquegua', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.497' AS DateTime), CAST(N'2023-08-18T21:47:34.497' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (231, N'General Sánchez Cerro', N'', 4, 230, CAST(N'2023-08-18T21:47:34.497' AS DateTime), CAST(N'2023-08-18T21:47:34.497' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (232, N'Ilo', N'', 4, 230, CAST(N'2023-08-18T21:47:34.497' AS DateTime), CAST(N'2023-08-18T21:47:34.497' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (233, N'Mariscal Nieto', N'', 4, 230, CAST(N'2023-08-18T21:47:34.497' AS DateTime), CAST(N'2023-08-18T21:47:34.497' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (234, N'Pasco', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.497' AS DateTime), CAST(N'2023-08-18T21:47:34.497' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (235, N'Daniel Alcides Carrión', N'', 4, 234, CAST(N'2023-08-18T21:47:34.497' AS DateTime), CAST(N'2023-08-18T21:47:34.497' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (236, N'Oxapampa', N'', 4, 234, CAST(N'2023-08-18T21:47:34.497' AS DateTime), CAST(N'2023-08-18T21:47:34.497' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (237, N'Pasco', N'', 4, 234, CAST(N'2023-08-18T21:47:34.497' AS DateTime), CAST(N'2023-08-18T21:47:34.497' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (238, N'Piura', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.500' AS DateTime), CAST(N'2023-08-18T21:47:34.500' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (239, N'Ayabaca', N'', 4, 238, CAST(N'2023-08-18T21:47:34.500' AS DateTime), CAST(N'2023-08-18T21:47:34.500' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (240, N'Huancabamba', N'', 4, 238, CAST(N'2023-08-18T21:47:34.500' AS DateTime), CAST(N'2023-08-18T21:47:34.500' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (241, N'Morropón', N'', 4, 238, CAST(N'2023-08-18T21:47:34.500' AS DateTime), CAST(N'2023-08-18T21:47:34.500' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (242, N'Paita', N'', 4, 238, CAST(N'2023-08-18T21:47:34.500' AS DateTime), CAST(N'2023-08-18T21:47:34.500' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (243, N'Piura', N'', 4, 238, CAST(N'2023-08-18T21:47:34.500' AS DateTime), CAST(N'2023-08-18T21:47:34.500' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (244, N'Sechura', N'', 4, 238, CAST(N'2023-08-18T21:47:34.500' AS DateTime), CAST(N'2023-08-18T21:47:34.500' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (245, N'Sullana', N'', 4, 238, CAST(N'2023-08-18T21:47:34.503' AS DateTime), CAST(N'2023-08-18T21:47:34.503' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (246, N'Talara', N'', 4, 238, CAST(N'2023-08-18T21:47:34.503' AS DateTime), CAST(N'2023-08-18T21:47:34.503' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (247, N'Puno', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.503' AS DateTime), CAST(N'2023-08-18T21:47:34.503' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (248, N'Azángaro', N'', 4, 247, CAST(N'2023-08-18T21:47:34.507' AS DateTime), CAST(N'2023-08-18T21:47:34.507' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (249, N'Carabaya', N'', 4, 247, CAST(N'2023-08-18T21:47:34.507' AS DateTime), CAST(N'2023-08-18T21:47:34.507' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (250, N'Chucuito', N'', 4, 247, CAST(N'2023-08-18T21:47:34.507' AS DateTime), CAST(N'2023-08-18T21:47:34.507' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (251, N'El Collao', N'', 4, 247, CAST(N'2023-08-18T21:47:34.507' AS DateTime), CAST(N'2023-08-18T21:47:34.507' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (252, N'Huancané', N'', 4, 247, CAST(N'2023-08-18T21:47:34.507' AS DateTime), CAST(N'2023-08-18T21:47:34.507' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (253, N'Lampa', N'', 4, 247, CAST(N'2023-08-18T21:47:34.507' AS DateTime), CAST(N'2023-08-18T21:47:34.507' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (254, N'Melgar', N'', 4, 247, CAST(N'2023-08-18T21:47:34.507' AS DateTime), CAST(N'2023-08-18T21:47:34.507' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (255, N'Moho', N'', 4, 247, CAST(N'2023-08-18T21:47:34.507' AS DateTime), CAST(N'2023-08-18T21:47:34.507' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (256, N'Puno', N'', 4, 247, CAST(N'2023-08-18T21:47:34.510' AS DateTime), CAST(N'2023-08-18T21:47:34.510' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (257, N'San Antonio de Putina', N'', 4, 247, CAST(N'2023-08-18T21:47:34.510' AS DateTime), CAST(N'2023-08-18T21:47:34.510' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (258, N'San Román', N'', 4, 247, CAST(N'2023-08-18T21:47:34.510' AS DateTime), CAST(N'2023-08-18T21:47:34.510' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (259, N'Sandia', N'', 4, 247, CAST(N'2023-08-18T21:47:34.510' AS DateTime), CAST(N'2023-08-18T21:47:34.510' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (260, N'Yunguyo', N'', 4, 247, CAST(N'2023-08-18T21:47:34.510' AS DateTime), CAST(N'2023-08-18T21:47:34.510' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (261, N'San Martín', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.510' AS DateTime), CAST(N'2023-08-18T21:47:34.510' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (262, N'Bellavista', N'', 4, 261, CAST(N'2023-08-18T21:47:34.510' AS DateTime), CAST(N'2023-08-18T21:47:34.510' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (263, N'El Dorado', N'', 4, 261, CAST(N'2023-08-18T21:47:34.510' AS DateTime), CAST(N'2023-08-18T21:47:34.510' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (264, N'Huallaga', N'', 4, 261, CAST(N'2023-08-18T21:47:34.513' AS DateTime), CAST(N'2023-08-18T21:47:34.513' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (265, N'Lamas', N'', 4, 261, CAST(N'2023-08-18T21:47:34.513' AS DateTime), CAST(N'2023-08-18T21:47:34.513' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (266, N'Mariscal Cáceres', N'', 4, 261, CAST(N'2023-08-18T21:47:34.513' AS DateTime), CAST(N'2023-08-18T21:47:34.513' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (267, N'Moyobamba', N'', 4, 261, CAST(N'2023-08-18T21:47:34.513' AS DateTime), CAST(N'2023-08-18T21:47:34.513' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (268, N'Picota', N'', 4, 261, CAST(N'2023-08-18T21:47:34.513' AS DateTime), CAST(N'2023-08-18T21:47:34.513' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (269, N'Rioja', N'', 4, 261, CAST(N'2023-08-18T21:47:34.513' AS DateTime), CAST(N'2023-08-18T21:47:34.513' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (270, N'San Martín', N'', 4, 261, CAST(N'2023-08-18T21:47:34.513' AS DateTime), CAST(N'2023-08-18T21:47:34.513' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (271, N'Tocache', N'', 4, 261, CAST(N'2023-08-18T21:47:34.517' AS DateTime), CAST(N'2023-08-18T21:47:34.517' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (272, N'Tacna', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.517' AS DateTime), CAST(N'2023-08-18T21:47:34.517' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (273, N'Candarave', N'', 4, 272, CAST(N'2023-08-18T21:47:34.517' AS DateTime), CAST(N'2023-08-18T21:47:34.517' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (274, N'Jorge Basadre', N'', 4, 272, CAST(N'2023-08-18T21:47:34.517' AS DateTime), CAST(N'2023-08-18T21:47:34.517' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (275, N'Tacna', N'', 4, 272, CAST(N'2023-08-18T21:47:34.517' AS DateTime), CAST(N'2023-08-18T21:47:34.517' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (276, N'Tarata', N'', 4, 272, CAST(N'2023-08-18T21:47:34.517' AS DateTime), CAST(N'2023-08-18T21:47:34.517' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (277, N'Tumbes', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.517' AS DateTime), CAST(N'2023-08-18T21:47:34.517' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (278, N'Contralmirante Villar', N'', 4, 277, CAST(N'2023-08-18T21:47:34.517' AS DateTime), CAST(N'2023-08-18T21:47:34.517' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (279, N'Tumbes', N'', 4, 277, CAST(N'2023-08-18T21:47:34.517' AS DateTime), CAST(N'2023-08-18T21:47:34.517' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (280, N'Zarumilla', N'', 4, 277, CAST(N'2023-08-18T21:47:34.520' AS DateTime), CAST(N'2023-08-18T21:47:34.520' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (281, N'Ucayali', N'', 3, NULL, CAST(N'2023-08-18T21:47:34.520' AS DateTime), CAST(N'2023-08-18T21:47:34.520' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (282, N'Atalaya', N'', 4, 281, CAST(N'2023-08-18T21:47:34.520' AS DateTime), CAST(N'2023-08-18T21:47:34.520' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (283, N'Coronel Portillo', N'', 4, 281, CAST(N'2023-08-18T21:47:34.520' AS DateTime), CAST(N'2023-08-18T21:47:34.520' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (284, N'Padre Abad', N'', 4, 281, CAST(N'2023-08-18T21:47:34.520' AS DateTime), CAST(N'2023-08-18T21:47:34.520' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (285, N'Purús', N'', 4, 281, CAST(N'2023-08-18T21:47:34.523' AS DateTime), CAST(N'2023-08-18T21:47:34.523' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (286, N'papaya', NULL, 5, NULL, CAST(N'2023-08-19T00:51:10.847' AS DateTime), CAST(N'2023-08-19T00:51:10.847' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (287, N'mandarina', NULL, 5, NULL, CAST(N'2023-08-19T00:51:19.307' AS DateTime), CAST(N'2023-08-19T00:51:19.307' AS DateTime))
INSERT [dbo].[selection_details] ([id], [description], [detail], [selection_id], [associate_detail_id], [created_at], [updated_at]) VALUES (288, N'lucuma', NULL, 5, NULL, CAST(N'2023-08-19T00:51:32.247' AS DateTime), CAST(N'2023-08-19T00:51:32.247' AS DateTime))
SET IDENTITY_INSERT [dbo].[selection_details] OFF
GO
SET IDENTITY_INSERT [dbo].[selections] ON 

INSERT [dbo].[selections] ([id], [description], [detail], [state], [associate_id], [created_at], [updated_at]) VALUES (1, N'Ninguno', N'No eliminar', N'0', NULL, CAST(N'2023-08-18T21:47:34.367' AS DateTime), CAST(N'2023-08-18T21:47:34.367' AS DateTime))
INSERT [dbo].[selections] ([id], [description], [detail], [state], [associate_id], [created_at], [updated_at]) VALUES (2, N'Paises', N'', N'0', NULL, CAST(N'2023-08-18T21:47:34.370' AS DateTime), CAST(N'2023-08-18T21:47:34.370' AS DateTime))
INSERT [dbo].[selections] ([id], [description], [detail], [state], [associate_id], [created_at], [updated_at]) VALUES (3, N'Perú Regiones', NULL, N'1', 4, CAST(N'2023-08-18T21:47:34.370' AS DateTime), CAST(N'2023-08-19T01:01:57.873' AS DateTime))
INSERT [dbo].[selections] ([id], [description], [detail], [state], [associate_id], [created_at], [updated_at]) VALUES (4, N'Perú Provincias', NULL, N'2', 3, CAST(N'2023-08-18T21:47:34.370' AS DateTime), CAST(N'2023-08-19T01:01:32.390' AS DateTime))
INSERT [dbo].[selections] ([id], [description], [detail], [state], [associate_id], [created_at], [updated_at]) VALUES (5, N'jugo favorito', NULL, N'0', 1, CAST(N'2023-08-19T00:50:46.197' AS DateTime), CAST(N'2023-08-19T00:50:46.197' AS DateTime))
SET IDENTITY_INSERT [dbo].[selections] OFF
GO
SET IDENTITY_INSERT [dbo].[survey_clients] ON 

INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (2, 1, NULL, 2, N'2-valor2', NULL, CAST(N'2023-08-18T21:52:25.963' AS DateTime), CAST(N'2023-08-18T21:52:25.963' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (3, 2, NULL, 2, N'2-Superman', NULL, CAST(N'2023-08-18T21:52:29.150' AS DateTime), CAST(N'2023-08-18T21:52:29.150' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (4, 3, NULL, 2, N'Anthony', N'""', CAST(N'2023-08-18T21:52:36.487' AS DateTime), CAST(N'2023-08-18T21:52:36.487' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (5, 1, NULL, 3, N'2-valor2', NULL, CAST(N'2023-08-19T00:39:20.727' AS DateTime), CAST(N'2023-08-19T00:39:20.727' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (6, 2, NULL, 3, N'2-Superman', NULL, CAST(N'2023-08-19T00:39:22.450' AS DateTime), CAST(N'2023-08-19T00:39:22.450' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (7, 3, NULL, 3, N'pepe', N'""', CAST(N'2023-08-19T00:39:26.727' AS DateTime), CAST(N'2023-08-19T00:39:26.727' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (8, 1, NULL, 4, N'1-valor1', NULL, CAST(N'2023-08-19T00:52:31.457' AS DateTime), CAST(N'2023-08-19T00:52:31.457' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (9, 2, NULL, 4, N'3-Pokemon', NULL, CAST(N'2023-08-19T00:52:33.087' AS DateTime), CAST(N'2023-08-19T00:52:33.087' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (10, 3, NULL, 4, N'juan', N'""', CAST(N'2023-08-19T00:52:36.997' AS DateTime), CAST(N'2023-08-19T00:52:36.997' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (11, 4, 288, 4, N'lucuma', N'""', CAST(N'2023-08-19T00:52:51.867' AS DateTime), CAST(N'2023-08-19T00:52:51.867' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (12, 1, NULL, 5, N'1-valor1', NULL, CAST(N'2023-08-19T01:02:08.377' AS DateTime), CAST(N'2023-08-19T01:02:08.377' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (13, 2, NULL, 5, N'3-Pokemon', NULL, CAST(N'2023-08-19T01:02:10.467' AS DateTime), CAST(N'2023-08-19T01:02:10.467' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (14, 3, NULL, 5, N'paolo', N'""', CAST(N'2023-08-19T01:02:14.737' AS DateTime), CAST(N'2023-08-19T01:02:14.737' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (15, 4, 287, 5, N'mandarina', N'""', CAST(N'2023-08-19T01:02:18.470' AS DateTime), CAST(N'2023-08-19T01:02:18.470' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (16, 5, 208, 5, N'Lima', N'""', CAST(N'2023-08-19T01:02:22.127' AS DateTime), CAST(N'2023-08-19T01:02:22.127' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (17, 1, NULL, 6, N'1-valor1', NULL, CAST(N'2023-08-19T01:14:01.377' AS DateTime), CAST(N'2023-08-19T01:14:01.377' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (18, 2, NULL, 6, N'1-El chavo', NULL, CAST(N'2023-08-19T01:14:03.577' AS DateTime), CAST(N'2023-08-19T01:14:03.577' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (19, 3, NULL, 6, N'MARIA', N'""', CAST(N'2023-08-19T01:14:08.090' AS DateTime), CAST(N'2023-08-19T01:14:08.090' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (20, 4, 287, 6, N'mandarina', N'""', CAST(N'2023-08-19T01:14:10.787' AS DateTime), CAST(N'2023-08-19T01:14:10.787' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (21, 5, 70, 6, N'Amazonas', N'""', CAST(N'2023-08-19T01:14:14.667' AS DateTime), CAST(N'2023-08-19T01:14:14.667' AS DateTime))
INSERT [dbo].[survey_clients] ([id], [survey_detail_id], [selection_detail_id], [client_id], [answer], [option], [created_at], [updated_at]) VALUES (22, 6, 74, 6, N'Condorcanqui', N'""', CAST(N'2023-08-19T01:14:19.723' AS DateTime), CAST(N'2023-08-19T01:14:19.723' AS DateTime))
SET IDENTITY_INSERT [dbo].[survey_clients] OFF
GO
SET IDENTITY_INSERT [dbo].[survey_details] ON 

INSERT [dbo].[survey_details] ([id], [survey_id], [selection_id], [question], [type], [option], [requerid], [state], [created_at], [updated_at], [detail], [title], [detail_2], [detail_3], [evaluate], [correct], [point], [initialize]) VALUES (1, 1, 1, N'pregunta1', N'multiple_option', N'["valor1","valor2","valor3","valor4"]', N'yes', N'', CAST(N'2023-08-18T21:47:34.523' AS DateTime), CAST(N'2023-08-18T21:47:34.523' AS DateTime), NULL, NULL, NULL, NULL, N'not', NULL, NULL, N'not')
INSERT [dbo].[survey_details] ([id], [survey_id], [selection_id], [question], [type], [option], [requerid], [state], [created_at], [updated_at], [detail], [title], [detail_2], [detail_3], [evaluate], [correct], [point], [initialize]) VALUES (2, 1, 1, N'Elija su programa de tv favorito', N'multiple_option', N'["El chavo","Superman","Pokemon"]', N'yes', NULL, CAST(N'2023-08-18T21:51:57.480' AS DateTime), CAST(N'2023-08-18T21:51:57.480' AS DateTime), NULL, NULL, NULL, NULL, N'not', NULL, NULL, N'not')
INSERT [dbo].[survey_details] ([id], [survey_id], [selection_id], [question], [type], [option], [requerid], [state], [created_at], [updated_at], [detail], [title], [detail_2], [detail_3], [evaluate], [correct], [point], [initialize]) VALUES (3, 1, 1, N'Ingrese su nombre', N'short_answer', N'[]', N'yes', NULL, CAST(N'2023-08-18T21:52:15.537' AS DateTime), CAST(N'2023-08-18T21:52:15.537' AS DateTime), NULL, NULL, NULL, NULL, N'not', NULL, NULL, N'not')
INSERT [dbo].[survey_details] ([id], [survey_id], [selection_id], [question], [type], [option], [requerid], [state], [created_at], [updated_at], [detail], [title], [detail_2], [detail_3], [evaluate], [correct], [point], [initialize]) VALUES (4, 1, 5, N'Elija la opción', N'selection', N'[]', N'yes', NULL, CAST(N'2023-08-19T00:52:19.753' AS DateTime), CAST(N'2023-08-19T00:52:19.753' AS DateTime), NULL, NULL, NULL, NULL, N'not', NULL, NULL, N'not')
INSERT [dbo].[survey_details] ([id], [survey_id], [selection_id], [question], [type], [option], [requerid], [state], [created_at], [updated_at], [detail], [title], [detail_2], [detail_3], [evaluate], [correct], [point], [initialize]) VALUES (5, 1, 3, N'Elija su region', N'selection', N'[]', N'yes', NULL, CAST(N'2023-08-19T01:00:56.327' AS DateTime), CAST(N'2023-08-19T01:00:56.327' AS DateTime), NULL, NULL, NULL, NULL, N'not', NULL, NULL, N'not')
INSERT [dbo].[survey_details] ([id], [survey_id], [selection_id], [question], [type], [option], [requerid], [state], [created_at], [updated_at], [detail], [title], [detail_2], [detail_3], [evaluate], [correct], [point], [initialize]) VALUES (6, 1, 4, N'Elija su provincia', N'selection', N'[]', N'yes', NULL, CAST(N'2023-08-19T01:01:13.970' AS DateTime), CAST(N'2023-08-19T01:01:13.970' AS DateTime), NULL, NULL, NULL, NULL, N'not', NULL, NULL, N'not')
INSERT [dbo].[survey_details] ([id], [survey_id], [selection_id], [question], [type], [option], [requerid], [state], [created_at], [updated_at], [detail], [title], [detail_2], [detail_3], [evaluate], [correct], [point], [initialize]) VALUES (7, 1, 5, N'PATERNO', N'short_answer', N'[]', N'yes', NULL, CAST(N'2023-08-19T01:40:52.607' AS DateTime), CAST(N'2023-08-19T01:40:52.607' AS DateTime), NULL, NULL, NULL, NULL, N'not', NULL, NULL, N'not')
SET IDENTITY_INSERT [dbo].[survey_details] OFF
GO
SET IDENTITY_INSERT [dbo].[surveys] ON 

INSERT [dbo].[surveys] ([id], [description], [detail], [url], [date_start], [date_end], [created_at], [updated_at], [type], [state], [pollster_t], [pollster_r]) VALUES (1, N'Encuesta1', NULL, N'', NULL, NULL, CAST(N'2023-08-18T21:47:34.363' AS DateTime), CAST(N'2023-08-18T21:48:20.227' AS DateTime), N'encuesta', N'public', NULL, NULL)
SET IDENTITY_INSERT [dbo].[surveys] OFF
GO
SET IDENTITY_INSERT [dbo].[types] ON 

INSERT [dbo].[types] ([id], [description], [detail], [created_at], [updated_at]) VALUES (1, N'Programa', N'', CAST(N'2023-08-18T21:47:34.360' AS DateTime), CAST(N'2023-08-18T21:47:34.360' AS DateTime))
INSERT [dbo].[types] ([id], [description], [detail], [created_at], [updated_at]) VALUES (2, N'Complementario', N'', CAST(N'2023-08-18T21:47:34.360' AS DateTime), CAST(N'2023-08-18T21:47:34.360' AS DateTime))
INSERT [dbo].[types] ([id], [description], [detail], [created_at], [updated_at]) VALUES (3, N'Asicrónico', N'', CAST(N'2023-08-18T21:47:34.360' AS DateTime), CAST(N'2023-08-18T21:47:34.360' AS DateTime))
SET IDENTITY_INSERT [dbo].[types] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [dni], [firstname], [lastname], [names], [password], [datebirth], [cellphone], [photo], [sex], [email], [email_verified_at], [remember_token], [created_at], [updated_at], [google_id]) VALUES (1, N'70066422', N'Herrera', N'Bendezú', N'Monica Arizú', N'$2y$10$0jpjjMVPxoDFgFZ07tfLIe0Qt.NaAMEwLvm.vRUmkMIXe1Cb9hWcu', CAST(N'1994-03-08' AS Date), N'967687216', NULL, N'F', N'monica.herrera@unmsm.edu.pe', NULL, NULL, CAST(N'2023-08-18T21:47:34.267' AS DateTime), CAST(N'2023-08-18T21:47:34.267' AS DateTime), N'2')
INSERT [dbo].[users] ([id], [dni], [firstname], [lastname], [names], [password], [datebirth], [cellphone], [photo], [sex], [email], [email_verified_at], [remember_token], [created_at], [updated_at], [google_id]) VALUES (2, N'44444444', N'Cardenas', N'Aquino', N'Anthony Robert', N'$2y$10$DpoDxemqIYmrwkswWvMU3e6r7TQxE8yO5x2.tMrajR/XiQ4G9Qxwm', CAST(N'2000-10-10' AS Date), N'999999999', NULL, N'M', N'logicainformatica18@gmail.com', NULL, NULL, CAST(N'2023-08-18T21:47:34.347' AS DateTime), CAST(N'2023-08-18T21:47:34.347' AS DateTime), N'3')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[failed_jobs] ADD  DEFAULT (getdate()) FOR [failed_at]
GO
ALTER TABLE [dbo].[survey_details] ADD  DEFAULT ('not') FOR [evaluate]
GO
ALTER TABLE [dbo].[survey_details] ADD  DEFAULT ('not') FOR [initialize]
GO
ALTER TABLE [dbo].[boxes_details]  WITH CHECK ADD  CONSTRAINT [boxes_details_boxe_id_foreign] FOREIGN KEY([boxe_id])
REFERENCES [dbo].[boxes] ([id])
GO
ALTER TABLE [dbo].[boxes_details] CHECK CONSTRAINT [boxes_details_boxe_id_foreign]
GO
ALTER TABLE [dbo].[courses]  WITH CHECK ADD  CONSTRAINT [courses_type_id_foreign] FOREIGN KEY([type_id])
REFERENCES [dbo].[types] ([id])
GO
ALTER TABLE [dbo].[courses] CHECK CONSTRAINT [courses_type_id_foreign]
GO
ALTER TABLE [dbo].[events]  WITH CHECK ADD  CONSTRAINT [events_schedule_id_foreign] FOREIGN KEY([schedule_id])
REFERENCES [dbo].[schedules] ([id])
GO
ALTER TABLE [dbo].[events] CHECK CONSTRAINT [events_schedule_id_foreign]
GO
ALTER TABLE [dbo].[model_has_permissions]  WITH CHECK ADD  CONSTRAINT [model_has_permissions_permission_id_foreign] FOREIGN KEY([permission_id])
REFERENCES [dbo].[permissions] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[model_has_permissions] CHECK CONSTRAINT [model_has_permissions_permission_id_foreign]
GO
ALTER TABLE [dbo].[model_has_roles]  WITH CHECK ADD  CONSTRAINT [model_has_roles_role_id_foreign] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[model_has_roles] CHECK CONSTRAINT [model_has_roles_role_id_foreign]
GO
ALTER TABLE [dbo].[participants]  WITH CHECK ADD  CONSTRAINT [participants_event_id_foreign] FOREIGN KEY([event_id])
REFERENCES [dbo].[events] ([id])
GO
ALTER TABLE [dbo].[participants] CHECK CONSTRAINT [participants_event_id_foreign]
GO
ALTER TABLE [dbo].[reports]  WITH CHECK ADD  CONSTRAINT [reports_client_id_foreign] FOREIGN KEY([client_id])
REFERENCES [dbo].[clients] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[reports] CHECK CONSTRAINT [reports_client_id_foreign]
GO
ALTER TABLE [dbo].[role_has_permissions]  WITH CHECK ADD  CONSTRAINT [role_has_permissions_permission_id_foreign] FOREIGN KEY([permission_id])
REFERENCES [dbo].[permissions] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[role_has_permissions] CHECK CONSTRAINT [role_has_permissions_permission_id_foreign]
GO
ALTER TABLE [dbo].[role_has_permissions]  WITH CHECK ADD  CONSTRAINT [role_has_permissions_role_id_foreign] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[role_has_permissions] CHECK CONSTRAINT [role_has_permissions_role_id_foreign]
GO
ALTER TABLE [dbo].[selection_details]  WITH CHECK ADD  CONSTRAINT [selection_details_associate_detail_id_foreign] FOREIGN KEY([associate_detail_id])
REFERENCES [dbo].[selection_details] ([id])
GO
ALTER TABLE [dbo].[selection_details] CHECK CONSTRAINT [selection_details_associate_detail_id_foreign]
GO
ALTER TABLE [dbo].[selection_details]  WITH CHECK ADD  CONSTRAINT [selection_details_selection_id_foreign] FOREIGN KEY([selection_id])
REFERENCES [dbo].[selections] ([id])
GO
ALTER TABLE [dbo].[selection_details] CHECK CONSTRAINT [selection_details_selection_id_foreign]
GO
ALTER TABLE [dbo].[selections]  WITH CHECK ADD  CONSTRAINT [selections_associate_id_foreign] FOREIGN KEY([associate_id])
REFERENCES [dbo].[selections] ([id])
GO
ALTER TABLE [dbo].[selections] CHECK CONSTRAINT [selections_associate_id_foreign]
GO
ALTER TABLE [dbo].[students]  WITH CHECK ADD  CONSTRAINT [students_user_id_foreign] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[students] CHECK CONSTRAINT [students_user_id_foreign]
GO
ALTER TABLE [dbo].[survey_clients]  WITH CHECK ADD  CONSTRAINT [survey_clients_client_id_foreign] FOREIGN KEY([client_id])
REFERENCES [dbo].[clients] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[survey_clients] CHECK CONSTRAINT [survey_clients_client_id_foreign]
GO
ALTER TABLE [dbo].[survey_clients]  WITH CHECK ADD  CONSTRAINT [survey_clients_selection_detail_id_foreign] FOREIGN KEY([selection_detail_id])
REFERENCES [dbo].[selection_details] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[survey_clients] CHECK CONSTRAINT [survey_clients_selection_detail_id_foreign]
GO
ALTER TABLE [dbo].[survey_clients]  WITH CHECK ADD  CONSTRAINT [survey_clients_survey_detail_id_foreign] FOREIGN KEY([survey_detail_id])
REFERENCES [dbo].[survey_details] ([id])
GO
ALTER TABLE [dbo].[survey_clients] CHECK CONSTRAINT [survey_clients_survey_detail_id_foreign]
GO
ALTER TABLE [dbo].[survey_details]  WITH CHECK ADD  CONSTRAINT [survey_details_selection_id_foreign] FOREIGN KEY([selection_id])
REFERENCES [dbo].[selections] ([id])
GO
ALTER TABLE [dbo].[survey_details] CHECK CONSTRAINT [survey_details_selection_id_foreign]
GO
ALTER TABLE [dbo].[survey_details]  WITH CHECK ADD  CONSTRAINT [survey_details_survey_id_foreign] FOREIGN KEY([survey_id])
REFERENCES [dbo].[surveys] ([id])
GO
ALTER TABLE [dbo].[survey_details] CHECK CONSTRAINT [survey_details_survey_id_foreign]
GO
ALTER TABLE [dbo].[topics]  WITH CHECK ADD  CONSTRAINT [topics_course_id_foreign] FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([id])
GO
ALTER TABLE [dbo].[topics] CHECK CONSTRAINT [topics_course_id_foreign]
GO
