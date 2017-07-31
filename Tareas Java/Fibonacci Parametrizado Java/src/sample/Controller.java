package sample;

import javafx.event.Event;
import javafx.scene.control.*;

public class Controller {

    public TextField txtTiempoTotal, txtTiempoTiernos, txtTiempoMaduros, txtTiernosIniciales, txtMadurosIniciales, txtCantidad;
    public Button btnResultado;
    public Label lblResultado;


    int fibonacciParametrizado(int conejosTiernosIniciales, int conejosMadurosIniciales, int tiempoTiernos, int tiempoMaduros, int cantidadProcreacionMaduros, int tiempoTotal)
    {
        int conejosTiernos = 0, conejosMaduros = 0, totalConejos = 0;
        int[] conejosTiernosArreglo, conejosMadurosArreglo;
        int totalParcial = 0; //Variable para las cuentas parciales
        int i, j, mes;

        if (tiempoTiernos == tiempoMaduros)
        {

            //Como se reproducen al mismo tiempo, entonces siempre coincidirán la procreación de los maduros con los tiernos
            //Por lo tanto los meses intermedios no son necesarios
            //Recortamos el ciclo para optimizar el proceso

            double nuevoTiempo; //Variable para reducir el ciclo


            nuevoTiempo = Math.floor((double)(tiempoTotal / tiempoTiernos));
            totalParcial = conejosTiernosIniciales + conejosMadurosIniciales;

            for (i = 0; i < nuevoTiempo; i++) {
                totalParcial = (totalParcial * cantidadProcreacionMaduros) * 2;
            }

            totalConejos = totalParcial;

        }
        else if(tiempoTiernos == 1)
        {
            conejosMadurosArreglo = new int[tiempoMaduros];
            conejosTiernos = conejosTiernosIniciales;

            for (mes = 1; mes <= tiempoTotal; mes++) {


                //Llenamos la primera casilla y nacen los nuevos conejos
                conejosMadurosArreglo[0] = (conejosTiernos + conejosMadurosArreglo[tiempoMaduros - 1]) * cantidadProcreacionMaduros;
                conejosTiernos = conejosMadurosArreglo[0];

                //Corremos los conejos hacia la derecha
                for (i = tiempoMaduros - 1; i > 0; i--)
                {
                    conejosMadurosArreglo[i] = conejosMadurosArreglo[i - 1];
                }
            }

            //Ahora sumamos todos los conejos
            for (i = 0; i < tiempoMaduros; i++)
            {
                totalParcial += conejosMadurosArreglo[i];
            }

            totalConejos = totalParcial + conejosTiernos;
        }else if(tiempoMaduros == 1)
        {
            conejosTiernosArreglo = new int[tiempoTiernos];
            conejosTiernosArreglo[0] = conejosTiernosIniciales;

            for (mes = 1; mes <= tiempoTotal; mes++) {


                conejosMaduros = (conejosMaduros + conejosTiernosArreglo[tiempoTiernos - 1]) * cantidadProcreacionMaduros;

                //Corremos los conejos tiernos
                for (i = tiempoTiernos - 1; i > 0; i--) {

                    conejosTiernosArreglo[i] = conejosTiernosArreglo[i - 1];
                }


                conejosTiernosArreglo[0] = conejosMaduros;

            }

            //Sumamos todos los conejos
            for (i = 0; i < tiempoTiernos; i++)
            {

                totalParcial += conejosTiernosArreglo[i];
            }


            totalConejos = totalParcial + conejosMaduros;
        }
        else
        {
            //Corrida en ambos arreglos
            conejosTiernosArreglo = new int[tiempoTiernos -1];
            conejosMadurosArreglo = new int[tiempoMaduros];

            //Asignamos los valores iniciales en el arreglo
            conejosMadurosArreglo[0] = conejosMadurosIniciales;
            conejosTiernosArreglo[0] = conejosTiernosIniciales;

            for (mes = 1; mes <= tiempoTotal; mes++) {

                //Guardamos los conejos maduros que van a procrear
                conejosMaduros = conejosMadurosArreglo[tiempoMaduros - 1];

                //Desplazamos los conejos maduros

                for (i = tiempoMaduros - 1; i > 0; i--) {

                    conejosMadurosArreglo[i] = conejosMadurosArreglo[i - 1];
                }

                //Sumamos los conejos tiernos que van a procrear
                conejosMaduros = (conejosMaduros + conejosTiernosArreglo[tiempoTiernos - 2]) * cantidadProcreacionMaduros;

                //Desplazamos los conejos tiernos
                for (i = tiempoTiernos - 2; i > 0; i--) {

                    conejosTiernosArreglo[i] = conejosTiernosArreglo[i - 1];
                }

                //Anexamos los nuevos conejos maduros al arreglo y también los nuevos tiernos
                conejosMadurosArreglo[0] = conejosMaduros;
                conejosTiernosArreglo[0] = conejosMaduros;

            }

            //Sumamos todos los conejos
            for (i = 0; i < tiempoTiernos - 1; i++) {

                totalParcial += conejosTiernosArreglo[i];
            }

            for (i = 0; i < tiempoMaduros; i++)
            {

                totalParcial += conejosMadurosArreglo[i];
            }


            totalConejos = totalParcial;
        }

        return totalConejos;
    }


    public void btnResultado_Click(Event evt)
    {
        int conejosTiernosIniciales, conejosMadurosIniciales,
                tiempoTiernos, tiempoMaduros,
                cantidadProcreacionMaduros, tiempoTotal, totalConejos;

        //Si algún textbox está vacío entonces no se ejecuta
        if (txtMadurosIniciales.getText().equals("") || txtTiempoMaduros.getText().equals("") || txtTiempoTiernos.getText().equals("") || txtTiempoTotal.getText().equals("") || txtTiernosIniciales.getText().equals(""))
        {
            //MsgBox()
        }
        else if(txtTiempoTotal.getText().equals("0"))
        {
            lblResultado.setText("El total de conejos es igual al inicial");
        }
        else if(txtMadurosIniciales.getText().equals("0") && txtTiernosIniciales.getText().equals("0"))
        {
            lblResultado.setText("Si no hay conejos no se pueden procrear");
        }
        else
        {
            //Asignamos los valores a las variables
            conejosMadurosIniciales = Integer.parseInt(txtMadurosIniciales.getText());
            conejosTiernosIniciales = Integer.parseInt(txtTiernosIniciales.getText());
            tiempoMaduros = Integer.parseInt(txtTiempoMaduros.getText());
            tiempoTiernos = Integer.parseInt(txtTiempoTiernos.getText());
            tiempoTotal = Integer.parseInt(txtTiempoTotal.getText());
            cantidadProcreacionMaduros = Integer.parseInt(txtCantidad.getText());

            totalConejos = fibonacciParametrizado(conejosTiernosIniciales, conejosMadurosIniciales, tiempoTiernos, tiempoMaduros, cantidadProcreacionMaduros, tiempoTotal);

            lblResultado.setText("El total de conejos en " + Integer.toString(tiempoTotal) + " meses es " + Integer.toString(totalConejos * 2));
        }
    }
}
