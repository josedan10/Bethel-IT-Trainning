using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Par_Impar
{
    class Par_Impar
    {
        static void Main()
        {

            int numero;

            Console.WriteLine("Ingrese un número entero positivo");
            numero = int.Parse(Console.ReadLine());

            if(numero <= 0)
            {
                Console.WriteLine("Este numero no es positivo");

            }else if(numero % 2 == 0)
            {

                Console.WriteLine("El numero {0} es par", numero);

            }
            else
            {

                Console.WriteLine("El numero {0} es impar", numero);

            }


            Console.Write("Presione una tecla para continuar ...");
            Console.Read();

        }
    }
}
