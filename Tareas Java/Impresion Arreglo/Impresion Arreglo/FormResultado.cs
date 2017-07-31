using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Impresion_Arreglo
{
    public partial class FormResultado : Form
    {
        public FormResultado()
        {
            InitializeComponent();
        }

        public int filas, columnas;
        public String[,] Arreglo;
        public int[] Tabulaciones;

        private void FormResultado_Load(object sender, EventArgs e)
        {
            String fila, tabCadena;
            int tab, i, j, k;


            for (i = 0; i < filas; i++){
        
                fila = "";		//Fila que será impresa


                for ( j = 0; j < columnas; j++){


                    tabCadena = "";

                    //Calculamos el tab para cada palabra
                    //Sumamos dos para que ninguna palabra esté pegada a la siguiente columna
                    tab = Tabulaciones[j] - Arreglo[i, j].Length + 2;


                    for ( k = 0; k < tab; k++) {

                        tabCadena = tabCadena + " ";

                    }


                    fila = fila + Arreglo[i, j] + tabCadena;

                }

                lblResultado.Text = lblResultado.Text + fila + "\n";

            } 
        }

    }
}
