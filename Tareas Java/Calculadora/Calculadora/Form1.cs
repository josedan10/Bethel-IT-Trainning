using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Calculadora
{
    //Declaración de la clase para realizar la operacion
    public struct Operacion
    {
        public double numero1,
                      numero2;

        public string operador;


        public void Calcular(TextBox txtResultado) {

            double resultado = 0.0;

            switch (operador)
            {
                case "+":
                    resultado = numero1 + numero2;
                    break;

                case "-":
                    resultado = numero1 - numero2;
                    break;

                case "x":
                    resultado = numero1 * numero2;
                    break;

                case "/":
                    resultado = numero1 / numero2;
                    break;
            }

            txtResultado.Text = Convert.ToString(resultado);
        }

    }


    public partial class Form1 : Form
    {
        //Objeto operacion
        Operacion operacion = new Operacion();

        public Form1()
        {
            InitializeComponent();
        }

        private void btnBorrar_Click(object sender, EventArgs e)
        {
            string resultado = txtResultado.Text;
            int indice = resultado.Length - 1;
            
            
            if(txtResultado.Text != "")
            {
                resultado = resultado.Remove(indice);
                txtResultado.Text = resultado;
            }
        }

        private void agregarNumero(object sender, EventArgs e)
        {
            Button btnNro = (Button) sender;

            

            switch (txtResultado.Text)
            {
                case "0":
                    /*Hay un caso especial si el cuadro de texto ya es 0
                      No me interesa volver a poner otro cero*/

                    if (btnNro.Text != "0" && btnNro.Text != ".") txtResultado.Text = btnNro.Text;
                    break;

                default:

                    txtResultado.Text += btnNro.Text;

                    break;
            }
        }

        private void AgregarOperador(object sender, EventArgs e)
        {
            Button operador = (Button)sender;
            double numero1 = Convert.ToDouble(txtResultado.Text);

            //Asignamos el primer atributo en operacion
            operacion.numero1 = numero1;

            //Asignamos el operador en operacion
            operacion.operador = operador.Text;

            //Borramos el Textbox para recibir el otro número
            txtResultado.Text = "";

        }

        private void RealizarOperacion(object sender, EventArgs e)
        {
            operacion.numero2 = Convert.ToDouble(txtResultado.Text);
            txtResultado.Text = "";
            operacion.Calcular(txtResultado);
        }

        private void Form1_Load(object sender, EventArgs e)
        {

            //Agregamos el evento para los números
            btnNro0.Click += new EventHandler(agregarNumero);
            btnNro1.Click += new EventHandler(agregarNumero);
            btnNro2.Click += new EventHandler(agregarNumero);
            btnNro3.Click += new EventHandler(agregarNumero);
            btnNro4.Click += new EventHandler(agregarNumero);
            btnNro5.Click += new EventHandler(agregarNumero);
            btnNro6.Click += new EventHandler(agregarNumero);
            btnNro7.Click += new EventHandler(agregarNumero);
            btnNro8.Click += new EventHandler(agregarNumero);
            btnNro9.Click += new EventHandler(agregarNumero);

            //Agregamos los eventos para cada operador
            btnSuma.Click += new EventHandler(AgregarOperador);
            btnResta.Click += new EventHandler(AgregarOperador);
            btnMultiplicacion.Click += new EventHandler(AgregarOperador);
            btnDivision.Click += new EventHandler(AgregarOperador);

            //Agregamos el evento al boton de igualdad
            btnResultado.Click += new EventHandler(RealizarOperacion);

        }
    }
}
