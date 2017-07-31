using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace fibonacci
{
    class fibonacci
    {
        static void Main()
        {

            int conejosTiernos, conejosAdultos, meses, mes, auxiliar;

            Console.Write("Introduzca el numero de conejos tiernos con los que desea empezar: ");
            conejosTiernos = int.Parse(Console.ReadLine());

            Console.Write("Introduzca el numero de conejos adultos con los que desea empezar: ");
            conejosAdultos = int.Parse(Console.ReadLine());

            Console.Write("Introduzca el mes que desea ver: ");
            meses = int.Parse(Console.ReadLine());

            for (mes = 1; mes <= meses; mes++)
            {

                auxiliar = conejosAdultos;
                conejosAdultos += conejosTiernos;
                conejosTiernos = auxiliar;

            }

            Console.WriteLine("El numero de conejos en el mes {0} es {1}", meses, conejosTiernos + conejosAdultos);

            Console.Write("Presione una tecla para continuar ...");
            Console.Read();

        }
    }
}
