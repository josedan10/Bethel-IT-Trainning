using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Conejos
{
    class Conejos
    {
        static void Main()
        {
            int conejosBlancos, conejosNegros;
            float precioBlancos, precioNegros;

            Console.Write("Escriba el precio de un conejo Blanco: ");
            precioBlancos = float.Parse(Console.ReadLine());

            Console.Write("Escriba el precio de un conejo Negro: ");
            precioNegros = float.Parse(Console.ReadLine());

            Console.Write("Escriba la cantidad de conejos Blancos: ");
            conejosBlancos = int.Parse(Console.ReadLine());

            Console.Write("Escriba la cantidad de conejos Negros: ");
            conejosNegros = int.Parse(Console.ReadLine());


            //Si alguno es negativo no se realizan los cálculos

            if(conejosNegros < 0 || conejosBlancos < 0 || precioBlancos < 0 || precioNegros < 0)
            {

                Console.WriteLine("\n\nLos datos son invalidos");

            }
            else
            {

                if (conejosBlancos == conejosNegros)
                {

                    Console.WriteLine("\nConejos mas vendidos: Iguales");

                }else if (conejosBlancos < conejosNegros)
                {

                    Console.WriteLine("\nConejos mas vendidos: Negros");

                }
                else
                {

                    Console.WriteLine("\nConejos mas vendidos: Blancos");

                }


                Console.WriteLine("Total de conejos vendidos: {0}", conejosNegros + conejosBlancos);
                Console.WriteLine("Total de la venta: {0:F3}", conejosBlancos * precioBlancos + conejosNegros * precioNegros);


                Console.Write("Presione una tecla para continuar ...");
                Console.Read();
            }

        }
    }
}
