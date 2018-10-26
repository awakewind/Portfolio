Imports System.Diagnostics
Public Class frmMenu
    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click
        pnlmenuinicio.Visible = True
        pnlinicio2.Visible = True
    End Sub

    Private Sub btnapagar_Click(sender As Object, e As EventArgs) Handles btnapagar.Click
        End
    End Sub

    Private Sub frmMenu_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        pnlmenuinicio.Visible = False
        pnlinicio2.Visible = False
    End Sub

    Private Sub pnlInicio_Click(sender As Object, e As EventArgs) Handles pnlInicio.Click
        pnlmenuinicio.Visible = False
    End Sub

    Private Sub frmMenu_Click(sender As Object, e As EventArgs) Handles MyBase.Click
        pnlmenuinicio.Visible = False
    End Sub

    Private Sub LabelItem1_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click
        Dim home As String = "www.google.com"
        Process.Start(home)

    End Sub

    Private Sub btnNavegador_Click(sender As Object, e As EventArgs) Handles btnNavegador.Click
        Dim home As String = "www.google.com"
        Process.Start(home)
    End Sub

    Private Sub btnBloc_Click(sender As Object, e As EventArgs) Handles btnBloc.Click
        Dim p As New Process()
        p.StartInfo = New ProcessStartInfo("notepad.exe")
        p.Start()
    End Sub

    Private Sub btnPaint_Click(sender As Object, e As EventArgs) Handles btnPaint.Click
        Dim c As New Process()
        c.StartInfo = New ProcessStartInfo("mspaint.exe")
        c.Start()
    End Sub

    Private Sub btnCalculadora_Click(sender As Object, e As EventArgs) Handles btnCalculadora.Click
        Dim calculadora As New frmCalculadora
        calculadora.Show()

    End Sub

    Private Sub AnalogClockControl1_ValueChanged(sender As Object, e As EventArgs) Handles AnalogClockControl1.ValueChanged

    End Sub

    Private Sub btnCMD_Click(sender As Object, e As EventArgs) Handles btnCMD.Click
        Dim d As New Process()
        d.StartInfo = New ProcessStartInfo("cmd.exe")
        d.Start()
    End Sub

    Private Sub BubbleButton1_Click(sender As Object, e As DevComponents.DotNetBar.ClickEventArgs) Handles BubbleButton1.Click
        Dim home As String = "www.google.com"
        Process.Start(home)

    End Sub

    Private Sub BubbleButton2_Click(sender As Object, e As DevComponents.DotNetBar.ClickEventArgs) Handles BubbleButton2.Click
        Dim p As New Process()
        p.StartInfo = New ProcessStartInfo("notepad.exe")
        p.Start()
    End Sub

    Private Sub BubbleButton3_Click(sender As Object, e As DevComponents.DotNetBar.ClickEventArgs) Handles BubbleButton3.Click
        Dim c As New Process()
        c.StartInfo = New ProcessStartInfo("mspaint.exe")
        c.Start()
    End Sub
End Class