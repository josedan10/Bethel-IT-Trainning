#include <iostream>
#include <iomanip>

using namespace std;

int main() {

	double multiplicacion = 1, i;

	for (i = 10; i <= 20; i++) {
		multiplicacion = multiplicacion * i;
	}

	cout << "La multiplicacion de los numeros del 10 al 20 es " << setprecision(20) << multiplicacion << endl;

	system("PAUSE");


	return 0;
}