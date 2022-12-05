Public Class GeneralGuidance
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnAccept.Click
        Response.Redirect("Login.aspx")
    End Sub
End Class