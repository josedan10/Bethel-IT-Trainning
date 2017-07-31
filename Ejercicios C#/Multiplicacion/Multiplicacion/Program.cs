using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Multiplicacion
{
    class Program
    {
        static void Main()
        {
            int i;
            double numero = 1;

            for (i = 10; i <= 20; i++)
            {
                numero *= i;
            }

            Console.WriteLine("La multiplicacion de los numeros del 10 al 20 es {0}", numero);
            Console.Write("Presione una tecla para continuar ...");
            Console.Read();
        }
    }
}
