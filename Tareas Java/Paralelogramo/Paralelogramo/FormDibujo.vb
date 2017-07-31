Public Class FormDibujo

    Public base, altura As Integer
    Private Sub FormDibujo_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        DibujarParalelogramo(base, altura, lblDibujo)
    End Sub
End Class