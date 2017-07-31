using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Impresion_Arreglo;

namespace Impresion_Arreglo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        FormResultado formularioResultado = new FormResultado();

        String[,] Arreglo;      //Arreglo para guardar los datos
        int[] Tabulaciones;    //Arreglo para guardar las tabulaciones de cada columna

        int filas, columnas, nroElementos;
        int i, j, z; //Contadores
        

        private void button1_Click(object sender, EventArgs e)
        {

            if (txtColumnas.Text == "" || txtFilas.Text == "")
            {
                //MsgBox();
            }
            else
            {
                formularioResultado.filas = Convert.ToInt32(txtFilas.Text);
                formularioResultado.columnas = Convert.ToInt32(txtColumnas.Text);

                //Habilitamos el txt para recibir los elementos
                txtElemento.Enabled = true;

                //Deshabilitamos los otros txtBoxs
                txtColumnas.Enabled = false;
                txtFilas.Enabled = false;

                filas = Convert.ToInt32(txtFilas.Text);
                columnas = Convert.ToInt32(txtColumnas.Text);

                Arreglo = new String[filas, columnas];
                formularioResultado.Arreglo = new String[filas, columnas];
                Tabulaciones = new int[columnas];
                formularioResultado.Tabulaciones = new int[columnas];

                z = 0;
                //Llenamos todos los espacios del arreglo con 0
                for (i = 0; i < columnas; i++)
                {

                    Tabulaciones[i] = 0;

                }
            }

            i = j = 0;
        }

        
        

        private void button2_Click(object sender, EventArgs e)
        {
            //Devuelve un arreglo con la tabulacion correspondiente a cada columnas

            

            nroElementos = filas * columnas;

            if(j == columnas)
            {
                j = 0;
                i++;
            }


            //Guardamos el elemento y limpiamos el txtbox
            Arreglo[i, j] = txtElemento.Text;
            txtElemento.Text = "";

            //Agregamos un nuevo margen de tabulacion si es más grande que el que
            //teníamos antes
            if (Tabulaciones[j] < Arreglo[i, j].Length ){

                Tabulaciones[j] = Arreglo[i, j].Length;

            }

            j++;
            z++;

            if(z == nroElementos)
            {
                this.Hide();
                Array.Copy(Arreglo, formularioResultado.Arreglo, nroElementos);
                Array.Copy(Tabulaciones, formularioResultado.Tabulaciones, columnas);
                formularioResultado.Show();
            }
        }
    }
}
