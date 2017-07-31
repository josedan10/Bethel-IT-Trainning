package sample;

import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.control.Control;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.event.Event;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;


public class Controller {
    public Button btnNro0;
    public TextField txtResultado;

    //Objeto para realizar la operacion
    Operacion operacion = new Operacion();


    public void agregarNumero(Event evt)
    {

        Button btnNro =  (Button)evt.getSource();
        String resultado = btnNro.getText();



        if(txtResultado.getText().equals("0")){

            txtResultado.setText(resultado);

        }else{

            txtResultado.setText(txtResultado.getText() + resultado);
        }

    }

    public void AgregarOperador(Event sender)
    {
        Button operador = (Button)sender.getSource();
        double numero1 = Double.parseDouble(txtResultado.getText());

        //Asignamos el primer atributo en operacion
        operacion.numero1 = numero1;

        //Asignamos el operador en operacion
        operacion.operador = operador.getText();

        //Borramos el Textbox para recibir el otro número
        txtResultado.setText("");

    }


    public void RealizarOperacion(Event evt)
    {
        operacion.numero2 = Double.parseDouble(txtResultado.getText());
        txtResultado.setText("");
        operacion.Calcular(txtResultado);
    }


    public void btnBorrarClick(Event evt)
    {
        String resultado = txtResultado.getText();
        int indice = resultado.length() - 1;


        if(resultado.length() == 1)
        {
            txtResultado.setText("0");

        }else{
            resultado = resultado.substring(0,indice);
            txtResultado.setText(resultado);
        }
    }

    //Declaración de la clase para realizar la operacion
    public class Operacion
    {
        public double numero1,
                numero2;

        public String operador;


        public void Calcular(TextField txtResultado) {

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

            txtResultado.setText(Double.toString(resultado));
        }



}



}

