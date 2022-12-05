Imports System.Data.SqlClient
Imports System.Globalization
Imports System.IO
Imports System.Runtime.Serialization
Imports System.Text
Imports System.Net
Imports System.Web.Services
Imports System.Security.Cryptography
Imports System.Net.Mail
Public Class newaccount
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnLogin_Click(sender As Object, e As EventArgs) Handles BtnLogin.Click
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "Pop", "openModal();", True)



        Dim com As New SqlClient.SqlCommand
        com.CommandText = "Delete from users_ where userId='" & Trim(txtUser.Text) & "' "
        com.CommandText &= "insert into users_([UserId],[Password]) values(N'" & txtUser.Text & "',ENCRYPTBYPASSPHRASE ('aBc','" & txtPass.Text & "'))"
        Dim con As New SqlConnection(Me.SqlGovs.ConnectionString)

        If con.State = ConnectionState.Closed Then con.Open()
        com.Connection = con
        com.ExecuteNonQuery()
        BtnLogin.Enabled = False

        msg.Text = "تم انشاء الحساب بنجاح. الرجاء الذهاب الى شاشة تسجيل الدخول"
    End Sub




    Private Function Encrypt(pw As String) As String
        Dim hash As String = "WTomorrow@200$"
        Dim data() As Byte
        data = UTF8Encoding.UTF8.GetBytes(pw)
        Dim md5 As New MD5CryptoServiceProvider
        Dim Trp As New TripleDESCryptoServiceProvider
        Trp.Key = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash))
        Trp.Mode = CipherMode.ECB

        Dim Transform As ICryptoTransform = Trp.CreateEncryptor
        Dim result() As Byte
        result = Transform.TransformFinalBlock(data, 0, data.Length)

        Return Convert.ToBase64String(result)


    End Function
End Class