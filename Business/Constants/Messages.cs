using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Text;

namespace Business.Constants
{
    public static class Messages
    {
        public static string UserNotFound = "Kullanıcı bulunamadı.";
        public static string PasswordWrong = "Şifre yanlış girildi.";
        public static string LoginSuccessfull = "Giriş işlemi başarılı.";
        public static string UserAlreadyExists = "Kullanıcı zaten mevcut.";
        public static string RegisterSuccessfull = "Kullanıcı başarıyla kaydedildi.";
        public static string AccessTokenCreated = "Access Token başarıyla oluşturuldu.";
        public static string AuthorizationDenied = "Yetkiniz yok!";

    }
}
