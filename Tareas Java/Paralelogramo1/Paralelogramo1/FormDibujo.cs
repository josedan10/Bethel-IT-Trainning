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
    public partial class FormDibujo : Form
    {
        public FormDibujo()
        {
            InitializeComponent();
        }

        public int Base, altura;

        void DibujarParalelogramo(Label lblDibujo) {
            String espacioIzq, espacioDer, lineaBase, intermedio,
                   simboloDibujo, espacio;

            int nroLinea, i, k;

            nroLinea = altura - 1;

            simboloDibujo = "*";
            espacio = " ";

            espacioDer = "";
            lineaBase = "";

            intermedio = simboloDibujo;


            //Dibujamos las aristas inferior y superior	
            if (Base % 2 == 0) {

                for (i = 0; i < Base; i++) {
                    lineaBase = lineaBase + simboloDibujo;
                }
            }
            else {


                for (i = 0; i < Base; i++) {

                    if (i % 2 == 0)
                    {
                        lineaBase = lineaBase + simboloDibujo;
                    }
                    else
                    {
                        lineaBase = lineaBase + espacio;
                    }

                }

            }

        //Dibujamos el intermedio que siempre tendrá en mismo tamaño
        for (i = 0; i < Base - 2; i++) {
            intermedio = intermedio + espacio;
        }

            intermedio = intermedio + simboloDibujo;

            for (i = 0; i < altura; i++) {
                //Cuadramos el espacio del lado izquierdo
                espacioIzq = "";

                nroLinea = nroLinea - 1;

                for (k = 0; k <= nroLinea; k++) {
                    espacioIzq = espacioIzq + espacio;
                }

                //Imprimimos arista superior
                if (i == 0) {
                    lblDibujo.Text = espacioIzq + lineaBase + "\n";
                } else if (i == altura - 1) {
                    //Imprimimos arista inferior
                    lblDibujo.Text = lblDibujo.Text + lineaBase + espacioDer;

                    //Imprimos intermedios
                }
                else {
                    lblDibujo.Text = lblDibujo.Text + espacioIzq + intermedio + espacioDer + "\n";
                }

                espacioDer = espacioDer + espacio;

            }
        }
        private void FormDibujo_Load(object sender, EventArgs e)
        {
            DibujarParalelogramo(lblDibujo);
        }
    }
}
