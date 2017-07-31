using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Factura
{
    class factura
    {
        static void Main()
        {

            float factura;

            Console.Write("Introduzca el monto de la factura: ");
            factura = float.Parse(Console.ReadLine());

            if (factura < 0)
            {
                Console.WriteLine("\nMonto invalido");

            }else if(factura > 20000)
            {

                Console.WriteLine("Importe Neto = {0:F3}", factura - factura * 0.15);

            }
            else
            {

                Console.WriteLine("Importe Neto = {0:F3}", factura);

            }

            Console.Write("Presione una tecla para continuar ...");
            Console.Read();

        }
    }
}
