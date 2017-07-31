using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Cronometro
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        //VARIABLES GLOBALES
        int minutos = 0, segundos = 0, milisegundos = 0;

        private void btnPausa_Click(object sender, EventArgs e)
        {
            timer1.Enabled = false;
        }

        private void btnReset_Click(object sender, EventArgs e)
        {

            //Reiniciamos todas las variables
            lblMilisegundos.Text = "00";
            lblSegundos.Text = "00";
            lblMinutos.Text = "00";


            milisegundos = 0;
            segundos = 0;
            minutos = 0;
        }

        private void btnIniciar_Click(object sender, EventArgs e)
        {
            //Activamos el timer
            timer1.Interval = 10;
            timer1.Enabled = true;
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            switch (milisegundos)
            {
                //Al llegar a 60 milisegundos lo reiniciamos y sumamos 1 segundo
                case 60:
                    milisegundos = 0;
                    segundos = segundos + 1;

                    lblMilisegundos.Text = String.Concat("0", milisegundos.ToString());

                    if (segundos < 10)
                    {   
                        //Es para mostrar los numeros menores a 10 de la forma "01" en vez de "1"
                        lblSegundos.Text = String.Concat("0", segundos.ToString());
                    }
                    else
                    {
                        lblSegundos.Text = segundos.ToString();
                    }

                    break;

                default:

                    milisegundos = milisegundos + 1;
                    break;
            }

            switch (segundos)
            {
                case 60:

                    segundos = 0;
                    minutos = minutos + 1;
                    lblSegundos.Text = String.Concat("0", segundos.ToString());

                    lblMinutos.Text = minutos.ToString();

                    if (minutos < 10)
                    {
                        lblMinutos.Text = String.Concat("0", minutos.ToString());
                    }
                    else
                    {
                        lblMinutos.Text = minutos.ToString();
                    }

                    break;
            }

            if(milisegundos < 10)
            {
                lblMilisegundos.Text = String.Concat("0", milisegundos.ToString());
            }
            else
            {
                lblMilisegundos.Text = milisegundos.ToString();
            }
        }
    }
}
