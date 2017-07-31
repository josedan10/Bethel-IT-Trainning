#include <iostream>
#include <math.h>
using namespace std;

int main() {

	int A, B, C;
	int discriminante;
	float x1, x2;

	cout << "Introduzca los coeficientes del polinomio de segundo grado" << endl;
	cout << "A: "; cin >> A;
	cout << "\nB: "; cin >> B;
	cout << "\nC: "; cin >> C;

	switch (A){
	
	case 0:

		switch (B) {

		case 0:
			cout << "No se puede resolver la ecuacion" << endl;
			break;

		default:
			cout << "La solución a la ecuacion es " << (float)-C / B << endl;
			break;

		}

		break;
		

	default: 

		discriminante = B * B - 4 * A * C;

		if (discriminante < 0) {

			//Caso de números imaginarios
			discriminante *= -1;
			cout << "Las soluciones a esta ecuacion son:" << endl;
			cout << "x1: " << -B / (2 * A) << "+" << sqrt(discriminante) / (2 * A) << "i";
			cout << "x2: " << -B / (2 * A) << "-" << sqrt(discriminante) / (2 * A) << "i";

		}
		else {

			x1 = (-B + sqrt(discriminante)) / (2 * A);
			x2 = (-B - sqrt(discriminante)) / (2 * A);

			cout << "Las soluciones de la ecuacion son:" << endl;
			cout << "x1: " << x1 << endl;
			cout << "x2: " << x2 << endl;

		}

		break;
	}

	system("PAUSE");
}