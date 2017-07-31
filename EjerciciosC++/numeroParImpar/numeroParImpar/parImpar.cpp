#include <iostream>
using namespace std;

int main() {

	int numero;

	cout << "Introduzca un numero entero positivo: ";
	cin >> numero;

	if (numero <= 0) {

		cout << "\nEste numero no es positivo . . ." << endl;

	}
	else {

		if (numero % 2 == 0) {

			cout << "El numero " << numero << " es par" << endl;

		}
		else {
			
			cout << "El numero " << numero << " es impar" << endl;

		}

	}

	system("PAUSE");

}