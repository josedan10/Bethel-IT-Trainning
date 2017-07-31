Public Class Form1

    Dim base, altura As Integer
    Dim formularioDibujo As New FormDibujo()

    Private Sub btnDibujar_Click(sender As Object, e As EventArgs) Handles btnDibujar.Click

        base = Convert.ToInt32(txtBase.Text)
        altura = Convert.ToInt32(txtAltura.Text)

        If base < 3 Or altura < 3 Then
            'scribir "No se puede dibujar el trapecio";
        Else
            Me.Hide()
            formularioDibujo.base = base
            formularioDibujo.altura = altura
            formularioDibujo.Show()
            'DibujarParalelogramo(base, altura)
        End If
    End Sub
End Class
