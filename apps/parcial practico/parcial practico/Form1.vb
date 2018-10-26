Public Class frmLoggin
    Private Sub ButtonX2_Click(sender As Object, e As EventArgs) Handles ButtonX2.Click
        Application.Exit()
    End Sub

    Private Sub ButtonX1_Click(sender As Object, e As EventArgs) Handles ButtonX1.Click
        Dim escritorio As New frmMenu
        If txbUser.Text = "usuario" And txbPass.Text = "contraseña" Then
            escritorio.Show()
            Me.Hide()

        Else
            MsgBox("Usuario o contraseña incorrectos")
            txbUser.Clear()
            txbPass.Clear()

        End If
    End Sub
End Class
