<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmLoggin
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmLoggin))
        Me.ButtonX1 = New DevComponents.DotNetBar.ButtonX()
        Me.LabelX1 = New DevComponents.DotNetBar.LabelX()
        Me.txbUser = New DevComponents.DotNetBar.Controls.TextBoxX()
        Me.LabelX2 = New DevComponents.DotNetBar.LabelX()
        Me.txbPass = New DevComponents.DotNetBar.Controls.TextBoxX()
        Me.ButtonX2 = New DevComponents.DotNetBar.ButtonX()
        Me.SuspendLayout()
        '
        'ButtonX1
        '
        Me.ButtonX1.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton
        Me.ButtonX1.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.ButtonX1.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground
        Me.ButtonX1.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ButtonX1.Location = New System.Drawing.Point(359, 405)
        Me.ButtonX1.Name = "ButtonX1"
        Me.ButtonX1.Size = New System.Drawing.Size(152, 32)
        Me.ButtonX1.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled
        Me.ButtonX1.TabIndex = 0
        Me.ButtonX1.Text = "Ingresar"
        '
        'LabelX1
        '
        Me.LabelX1.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.LabelX1.BackColor = System.Drawing.Color.Transparent
        '
        '
        '
        Me.LabelX1.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.LabelX1.Font = New System.Drawing.Font("Impact", 24.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LabelX1.ForeColor = System.Drawing.Color.Snow
        Me.LabelX1.Location = New System.Drawing.Point(359, 91)
        Me.LabelX1.Name = "LabelX1"
        Me.LabelX1.Size = New System.Drawing.Size(152, 54)
        Me.LabelX1.Style = DevComponents.DotNetBar.eDotNetBarStyle.Office2010
        Me.LabelX1.TabIndex = 1
        Me.LabelX1.Text = "Usuario"
        Me.LabelX1.TextAlignment = System.Drawing.StringAlignment.Center
        '
        'txbUser
        '
        Me.txbUser.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.txbUser.BackColor = System.Drawing.Color.White
        '
        '
        '
        Me.txbUser.Border.Class = "TextBoxBorder"
        Me.txbUser.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.txbUser.DisabledBackColor = System.Drawing.Color.White
        Me.txbUser.Font = New System.Drawing.Font("Impact", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txbUser.ForeColor = System.Drawing.Color.Black
        Me.txbUser.Location = New System.Drawing.Point(359, 176)
        Me.txbUser.Name = "txbUser"
        Me.txbUser.PreventEnterBeep = True
        Me.txbUser.Size = New System.Drawing.Size(152, 33)
        Me.txbUser.TabIndex = 2
        Me.txbUser.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'LabelX2
        '
        Me.LabelX2.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.LabelX2.BackColor = System.Drawing.Color.Transparent
        '
        '
        '
        Me.LabelX2.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.LabelX2.Font = New System.Drawing.Font("Impact", 21.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LabelX2.ForeColor = System.Drawing.Color.Snow
        Me.LabelX2.Location = New System.Drawing.Point(359, 216)
        Me.LabelX2.Name = "LabelX2"
        Me.LabelX2.Size = New System.Drawing.Size(152, 56)
        Me.LabelX2.Style = DevComponents.DotNetBar.eDotNetBarStyle.Office2010
        Me.LabelX2.TabIndex = 3
        Me.LabelX2.Text = "Contraseña"
        Me.LabelX2.TextAlignment = System.Drawing.StringAlignment.Center
        '
        'txbPass
        '
        Me.txbPass.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.txbPass.BackColor = System.Drawing.Color.White
        '
        '
        '
        Me.txbPass.Border.Class = "TextBoxBorder"
        Me.txbPass.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.txbPass.DisabledBackColor = System.Drawing.Color.White
        Me.txbPass.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txbPass.ForeColor = System.Drawing.Color.Black
        Me.txbPass.Location = New System.Drawing.Point(359, 300)
        Me.txbPass.Name = "txbPass"
        Me.txbPass.PasswordChar = Global.Microsoft.VisualBasic.ChrW(42)
        Me.txbPass.PreventEnterBeep = True
        Me.txbPass.Size = New System.Drawing.Size(152, 31)
        Me.txbPass.TabIndex = 4
        Me.txbPass.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'ButtonX2
        '
        Me.ButtonX2.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton
        Me.ButtonX2.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ButtonX2.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground
        Me.ButtonX2.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ButtonX2.Location = New System.Drawing.Point(793, 515)
        Me.ButtonX2.Name = "ButtonX2"
        Me.ButtonX2.Size = New System.Drawing.Size(75, 23)
        Me.ButtonX2.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled
        Me.ButtonX2.TabIndex = 5
        Me.ButtonX2.Text = "Salir"
        '
        'frmLoggin
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Image)
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(880, 550)
        Me.Controls.Add(Me.ButtonX2)
        Me.Controls.Add(Me.txbPass)
        Me.Controls.Add(Me.LabelX2)
        Me.Controls.Add(Me.txbUser)
        Me.Controls.Add(Me.LabelX1)
        Me.Controls.Add(Me.ButtonX1)
        Me.DoubleBuffered = True
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Name = "frmLoggin"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Iniciar"
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents ButtonX1 As DevComponents.DotNetBar.ButtonX
    Friend WithEvents LabelX1 As DevComponents.DotNetBar.LabelX
    Friend WithEvents txbUser As DevComponents.DotNetBar.Controls.TextBoxX
    Friend WithEvents LabelX2 As DevComponents.DotNetBar.LabelX
    Friend WithEvents txbPass As DevComponents.DotNetBar.Controls.TextBoxX
    Friend WithEvents ButtonX2 As DevComponents.DotNetBar.ButtonX
End Class
