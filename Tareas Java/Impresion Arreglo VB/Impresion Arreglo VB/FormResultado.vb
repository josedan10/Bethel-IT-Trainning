Public Class FormResultado

    Public filas, columnas As Integer
    Public Arreglo As String(,)
    Public Tabulaciones As Integer()

    Private Sub FormResultado_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Dim fila, tabCadena As String
        Dim TAB, i, j, k As Integer


        For i = 0 To filas - 1

            fila = ""       'Fila que será impresa


            For j = 0 To columnas - 1


                tabCadena = ""

                'Calculamos el tab para cada palabra
                'Sumamos dos para que ninguna palabra esté pegada a la siguiente columna
                TAB = Tabulaciones(j) - Arreglo(i, j).Length + 2


                For k = 0 To TAB - 1

                    tabCadena = tabCadena + " "

                Next


                fila = fila + Arreglo(i, j) + tabCadena

            Next

            lblResultado.Text = lblResultado.Text + fila + vbNewLine

        Next
    End Sub
End Class