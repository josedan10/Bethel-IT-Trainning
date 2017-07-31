Module Dibujo

    Sub DibujarParalelogramo(ByVal base As Integer, ByVal altura As Integer, ByVal lblDibujo As Label)
        Dim espacioIzq, espacioDer, lineaBase, intermedio,
            simboloDibujo, espacio As String
        Dim nroLinea As Integer

        nroLinea = altura - 1

        simboloDibujo = "*"
        espacio = " "

        espacioDer = ""
        lineaBase = ""

        intermedio = simboloDibujo


        'Dibujamos las aristas inferior y superior	
        If base Mod 2 = 0 Then

            For i = 0 To base - 1
                lineaBase = lineaBase + simboloDibujo
            Next

        Else


            For i = 0 To base - 1

                If i Mod 2 = 0 Then
                    lineaBase = lineaBase + simboloDibujo
                Else
                    lineaBase = lineaBase + espacio
                End If

            Next

        End If

        'Dibujamos el intermedio que siempre tendrá en mismo tamaño
        For i = 0 To base - 3
            intermedio = intermedio + espacio
        Next

        intermedio = intermedio + simboloDibujo

        For i = 0 To altura - 1
            'Cuadramos el espacio del lado izquierdo
            espacioIzq = ""

            nroLinea = nroLinea - 1

            For k = 0 To nroLinea
                espacioIzq = espacioIzq + espacio
            Next

            'Imprimimos arista superior
            If i = 0 Then
                lblDibujo.Text = espacioIzq + lineaBase + vbNewLine

                'Imprimimos arista inferior
            ElseIf i = altura - 1 Then
                lblDibujo.Text = lblDibujo.Text + lineaBase + espacioDer

                'Imprimos intermedios
            Else
                lblDibujo.Text = lblDibujo.Text + espacioIzq + intermedio + espacioDer + vbNewLine
            End If

            espacioDer = espacioDer + espacio

        Next
    End Sub

End Module
