<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class FormResultado
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
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
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.lblSuma = New System.Windows.Forms.Label()
        Me.lblResta = New System.Windows.Forms.Label()
        Me.lblMultiplicacion = New System.Windows.Forms.Label()
        Me.lblPromedio = New System.Windows.Forms.Label()
        Me.btnFinalizar = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'lblSuma
        '
        Me.lblSuma.AutoSize = True
        Me.lblSuma.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblSuma.Location = New System.Drawing.Point(22, 18)
        Me.lblSuma.Name = "lblSuma"
        Me.lblSuma.Size = New System.Drawing.Size(51, 20)
        Me.lblSuma.TabIndex = 0
        Me.lblSuma.Text = "Suma"
        '
        'lblResta
        '
        Me.lblResta.AutoSize = True
        Me.lblResta.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblResta.Location = New System.Drawing.Point(24, 54)
        Me.lblResta.Name = "lblResta"
        Me.lblResta.Size = New System.Drawing.Size(52, 20)
        Me.lblResta.TabIndex = 1
        Me.lblResta.Text = "Resta"
        '
        'lblMultiplicacion
        '
        Me.lblMultiplicacion.AutoSize = True
        Me.lblMultiplicacion.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblMultiplicacion.Location = New System.Drawing.Point(24, 96)
        Me.lblMultiplicacion.Name = "lblMultiplicacion"
        Me.lblMultiplicacion.Size = New System.Drawing.Size(103, 20)
        Me.lblMultiplicacion.TabIndex = 2
        Me.lblMultiplicacion.Text = "Multiplicacion"
        '
        'lblPromedio
        '
        Me.lblPromedio.AutoSize = True
        Me.lblPromedio.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblPromedio.Location = New System.Drawing.Point(24, 139)
        Me.lblPromedio.Name = "lblPromedio"
        Me.lblPromedio.Size = New System.Drawing.Size(76, 20)
        Me.lblPromedio.TabIndex = 3
        Me.lblPromedio.Text = "Promedio"
        '
        'btnFinalizar
        '
        Me.btnFinalizar.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnFinalizar.Location = New System.Drawing.Point(76, 191)
        Me.btnFinalizar.Name = "btnFinalizar"
        Me.btnFinalizar.Size = New System.Drawing.Size(141, 40)
        Me.btnFinalizar.TabIndex = 4
        Me.btnFinalizar.Text = "Finalizar"
        Me.btnFinalizar.UseVisualStyleBackColor = True
        '
        'FormResultado
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(284, 253)
        Me.Controls.Add(Me.btnFinalizar)
        Me.Controls.Add(Me.lblPromedio)
        Me.Controls.Add(Me.lblMultiplicacion)
        Me.Controls.Add(Me.lblResta)
        Me.Controls.Add(Me.lblSuma)
        Me.Name = "FormResultado"
        Me.Text = "FormResultado"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents lblSuma As Label
    Friend WithEvents lblResta As Label
    Friend WithEvents lblMultiplicacion As Label
    Friend WithEvents lblPromedio As Label
    Friend WithEvents btnFinalizar As Button
End Class
