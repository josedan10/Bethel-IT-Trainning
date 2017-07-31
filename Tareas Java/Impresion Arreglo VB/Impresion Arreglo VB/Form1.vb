Public Class Form1

    Dim formularioResultado As New FormResultado()

    Dim Arreglo As String(,)         'Arreglo para guardar los datos
    Dim Tabulaciones As Integer()    'Arreglo para guardar las tabulaciones de cada columna

    Dim filas, columnas, nroElementos As Integer
    Dim i, j, z As Integer 'Contadores

    Private Sub btnAgregarElemento_Click(sender As Object, e As EventArgs) Handles btnAgregarElemento.Click
        'Devuelve un arreglo con la tabulacion correspondiente a cada columnas

        nroElementos = filas * columnas

        If j = columnas Then
            j = 0
            i = i + 1
        End If

        'Guardamos el elemento y limpiamos el txtbox
        Arreglo(i, j) = txtElemento.Text
        txtElemento.Text = ""

        'Agregamos un nuevo margen de tabulacion si es más grande que el que
        'teníamos antes
        If Tabulaciones(j) < Arreglo(i, j).Length Then

            Tabulaciones(j) = Arreglo(i, j).Length

        End If

        j = j + 1
        z = z + 1

        If z = nroElementos Then

            Me.Hide()
            Array.Copy(Arreglo, formularioResultado.Arreglo, nroElementos)
            Array.Copy(Tabulaciones, formularioResultado.Tabulaciones, columnas)
            formularioResultado.Show()

        End If
    End Sub



    Private Sub btnSiguiente_Click(sender As Object, e As EventArgs) Handles btnSiguiente.Click
        If txtColumnas.Text = "" Or txtFilas.Text = "" Then

            'MsgBox();

        Else
            formularioResultado.filas = Convert.ToInt32(txtFilas.Text)
            formularioResultado.columnas = Convert.ToInt32(txtColumnas.Text)

            'Habilitamos el txt para recibir los elementos
            txtElemento.Enabled = True
            btnAgregarElemento.Enabled = True

            'Deshabilitamos los otros txtBoxs
            txtColumnas.Enabled = False
            txtFilas.Enabled = False
            btnSiguiente.Enabled = False

            filas = Convert.ToInt32(txtFilas.Text)
            columnas = Convert.ToInt32(txtColumnas.Text)

            ReDim Arreglo(filas - 1, columnas - 1)
            ReDim formularioResultado.Arreglo(filas - 1, columnas - 1)
            ReDim Tabulaciones(columnas - 1)
            ReDim formularioResultado.Tabulaciones(columnas - 1)

            z = 0

            'Llenamos todos los espacios del arreglo con 0
            For i = 0 To columnas - 1

                Tabulaciones(i) = 0

            Next
        End If


        j = 0
        i = 0
    End Sub
End Class
