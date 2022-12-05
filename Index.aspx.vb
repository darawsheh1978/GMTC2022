Public Class Index
    Inherits System.Web.UI.Page



    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnAccept.Click
        Response.Redirect("GeneralGuidance.aspx")
    End Sub


    Private Sub chkAccept1_CheckedChanged(sender As Object, e As EventArgs) Handles chkAccept1.CheckedChanged
        If chkAccept1.Checked = True Then
            btnAccept.Enabled = True
        Else
            btnAccept.Enabled = False

        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load


    End Sub
End Class

