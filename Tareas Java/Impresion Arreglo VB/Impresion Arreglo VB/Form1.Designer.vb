<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
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
        Me.btnSiguiente = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtFilas = New System.Windows.Forms.TextBox()
        Me.txtColumnas = New System.Windows.Forms.TextBox()
        Me.btnAgregarElemento = New System.Windows.Forms.Button()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.txtElemento = New System.Windows.Forms.TextBox()
        Me.SuspendLayout()
        '
        'btnSiguiente
        '
        Me.btnSiguiente.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnSiguiente.Location = New System.Drawing.Point(64, 196)
        Me.btnSiguiente.Name = "btnSiguiente"
        Me.btnSiguiente.Size = New System.Drawing.Size(129, 37)
        Me.btnSiguiente.TabIndex = 0
        Me.btnSiguiente.Text = "Siguiente"
        Me.btnSiguiente.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(41, 38)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(42, 20)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Filas"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(41, 101)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(80, 20)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Columnas"
        '
        'txtFilas
        '
        Me.txtFilas.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtFilas.Location = New System.Drawing.Point(186, 32)
        Me.txtFilas.Name = "txtFilas"
        Me.txtFilas.Size = New System.Drawing.Size(29, 26)
        Me.txtFilas.TabIndex = 3
        '
        'txtColumnas
        '
        Me.txtColumnas.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtColumnas.Location = New System.Drawing.Point(186, 95)
        Me.txtColumnas.Name = "txtColumnas"
        Me.txtColumnas.Size = New System.Drawing.Size(29, 26)
        Me.txtColumnas.TabIndex = 4
        '
        'btnAgregarElemento
        '
        Me.btnAgregarElemento.Enabled = False
        Me.btnAgregarElemento.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnAgregarElemento.Location = New System.Drawing.Point(410, 196)
        Me.btnAgregarElemento.Name = "btnAgregarElemento"
        Me.btnAgregarElemento.Size = New System.Drawing.Size(218, 35)
        Me.btnAgregarElemento.TabIndex = 5
        Me.btnAgregarElemento.Text = "Añadir Elemento"
        Me.btnAgregarElemento.UseVisualStyleBackColor = True
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(386, 32)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(77, 20)
        Me.Label3.TabIndex = 6
        Me.Label3.Text = "Elemento"
        '
        'txtElemento
        '
        Me.txtElemento.Enabled = False
        Me.txtElemento.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtElemento.Location = New System.Drawing.Point(390, 95)
        Me.txtElemento.Name = "txtElemento"
        Me.txtElemento.Size = New System.Drawing.Size(254, 26)
        Me.txtElemento.TabIndex = 7
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(668, 261)
        Me.Controls.Add(Me.txtElemento)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.btnAgregarElemento)
        Me.Controls.Add(Me.txtColumnas)
        Me.Controls.Add(Me.txtFilas)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.btnSiguiente)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents btnSiguiente As Button
    Friend WithEvents Label1 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents txtFilas As TextBox
    Friend WithEvents txtColumnas As TextBox
    Friend WithEvents btnAgregarElemento As Button
    Friend WithEvents Label3 As Label
    Friend WithEvents txtElemento As TextBox
End Class
