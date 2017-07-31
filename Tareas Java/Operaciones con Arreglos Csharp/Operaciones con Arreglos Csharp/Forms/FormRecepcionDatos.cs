using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Operaciones_con_Arreglos_Csharp.Forms;

namespace Operaciones_con_Arreglos_Csharp.Forms
{
    public partial class FormRecepcionDatos : Form
    {
        public FormRecepcionDatos()
        {
            InitializeComponent();
        }


        public int cantidad;
        public double[] arreglo;
        int i = 1;
        FormResultado formularioResultado = new FormResultado();

        private void btnSiguiente_Click(object sender, EventArgs e)
        {
            arreglo[i - 1] = Convert.ToDouble(txtNumero.Text);

            //Actualizamos el label y el textbox
            label1.Text = "Elemento " + Convert.ToString(i + 1);
            txtNumero.Text = "";

            if (i == cantidad)
            {
                formularioResultado.arreglo = new double[cantidad];
                Array.Copy(arreglo, formularioResultado.arreglo, cantidad);
                formularioResultado.cantidad = cantidad;

                this.Hide();
                formularioResultado.Show();
            }
            else {
                i = i + 1;
            }

        }

        private void FormRecepcionDatos_Load(object sender, EventArgs e)
        {
            arreglo = new double[cantidad];
        }

    }
}
