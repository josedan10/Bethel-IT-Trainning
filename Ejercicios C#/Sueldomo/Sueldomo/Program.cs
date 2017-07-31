using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sueldomo
{
    class Program
    {
        static void Main()
        {

            float sueldoMinimo = 40638, sueldo;

            Console.WriteLine("Sueldo minimo actual: {0:F2}", sueldoMinimo);
            Console.Write("Introduzca su sueldo minimo: ");
            sueldo = float.Parse(Console.ReadLine());

            if(sueldo < 0)
            {

                Console.WriteLine("Dato invalido");

            }else if(sueldo == sueldoMinimo)
            {

                Console.WriteLine("Su nuevo salario es {0:F3}", sueldo + sueldo * 0.1);

            }
            else
            {
                Console.WriteLine("Usted no tiene aumento. Su salario es {0:F3}", sueldo);
            }


            Console.Write("Presione una tecla para continuar ...");
            Console.Read();

        }
    }
}
