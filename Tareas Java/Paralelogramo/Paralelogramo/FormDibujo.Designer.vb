<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FormDibujo
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
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

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.lblDibujo = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'lblDibujo
        '
        Me.lblDibujo.AutoSize = True
        Me.lblDibujo.Font = New System.Drawing.Font("Consolas", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblDibujo.Location = New System.Drawing.Point(15, 15)
        Me.lblDibujo.Name = "lblDibujo"
        Me.lblDibujo.Size = New System.Drawing.Size(0, 19)
        Me.lblDibujo.TabIndex = 0
        '
        'FormDibujo
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(472, 359)
        Me.Controls.Add(Me.lblDibujo)
        Me.Name = "FormDibujo"
        Me.Text = "FormDibujo"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents lblDibujo As Label
End Class
