Module Operaciones

    Function sumaArreglo(ByVal arreglo() As Double, ByVal cantidad As Integer) As Double

        Dim suma As Double = 0

        'Suma de los numeros del arreglo
        suma = 0
        For i = 0 To cantidad - 1
            suma = suma + arreglo(i)
        Next

        Return suma

    End Function

    Function multiplicacionArreglo(ByVal arreglo() As Double, ByVal cantidad As Integer) As Double

        'Multiplicacion de los numeros del arreglo
        Dim multiplicacion As Double = 1

        For i = 0 To cantidad - 1
            multiplicacion = multiplicacion * arreglo(i)
        Next

        Return multiplicacion

    End Function

    Function restaArreglo(ByVal arreglo() As Double, ByVal cantidad As Integer)

        'Resta de los numeros del arreglo
        Dim resta As Double = 0

        For i = 0 To cantidad - 1
            resta = resta - arreglo(i)
        Next

        Return resta
    End Function

    Function promedioArreglo(ByVal arreglo() As Double, ByVal cantidad As Integer) As Double

        'Promedio de los numeros del arreglo
        Dim promedio As Double = 0

        For i = 0 To cantidad - 1
            promedio = promedio + arreglo(i)
        Next

        promedio = promedio / cantidad

        Return promedio
    End Function

End Module
