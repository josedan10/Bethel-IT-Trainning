Public Class FormRecepcionDatos

    Public cantidad As Integer
    Public arreglo() As Double
    Dim i As Integer = 1

    Dim formularioResultado As New FormResultado()

    Private Sub btnSiguiente_Click(sender As Object, e As EventArgs) Handles btnSiguiente.Click

        arreglo(i - 1) = Convert.ToDouble(txtNumero.Text)

        'Actualizamos el label y el textbox
        Label1.Text = "Elemento " + Convert.ToString(i + 1)
        txtNumero.Text = ""

        Select Case i
            Case cantidad

                ReDim formularioResultado.arreglo(cantidad - 1)
                Array.Copy(arreglo, formularioResultado.arreglo, cantidad)
                formularioResultado.cantidad = cantidad

                Me.Hide()
                formularioResultado.Show()

            Case Else

                i = i + 1
        End Select




    End Sub

    Private Sub FormRecepcionDatos_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ReDim arreglo(cantidad - 1)

    End Sub
End Class