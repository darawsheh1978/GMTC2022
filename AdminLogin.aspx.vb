

Imports System.Data.SqlClient
Imports System.Globalization
Imports System.IO
Imports System.Runtime.Serialization
Imports System.Text
Imports System.Net
Imports System.Web.Services
Imports System.Security.Cryptography
Imports System.Net.Mail

Public Class AdminLogin
    Inherits System.Web.UI.Page



    Protected Sub BtnLogin_Click(sender As Object, e As EventArgs) Handles BtnLogin.Click

        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "Pop", "openModal();", True)



        Dim com As New SqlClient.SqlCommand
        com.CommandText = "Select UserId from Users_ where level=1 and userid='" &
            txtUser.Text & "' and CONVERT(varchar(50), DECRYPTBYPASSPHRASE('aBc',password))='" & (Trim(txtPass.Text)) & "'"
        Dim con As New SqlConnection(Me.SqlGovs.ConnectionString)
        Dim dr As SqlDataReader
        If con.State = ConnectionState.Closed Then con.Open()
        com.Connection = con
        dr = com.ExecuteReader


        If dr.HasRows Then
            Session("Admin") = "1"
            Session("User") = "1"
            Session("owner") = txtUser.Text
            Select Case UCase(Session("owner"))
                Case UCase("Admin-nsf")
                    Response.Redirect("searchRecruitments.aspx")
                Case UCase("Admin")
                    Response.Redirect("NewAnnouncement.aspx")
            End Select


        Else
            lblmessage.Text = "الرجاء التأكد من اسم المستخدم وكلمة المرور"
            dr.Close()
        End If



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