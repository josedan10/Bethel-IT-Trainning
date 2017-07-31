using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Battleship_Csharp
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        /* NOTACIÓN
         
            F: Fallo
            N: Nave
            O: Espacio vacío
            X: Nave destriuda
        */

        Label[] TableroVisible = new Label[100];  //Tablero de labels visible por el jugador
        String[] TableroClave = new String[100];  //Tablero clave con las naves ocultas
        int[] naves = new int[10];                //Array con las posiciones de las naves

        void labelEvento()
        {
            int i;

            for (i = 0; i < 100; i++)
            {
                TableroVisible[i].Click -= labelClick;
                TableroVisible[i].Click += labelClick;
            }
        }

        int[] EscogerAleatorio()
        {
            int i, j;                           //Contadores
            int[] nave = new int[10];           //Arreglo con las posiciones de las naves
            bool NumeroDistinto;                //Diremos que el numero es distinto hasta que se demuestre lo contrario
            Random aleatorio = new Random();
            int posicion;                       //Posicion aleatoria

            for (i = 0; i < 10; i++)
            {

                switch (i)
                {
                    case 0:     //La primera casilla no cuenta pues no podemos compararla con nada
                        nave[i] = aleatorio.Next(0, 100);
                        break;

                    default:    //El resto de las casillas hay que compararlas con las anteriores
                        while (true)
                        {
                            posicion = aleatorio.Next(0, 100);
                            NumeroDistinto = true;

                            for (j = 0; j < i; j++)
                            {
                                //Verificamos si son iguales los numeros
                                if (posicion == nave[j])
                                {
                                    NumeroDistinto = false;
                                    break;
                                }
                            }

                            if (NumeroDistinto)
                            {
                                nave[i] = posicion;
                                break;
                            }

                        }

                        break;
                }
            }

            return nave;
        }

        void IniciarJuego(String metodo)
        {

            int i;
            

            //Iniciamos todo el Tablero Clave con 'O'
            for (i = 0; i < 100; i++)
            {
                TableroClave[i] = metodo;
            }

            //Limpiamos el tablero del jugador
            for (i = 0; i < 100; i++)
            {

                TableroVisible[i].Text = "";
                TableroVisible[i].ForeColor = Color.FromArgb(0, 0, 0);

            }

            labelEvento();

            //Generamos las posiciones aleatorias
            naves = EscogerAleatorio();

            for (i = 0; i < 10; i++)
            {
                TableroClave[naves[i]] = "N";
            }

            //Acomodamos los labels con las naves y disparos necesarios
            lblNavesRestantes.Text = "10";
            lblDisparosDisponibles.Text = "20";

            Inicio.Text = "¡Comenzar!";

        }

        void Reiniciar(String mensaje)
        {
            if (MessageBox.Show(mensaje, "Battleship",
                  MessageBoxButtons.YesNo, MessageBoxIcon.Question)
                  == DialogResult.Yes)
            {
                IniciarJuego("");
            }
            else
            {
                Application.Exit();
            }
        }


        void labelClick(Object sender, EventArgs e)
        {
            Label casilla = ((Label)sender);
            int index = Array.IndexOf(TableroVisible, casilla);
            int naves = Int32.Parse(lblNavesRestantes.Text);
            int disparos = Int32.Parse(lblDisparosDisponibles.Text);
            String letra = TableroClave[index];

            switch (letra)
            {
                case "N":
                    //Marcamos la casilla
                    TableroClave[index] = "X";
                    TableroVisible[index].Text = "X";
                    TableroVisible[index].ForeColor = Color.FromArgb(220, 26, 39);

                    //Descontamos una nave
                    lblNavesRestantes.Text = (naves - 1).ToString();
                    disparos += 2;
                    lblDisparosDisponibles.Text = (disparos).ToString();
                    break;

                case "O":
                    TableroClave[index] = "F";
                    TableroVisible[index].Text = "F";
                    disparos--;
                    lblDisparosDisponibles.Text = (disparos).ToString();
                    break;

                default:
                    //No se puede disparar aquí
                    MessageBox.Show("No puedes disparar aquí", "Battleship", MessageBoxButtons.OK);
                    break;
            }


            if (disparos >= 0 && naves == 0)
            {
                //Gana
                Reiniciar("¡Has ganado! ¿Deseas comenzar una nueva partida?");

            } else if (disparos == 0 && naves > 0)
            {
                //Pierde
                Reiniciar("Has perdido :( ¿Deseas comenzar una nueva partida?");
            }

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            int x, y = 0;   //Contadores posicionar los labels
            int index;      //Contador para recorrer el array

            for (index = 0; index < 100; index++)
            {
                x = index % 10;
                if (x == 0) y++;

                //Propiedades de los labels
                TableroVisible[index] = new Label();
                TableroVisible[index].Size = new Size(30, 30);
                TableroVisible[index].Location = new Point(140 + x * 35, 80 + y * 35);
                TableroVisible[index].BackColor = Color.FromArgb(255, 255, 255);
                TableroVisible[index].Font = new Font("Lato", 18, FontStyle.Bold, GraphicsUnit.Pixel);
                TableroVisible[index].TextAlign = ContentAlignment.MiddleCenter;

                this.Controls.Add(TableroVisible[index]);

            }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            IniciarJuego("O");
            Inicio.Text = "¡REINICIAR!";
        }
        
    }
}
