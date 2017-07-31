Module FibonacciParam

    Function fibonacciParametrizado(ByVal conejosTiernosIniciales As Integer, ByVal conejosMadurosIniciales As Integer, ByVal tiempoTiernos As Integer, ByVal tiempoMaduros As Integer, ByVal cantidadProcreacionMaduros As Integer, ByVal tiempoTotal As Integer) As Integer
        Dim conejosTiernos, conejosMaduros, totalConejos As Integer
        Dim conejosTiernosArreglo(), conejosMadurosArreglo() As Integer
        Dim totalParcial As Integer 'Variable para las cuentas parciales
        Dim i, j, mes As Integer    'Contadores

        totalParcial = 0
        conejosTiernos = 0
        conejosMaduros = 0
        totalConejos = 0

        If tiempoTiernos = tiempoMaduros Then


            'Como se reproducen al mismo tiempo, entonces siempre coincidirán la procreación de los maduros con los tiernos
            'Por lo tanto los meses intermedios no son necesarios
            'Recortamos el ciclo para optimizar el proceso

            Dim nuevoTiempo As Double  'Variable para reducir el ciclo


            nuevoTiempo = Math.Floor(Convert.ToDouble(tiempoTotal / tiempoTiernos))
            totalParcial = conejosTiernosIniciales + conejosMadurosIniciales

            For i = 0 To nuevoTiempo - 1
                totalParcial = (totalParcial * cantidadProcreacionMaduros) * 2
            Next

            totalConejos = totalParcial


        ElseIf (tiempoTiernos = 1) Then

            ReDim conejosMadurosArreglo(tiempoMaduros - 1)
            conejosTiernos = conejosTiernosIniciales

            For mes = 1 To tiempoTotal


                'Llenamos la primera casilla y nacen los nuevos conejos
                conejosMadurosArreglo(0) = (conejosTiernos + conejosMadurosArreglo(tiempoMaduros - 1)) * cantidadProcreacionMaduros
                conejosTiernos = conejosMadurosArreglo(0)

                'Corremos los conejos hacia la derecha
                For i = tiempoMaduros - 1 To 1 Step -1

                    conejosMadurosArreglo(i) = conejosMadurosArreglo(i - 1)
                Next

            Next


            'Ahora sumamos todos los conejos
            For i = 0 To tiempoMaduros - 1

                totalParcial += conejosMadurosArreglo(i)
            Next


            totalConejos = totalParcial + conejosTiernos
        ElseIf tiempoMaduros = 1 Then

            ReDim conejosTiernosArreglo(tiempoTiernos - 1)
            conejosTiernosArreglo(0) = conejosTiernosIniciales

            For mes = 1 To tiempoTotal


                conejosMaduros = (conejosMaduros + conejosTiernosArreglo(tiempoTiernos - 1)) * cantidadProcreacionMaduros

                'Corremos los conejos tiernos
                For i = tiempoTiernos - 1 To 1 Step -1

                    conejosTiernosArreglo(i) = conejosTiernosArreglo(i - 1)
                Next


                conejosTiernosArreglo(0) = conejosMaduros

            Next


            'Sumamos todos los conejos
            For i = 0 To tiempoTiernos - 1

                totalParcial += conejosTiernosArreglo(i)
            Next



            totalConejos = totalParcial + conejosMaduros

        Else

            'Corrida en ambos arreglos
            ReDim conejosTiernosArreglo(tiempoTiernos - 2)
            ReDim conejosMadurosArreglo(tiempoMaduros - 1)

            'Asignamos los valores iniciales en el arreglo
            conejosMadurosArreglo(0) = conejosMadurosIniciales
            conejosTiernosArreglo(0) = conejosTiernosIniciales

            For mes = 1 To tiempoTotal

                'Guardamos los conejos maduros que van a procrear
                conejosMaduros = conejosMadurosArreglo(tiempoMaduros - 1)

                'Desplazamos los conejos maduros

                For i = tiempoMaduros - 1 To 1 Step -1

                    conejosMadurosArreglo(i) = conejosMadurosArreglo(i - 1)
                Next


                'Sumamos los conejos tiernos que van a procrear
                conejosMaduros = (conejosMaduros + conejosTiernosArreglo(tiempoTiernos - 2)) * cantidadProcreacionMaduros

                'Desplazamos los conejos tiernos
                For i = tiempoTiernos - 2 To 1 Step -1

                    conejosTiernosArreglo(i) = conejosTiernosArreglo(i - 1)
                Next


                'Anexamos los nuevos conejos maduros al arreglo y también los nuevos tiernos
                conejosMadurosArreglo(0) = conejosMaduros
                conejosTiernosArreglo(0) = conejosMaduros

            Next


            'Sumamos todos los conejos
            For i = 0 To tiempoTiernos - 2

                totalParcial += conejosTiernosArreglo(i)
            Next


            For i = 0 To tiempoMaduros - 1

                totalParcial += conejosMadurosArreglo(i)
            Next


            totalConejos = totalParcial
        End If


        Return totalConejos
        End Function

End Module
