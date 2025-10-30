
Partial Class admin_MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("email") Is Nothing Then
            Response.Redirect("login.aspx")
        End If
    End Sub

    Protected Sub btnlogout_Click(sender As Object, e As System.EventArgs) Handles btnlogout.Click
        Session.Abandon()
        Response.Redirect("login.aspx")
    End Sub
End Class

