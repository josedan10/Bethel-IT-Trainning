using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Operaciones_con_Arreglos_Csharp.Forms
{
    public partial class FormResultado : Form
    {
        public FormResultado()
        {
            InitializeComponent();
        }

        //Funciones
        double sumaArreglo(double[] arreglo, int cantidad)
        {

            double suma = 0;

            //Suma de los numeros del arreglo

            for (int i = 0; i <= cantidad - 1; i++)
            {
                suma = suma + arreglo[i];
            }

            return suma;

        }

        double multiplicacionArreglo(double[] arreglo, int cantidad)
        {

            //Multiplicacion de los numeros del arreglo
            double multiplicacion = 1;

            for (int i = 0; i <= cantidad - 1; i++)
            {
                multiplicacion = multiplicacion * arreglo[i];
            }

            return multiplicacion;

        }

        double restaArreglo(double[] arreglo, int cantidad)
        {

            //Resta de los numeros del arreglo
            double resta = 0;

            for (int i = 0; i <= cantidad - 1; i++)
            {
                resta = resta - arreglo[i];
            }

            return resta;
        }

        double promedioArreglo(double[] arreglo, int cantidad)
        {

            //Promedio de los numeros del arreglo
            double promedio = 0;

            for (int i = 0; i <= cantidad - 1; i++)
            {
                promedio = promedio + arreglo[i];
            }

            promedio = promedio / cantidad;

            return promedio;
        }

        public double[] arreglo;
        public int cantidad;

        private void FormResultado_Load(object sender, EventArgs e)
        {
            double Suma,
                   Resta,
                   Multiplicacion,
                   Promedio;

            Suma = sumaArreglo(arreglo, cantidad);
            Resta = restaArreglo(arreglo, cantidad);
            Multiplicacion = multiplicacionArreglo(arreglo, cantidad);
            Promedio = promedioArreglo(arreglo, cantidad);

            lblSuma.Text = "Suma: " + Convert.ToString(Suma);
            lblResta.Text = "Resta: " + Convert.ToString(Resta);
            lblMultiplicacion.Text = "Multiplicacion: " + Convert.ToString(Multiplicacion);
            lblPromedio.Text = "Promedio: " + Convert.ToString(Promedio);
        }

        private void btnFinalizar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
