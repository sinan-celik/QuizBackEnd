USE [QuizDB]
GO
SET IDENTITY_INSERT [dbo].[Answers] ON 
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (1, N'test', 1, N'GS', 1)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (2, N'test', 1, N'BJK', 0)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (3, N'test', 1, N'FB', 0)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (4, N'test', 1, N'TRB', 0)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (5, N'test', 2, N'Corolla', 1)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (6, N'test', 2, N'Golf', 0)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (7, N'test', 2, N'Focus', 0)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (8, N'test', 2, N'Kartal', 0)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (9, N'test', 3, N'Ankara', 1)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (10, N'test', 3, N'Kayseri', 0)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (11, N'test', 3, N'Çankırı', 0)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (12, N'test', 3, N'Rize', 0)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (13, N'test', 4, N'İstanbul', 1)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (14, N'test', 4, N'Ankara', 0)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (15, N'test', 4, N'Batman', 0)
GO
INSERT [dbo].[Answers] ([Id], [ProjectCode], [QuestionId], [AnswerText], [IsTrue]) VALUES (16, N'test', 4, N'Ordu', 0)
GO
SET IDENTITY_INSERT [dbo].[Answers] OFF
GO
SET IDENTITY_INSERT [dbo].[Logs] ON 
GO
INSERT [dbo].[Logs] ([Id], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Detail], [Date], [Audit]) VALUES (1, NULL, NULL, NULL, NULL, N'{
  "Message": {
    "ExceptionMessage": "An error occurred while updating the entries. See the inner exception for details.",
    "MethodName": "Add",
    "LogParameters": [
      {
        "Name": "userDetail",
        "Value": {
          "BirthDate": "2020-02-24T20:10:44.149Z",
          "IdentityNumber": "11111111111",
          "Passport": "sdfgbhwdfgh",
          "UserId": 1,
          "Id": 1,
          "IsDeleted": false,
          "CreatedAt": "2020-02-24T20:10:44.15Z",
          "CreatedBy": 0,
          "UpdatedAt": "2020-02-24T20:10:44.15Z",
          "UpdatedBy": 0
        },
        "Type": "UserDetail"
      }
    ]
  }
}
', CAST(N'2020-02-24T23:11:16.683' AS DateTime), N'ERROR')
GO
INSERT [dbo].[Logs] ([Id], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Detail], [Date], [Audit]) VALUES (2, NULL, NULL, NULL, NULL, N'{
  "Message": {
    "ExceptionMessage": "Object reference not set to an instance of an object.",
    "MethodName": "GetQuestionsAndAnswerByProjectCode",
    "LogParameters": [
      {
        "Name": "pCode",
        "Value": "test",
        "Type": "String"
      }
    ]
  }
}
', CAST(N'2020-02-25T05:41:58.367' AS DateTime), N'ERROR')
GO
INSERT [dbo].[Logs] ([Id], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Detail], [Date], [Audit]) VALUES (3, NULL, NULL, NULL, NULL, N'{
  "Message": {
    "ExceptionMessage": "Object reference not set to an instance of an object.",
    "MethodName": "GetQuestionsAndAnswerByProjectCode",
    "LogParameters": [
      {
        "Name": "pCode",
        "Value": "test",
        "Type": "String"
      }
    ]
  }
}
', CAST(N'2020-02-25T18:44:22.683' AS DateTime), N'ERROR')
GO
INSERT [dbo].[Logs] ([Id], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Detail], [Date], [Audit]) VALUES (4, NULL, NULL, NULL, NULL, N'{
  "Message": {
    "ExceptionMessage": "Object reference not set to an instance of an object.",
    "MethodName": "GetQuestionsAndAnswerByProjectCode",
    "LogParameters": [
      {
        "Name": "pCode",
        "Value": "test",
        "Type": "String"
      }
    ]
  }
}
', CAST(N'2020-02-25T18:46:36.750' AS DateTime), N'ERROR')
GO
SET IDENTITY_INSERT [dbo].[Logs] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 
GO
INSERT [dbo].[Questions] ([Id], [ProjectCode], [QuestionText]) VALUES (1, N'test', N'Türkiyenin en iyi futbol takımı hangisidir?')
GO
INSERT [dbo].[Questions] ([Id], [ProjectCode], [QuestionText]) VALUES (2, N'test', N'En çok satan araç modeli ?')
GO
INSERT [dbo].[Questions] ([Id], [ProjectCode], [QuestionText]) VALUES (3, N'test', N'Türkiyenin baş kenti?')
GO
INSERT [dbo].[Questions] ([Id], [ProjectCode], [QuestionText]) VALUES (4, N'test', N'En kalabalık nüfusa sahip il?')
GO
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
SET IDENTITY_INSERT [dbo].[UserDetails] ON 
GO
INSERT [dbo].[UserDetails] ([Id], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [IsDeleted], [BirthDate], [IdentityNumber], [Passport], [UserId]) VALUES (1, CAST(N'2020-02-24T20:10:44.150' AS DateTime), 0, CAST(N'2020-02-24T20:10:44.150' AS DateTime), 0, 0, CAST(N'2020-02-24T20:10:44.150' AS DateTime), N'11111111111', N'sdfgbhwdfgh', 1)
GO
SET IDENTITY_INSERT [dbo].[UserDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [IsDeleted], [IsActive], [Name], [Email], [Phone], [PasswordSalt], [PasswordHash]) VALUES (1, CAST(N'2020-02-23T18:05:26.130' AS DateTime), 0, NULL, NULL, 0, 1, N'Sinan', N'sinancelik87@gmail.com', N'555 683 9690', 0x212BC04538E21720131CB0D1A7843BE4D912DD21B99F3A5191421D63ADCE7BACCF6459C0ABA5904377034D2B96508C0DEF4CD56ABCD82D07EE7F04C7F174E991DE13D8494E0460C52C23BE53D38D72DA1BE1E5E6AADEEEF90DB3F3AA79AB3F0D08DFB2D0835B4A2560DC8F2A8678DCBB2C85C35A9156962608F7C70E12CCAA24, 0x181AD7892C66884BABEA3D4EAD43EF355AD322981BFEE8A4A722FBDE5BCE6AD7F9CA856CB0EA2FED1E1755F82A55B189A8A59EFA221FD0B2DD6E082F82946610)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
