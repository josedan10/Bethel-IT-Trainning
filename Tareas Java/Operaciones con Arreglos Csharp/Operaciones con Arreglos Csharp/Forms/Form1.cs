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

namespace Operaciones_con_Arreglos_Csharp
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            FormRecepcionDatos formularioDeRecepcion = new FormRecepcionDatos();


            if (txtCantidad.Text == "") {
                //MsgBox()
            }
            else {
                formularioDeRecepcion.cantidad = Convert.ToInt32(txtCantidad.Text);
                this.Hide();
                formularioDeRecepcion.Show();
            }
        }
    }
}
