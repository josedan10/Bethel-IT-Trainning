using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Triangulo
{
    class triangulo
    {
        static void Main()
        {

            int Base, i, espacioExt, espacioInt, linea = 1;
            int cuenta = 1, baseAux; //Variables para sacar el numero de lineas
            char muestra = '.', separador = ' ';

            Console.Write("Introduzca el tamano de la base (numero positivo impar): ");
            Base = int.Parse(Console.ReadLine());

            if(Base <= 1)
            {

                Console.WriteLine("No se puede dibujar un triangulo con esta base");

            }
            else if (Base % 2 == 0)
            {

                Console.WriteLine("La base no es impar");

            }
            else
            {

                //Calculamos el numero de lineas que vamos a necesitar
                baseAux = Base;

                while(baseAux != 1)
                {
                    baseAux -= 2;
                    cuenta++;
                }

                espacioExt = (Base - 1) / 2;
                espacioInt = 0;

                Console.WriteLine("\n");

                while(linea <= cuenta)
                {

                    switch (linea)
                    {
                        case 1:
                            //Primera linea
                            for (i = 0; i < Base; i++)
                            {
                                if (i != (Base - 1) / 2) Console.Write(separador);
                                else Console.Write(muestra);
                            }

                            Console.Write("\n");
                            linea++;
                            espacioInt += 2;
                            espacioExt--;

                            break;

                        default:

                            if (linea == cuenta)
                            {
                                //Ultima linea
                                for (i = 0; i < Base; i++)
                                {
                                    if (i % 2 == 0) Console.Write(muestra);
                                    else Console.Write(separador);

                                }
                                Console.Write("\n");

                                linea++;
                            }
                            else
                            {

                                //Lineas intermedias

                                for (i = 0; i < espacioExt; i++)
                                {
                                    Console.Write(separador);
                                }

                                Console.Write(muestra);

                                for (i = 1; i < espacioInt; i++)
                                {
                                    Console.Write(separador);
                                }

                                Console.Write(muestra);

                                for (i = 0; i < espacioExt; i++)
                                {
                                    Console.Write(separador);
                                }

                                Console.Write("\n");
                                linea++;
                                espacioInt += 2;
                                espacioExt--;


                            }

                            break;

                    }

                }

                Console.Write("Presione una tecla para continuar");
                Console.Read();

            }

        }
    }
}
