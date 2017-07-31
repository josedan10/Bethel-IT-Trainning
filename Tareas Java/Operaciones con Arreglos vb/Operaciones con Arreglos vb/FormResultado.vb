Public Class FormResultado

    Public arreglo() As Double
    Public cantidad As Integer
    Private Sub FormResultado_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        Dim Suma,
            Resta,
            Multiplicacion,
            Promedio As Double

        Suma = sumaArreglo(arreglo, cantidad)
        Resta = restaArreglo(arreglo, cantidad)
        Multiplicacion = multiplicacionArreglo(arreglo, cantidad)
        Promedio = promedioArreglo(arreglo, cantidad)

        lblSuma.Text = "Suma: " + Convert.ToString(Suma)
        lblResta.Text = "Resta: " + Convert.ToString(Resta)
        lblMultiplicacion.Text = "Multiplicacion: " + Convert.ToString(Multiplicacion)
        lblPromedio.Text = "Promedio: " + Convert.ToString(Promedio)


    End Sub

    Private Sub btnFinalizar_Click(sender As Object, e As EventArgs) Handles btnFinalizar.Click
        End
    End Sub
End Class