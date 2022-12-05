Public Class selfreport
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Admin") <> "1" Then Response.Redirect("AdminLogin.aspx")
        Dim Id As Integer = Request.QueryString(0)
        SqlAnnouncements.SelectCommand = "SELECT   * from recruitments where id =" & Id
        Repeater1.DataBind()

    End Sub

End Class