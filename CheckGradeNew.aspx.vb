

Imports System.Data.SqlClient

Public Class CheckGradeNew
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Admin") <> "1" Then Response.Redirect("announce.aspx")
        If Not Page.IsPostBack Then

            'Dim com As New SqlClient.SqlCommand
            'com.CommandText = "Select grade from [dbo].[Announcements] where id = " & Session("announcenetid")
            'Dim con As New SqlConnection(Me.SqlGovs.ConnectionString)

            'If con.State = ConnectionState.Closed Then con.Open()
            'com.Connection = con
            'Dim dr As SqlDataReader
            'Try
            '    dr = com.ExecuteReader
            'Catch ex As Exception
            '    Exit Sub

            'End Try

            'If dr.HasRows Then
            '    dr.Read()
            '   lblCond.Text = "ملاحظة: يجب ان لا تقل علامة الثانوية العامة عن :" & " " & dr(0)
            '    Session("grade") = dr(0)
            'End If
        End If


    End Sub

    Protected Sub btnGetGrade_Click(sender As Object, e As EventArgs) Handles btnGetGrade.Click

        Dim com As New SqlClient.SqlCommand
        com.CommandText = "Select [Average],[Speciality],[Fname],[Sname],[Tname],[Family] from Averages where   year= " & yr.SelectedValue & " and [TawjihiId]= " & TawjihiId.Text
        Dim con As New SqlConnection(Me.SqlGovs.ConnectionString)

        If con.State = ConnectionState.Closed Then con.Open()
        com.Connection = con
        Dim dr As SqlDataReader
        Try
            dr = com.ExecuteReader
            If dr.HasRows Then
                dr.Read()
                Speciality.Text = dr("Speciality")
                Average.Text = dr("Average")
                Session("Speciality") = Speciality.Text
                Session("Average") = Average.Text
                Session("TawjihiID") = TawjihiId.Text
                Session("Fname") = dr("Fname")
                Session("Sname") = dr("Sname")
                Session("Tname") = dr("Tname")
                Session("Family") = dr("Family")

                Select Case dr("Speciality")
                    Case "الأدبي"

                        btncont.Visible = True
                            Msg.Text = "يمكنك الاستمرار "

                    Case "العلمي"

                        btncont.Visible = True
                            Msg.Text = "يمكنك الاستمرار "



                End Select


            Else
                Msg.Text = "لم يتم العثور على رقم الجلوس"
            End If


        Catch ex As Exception
            Msg.Text = "حصل خطأ في الادخال. الرجاء التواصل مع الجهات المختصة"
        End Try
        con.Close()


    End Sub

    Protected Sub btncont_Click(sender As Object, e As EventArgs) Handles btncont.Click
        Response.Redirect("collages.aspx")
    End Sub
End Class