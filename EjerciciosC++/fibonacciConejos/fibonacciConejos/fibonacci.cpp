#include <iostream>
using namespace std;

int main()
{

	int conejosTiernos, conejosAdultos, meses, aux;

	cout << "Introuduzca de meses que desea evaluar: ";
	cin >> meses;

	cout << endl << "Introduzca la cantidad de conejos tiernos con los que desea empezar: ";
	cin >> conejosTiernos;

	cout << endl << "Introduzca la cantidad de conejos adultos con los que desea empezar: ";
	cin >> conejosAdultos;

	for (int i = 1; i <= meses; i++) {

		aux = conejosAdultos;
		conejosAdultos += conejosTiernos;
		conejosTiernos = aux;

	}

	cout << "La cantidad de conejos en " << meses << " meses es "
		<< conejosTiernos + conejosAdultos << endl;

	system("PAUSE");
	return 0;
}

