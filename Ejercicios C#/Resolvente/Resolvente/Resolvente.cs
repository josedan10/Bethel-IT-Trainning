using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Resolvente
{
    class Resolvente
    {
        static void Main()
        {
            int A, B, C, discriminante;

            Console.WriteLine("Introduzca el valor de A: ");
            A = int.Parse(Console.ReadLine());

            Console.WriteLine("Introduzca el valor de B: ");
            B = int.Parse(Console.ReadLine());

            Console.WriteLine("Introduzca el valor de C: ");
            C = int.Parse(Console.ReadLine());

            if(A == 0 && B == 0)
            {
                Console.WriteLine("Esta ecuacion no se puede resolver");

                Console.WriteLine("Presione una tecla para continuar ...");
                Console.ReadKey();
                return;
            }

            switch (A)
            {
                case 0:
                    //Ecuación Lineal

                    Console.WriteLine("La solucion a esta ecuacion es {0}", (float)-C/B);

                    break;

                default:
                    //Resolvente
                    discriminante = B * B - 4 * A * C;
                    
                    if (discriminante < 0)
                    {
                        //Caso de numero imaginario
                        discriminante *= -1;

                        Console.WriteLine("Las soluciones de esta ecuacion son");
                        Console.WriteLine("x1 = {0:F2} - {1:F2}i",(float) -B / (2 * A), (float) Math.Sqrt(discriminante) / (2 * A));
                        Console.WriteLine("x2 = {0:F2} + {1:F2}i", (float)-B / (2 * A), (float)Math.Sqrt(discriminante) / (2 * A));

                    }
                    else
                    {

                        Console.WriteLine("Las soluciones de esta ecuacion son");
                        Console.WriteLine("x1 = {0:F2}", (-B + Math.Sqrt(discriminante)) / (2 * A));
                        Console.WriteLine("x2 = {0:F2}", (-B - Math.Sqrt(discriminante)) / (2 * A));
                        

                    }

                    break;

            }

            Console.WriteLine("Presione una tecla para continuar ...");
            Console.ReadKey();
        }
    }
}
