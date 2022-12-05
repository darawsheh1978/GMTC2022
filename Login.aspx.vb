Imports System.Data.SqlClient
Imports System.Globalization
Imports System.IO
Imports System.Runtime.Serialization
Imports System.Text
Imports System.Net
Imports System.Web.Services
Imports System.Security.Cryptography
Imports System.Net.Mail

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then


            If Session("announcenettype") = "" Then
                Response.Redirect("announce.aspx")
            End If
        End If
    End Sub

    Protected Sub BtnLogin_Click(sender As Object, e As EventArgs) Handles BtnLogin.Click





        Dim com As New SqlClient.SqlCommand
        com.CommandText = "Select UserId from Users_ where userid=N'" &
            txtUser.Text & "' and CONVERT(varchar(50), DECRYPTBYPASSPHRASE('aBc',password))=N'" & (Trim(txtPass.Text)) & "'"
        Dim con As New SqlConnection(Me.SqlGovs.ConnectionString)
        Dim dr As SqlDataReader
        If con.State = ConnectionState.Closed Then con.Open()
        com.Connection = con
        dr = com.ExecuteReader


        If dr.HasRows Then
            dr.Read()
            Session("UserId") = dr("UserId")
            Session("User") = "1"
            dr.Close()
            If CheckID() = True Then
                lblmessage.Text = "لقد قمت بتعبئة الطلب من قبل."
                dr.Close()
                Exit Sub
            End If


            Select Case Session("announcenettype")
                Case "تجنيد"
                    Response.Redirect("recruitment.aspx")
                Case "كليات خارجية"
                    Response.Redirect("CheckGrade.aspx")
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

    Function CheckID() As Boolean

        Dim com As New SqlClient.SqlCommand
        com.CommandText = "Select Id  from recruitments where [IDNumber]=N'" & txtUser.Text & "' and announcementId=" & Session("announcenetid")

        Dim con As New SqlConnection(Me.SqlGovs.ConnectionString)
        Dim dr As SqlDataReader
        If con.State = ConnectionState.Closed Then con.Open()
        com.Connection = con
        dr = com.ExecuteReader
        If dr.HasRows Then
            dr.Close()
            Return True
        Else
            dr.Close()
            Return False
        End If

    End Function
End Class