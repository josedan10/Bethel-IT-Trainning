Public Structure Operacion

    Public numero1, numero2 As Double
    Public operador As String

    Public Function Calcular(txtResultado As TextBox)

        Dim resultado As Double = 0.0

        Select Case operador

            Case "+"
                resultado = numero1 + numero2

            Case "-"
                resultado = numero1 - numero2

            Case "x"
                resultado = numero1 * numero2

            Case "/"
                resultado = numero1 / numero2

        End Select

        txtResultado.Text = Convert.ToString(resultado)
    End Function

End Structure