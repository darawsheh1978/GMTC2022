Public Class announce
    Inherits System.Web.UI.Page




    Protected Sub Repeater1_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles Repeater1.ItemCommand
        Dim arg As String = e.CommandArgument
        Dim val() As String = arg.Split("!")
        Session("announcenetid") = val(0)
        Session("announcenettype") = val(1)
        Session("GradeToCompare") = val(2)



        Select Case Session("announcenettype")
            Case "تجنيد"
                If Session("announcenetid") = 37 Then
                    Response.Redirect("IndexPrivate.aspx")
                Else
                    Response.Redirect("Index.aspx")
                End If



            Case "كليات خارجية"
                Response.Redirect("IndexCollages.aspx")
        End Select


        '  Response.Redirect("IndexCollages.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Session.Clear()
            SqlAnnouncements.SelectCommand = "SELECT Id, Name, Type, [Desc], DateFrom, grade, DateTo FROM Announcements" &
          " where DateFrom<= GETDATE() and DateTo_ >= getdate() ORDER BY DATETO DESC"
            Repeater1.DataBind()


        End If


    End Sub
End Class