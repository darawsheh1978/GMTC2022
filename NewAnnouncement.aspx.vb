Imports System.Data.SqlClient

Public Class NewAnnouncement
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Admin") <> "1" Then Response.Redirect("AdminLogin.aspx")
        Select Case UCase(Session("owner"))
            Case UCase("Admin-nsf")
                Response.Redirect("searchRecruitments.aspx")
            Case UCase("Admin")

        End Select
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles AddNew.Click
        Dim qry As String
        qry = "Insert into Announcements([Name],[Type],grade,[Desc],[DateFrom],[DateTo], DateTo_) " &
            "values(N'" & Name.Text & "',N'" & Type.SelectedItem.Text & "',N'" & Grade.Text & "',N'" & Desc.Text & "',N'" & DatFrom.Text & "',N'" & DatTo.Text & "','" & DateTo_.Text & "')"

        Dim com As New SqlClient.SqlCommand
        com.CommandText = qry
        Dim con As New SqlConnection(Me.SqlAnnouncements.ConnectionString)

        If con.State = ConnectionState.Closed Then con.Open()
        com.Connection = con
        com.ExecuteNonQuery()


        GD.DataBind()
    End Sub

    Protected Sub Type_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Type.SelectedIndexChanged
        If Type.SelectedValue = "كليات خارجية" Then
            Grade.Enabled = True
        Else
            Grade.Enabled = False
        End If
    End Sub

    Protected Sub GD_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GD.SelectedIndexChanged

    End Sub

    Private Sub GD_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GD.RowCommand
        Dim Id As Int16 = e.CommandArgument
        Select Case e.CommandName
            Case "edit_"
                Dim qry As String
                qry = "select [Name],[Type],isnull(grade,0) as grade,[Desc],[DateFrom],[DateTo],DateTo_ from Announcements where id=" & Id
                Dim com As New SqlClient.SqlCommand
                Dim dr As SqlClient.SqlDataReader
                com.CommandText = qry
                Dim con As New SqlConnection(Me.SqlAnnouncements.ConnectionString)
                AnnID.Value = Id
                If con.State = ConnectionState.Closed Then con.Open()
                com.Connection = con
                dr = com.ExecuteReader
                While dr.Read
                    Type.SelectedValue = dr("type")
                    Desc.Text = dr("desc")
                    DatFrom.Text = dr("DateFrom")
                    DatTo.Text = dr("DateTo")
                    DateTo_.Text = dr("DateTo_")
                    Name.Text = dr("name")
                    Grade.Text = dr("Grade")

                    If dr("type") = "كليات خارجية" Then
                        Grade.Enabled = True
                    Else
                        Grade.Enabled = False
                    End If
                    SaveChanges.Visible = True
                    AddNew.Visible = False
                End While
            Case "del_"
                Dim qry As String
                qry = "DELETE FROM  Announcements where id=" & Id
                Dim com As New SqlClient.SqlCommand

                com.CommandText = qry
                Dim con As New SqlConnection(Me.SqlAnnouncements.ConnectionString)

                If con.State = ConnectionState.Closed Then con.Open()
                com.Connection = con
                com.ExecuteNonQuery()
                GD.DataBind()
        End Select
    End Sub

    Protected Sub SaveChanges_Click(sender As Object, e As EventArgs) Handles SaveChanges.Click
        Dim qry As String
        qry = "update Announcements Set " &
            "[Name]=N'" & Replace(Name.Text, "'", "''") & "'" &
            ",[Type]=N'" & Type.SelectedItem.Text & "'" &
            ",grade=N'" & Replace(Grade.Text, "'", "''") & "'" &
            ",[Desc]=N'" & Replace(Desc.Text, "'", "''") & "'" &
            ",[DateFrom] =N'" & DatFrom.Text & "'" &
            ",[DateTo_] =N'" & DateTo_.Text & "'" &
            ", [DateTo]=N'" & DatTo.Text & "' where id=" & AnnID.Value


        Dim com As New SqlClient.SqlCommand
        com.CommandText = qry
        Dim con As New SqlConnection(Me.SqlAnnouncements.ConnectionString)

        If con.State = ConnectionState.Closed Then con.Open()
        com.Connection = con
        com.ExecuteNonQuery()


        GD.DataBind()

        SaveChanges.Visible = False
        AddNew.Visible = True
        Name.Text = ""
        Type.SelectedIndex = 0
        Grade.Text = ""
        Desc.Text = ""
        DatFrom.Text = ""
        DatTo.Text = ""
    End Sub
End Class