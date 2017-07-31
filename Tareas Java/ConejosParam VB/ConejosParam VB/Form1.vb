Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles btnResultado.Click
        Dim conejosTiernosIniciales, conejosMadurosIniciales,
                tiempoTiernos, tiempoMaduros,
                cantidadProcreacionMaduros, tiempoTotal, totalConejos As Integer

        'Si algún textbox está vacío entonces no se ejecuta
        If txtMadurosIniciales.Text = "" Or txtTiempoMaduros.Text = "" Or txtTiempoTiernos.Text = "" Or txtTiempoTotal.Text = "" Or txtTiernosIniciales.Text = "" Then

            'MsgBox()

        ElseIf txtTiempoTotal.Text = "0" Then

            lblResultado.Text = "El total de conejos es igual al inicial"

        ElseIf txtMadurosIniciales.Text = "0" And txtTiernosIniciales.Text = "0" Then

            lblResultado.Text = "Si no hay conejos no se pueden procrear"

        Else

            'Asignamos los valores a las variables
            conejosMadurosIniciales = Convert.ToInt32(txtMadurosIniciales.Text)
            conejosTiernosIniciales = Convert.ToInt32(txtTiernosIniciales.Text)
            tiempoMaduros = Convert.ToInt32(txtTiempoMaduros.Text)
            tiempoTiernos = Convert.ToInt32(txtTiempoTiernos.Text)
            tiempoTotal = Convert.ToInt32(txtTiempoTotal.Text)
            cantidadProcreacionMaduros = Convert.ToInt32(txtCantidad.Text)

            totalConejos = fibonacciParametrizado(conejosTiernosIniciales, conejosMadurosIniciales, tiempoTiernos, tiempoMaduros, cantidadProcreacionMaduros, tiempoTotal)

            lblResultado.Text = "El total de conejos en " + Convert.ToString(tiempoTotal) + " meses es " + Convert.ToString(totalConejos * 2)
        End If
    End Sub
End Class
