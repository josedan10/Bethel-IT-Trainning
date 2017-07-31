using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Paralelogramo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        int Base, altura;
        FormDibujo formularioDibujo = new FormDibujo();

        private void btnDibujar_Click(object sender, EventArgs e)
        {
            Base = Convert.ToInt32(txtBase.Text);
            altura = Convert.ToInt32(txtAltura.Text);

            if (Base < 3 || altura < 3) {
                //scribir "No se puede dibujar el trapecio";
            }
            else {
                this.Hide();
                formularioDibujo.Base = Base;
                formularioDibujo.altura = altura;
                formularioDibujo.Show();
            }
        }
    }
}
