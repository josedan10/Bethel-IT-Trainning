Public Class Form1
    Private Sub btnAceptar_Click(sender As Object, e As EventArgs) Handles btnAceptar.Click
        Dim formularioDeRecepcion As New FormRecepcionDatos()


        If txtCantidad.Text = "" Then
            'MsgBox()

        Else
            formularioDeRecepcion.cantidad = Convert.ToInt32(txtCantidad.Text)
            Me.Hide()
            formularioDeRecepcion.Show()
        End If


    End Sub
End Class
