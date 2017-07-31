#include <iostream>
using namespace std;

#define MINIMO 40638.00f

int main() {

	float sueldo;

	do {

		cout << "Sueldo minimo actual: " << MINIMO << endl;
		cout << "Introduzca su salario para verificar su bono: ";
		cin >> sueldo;

		
		if (sueldo < 0) { 

			system("cls");
			cout << "\nSalario no valido" << endl; 
		}else break;

	} while (true);

	if(sueldo == MINIMO){

		cout << "Su nuevo salario es " << MINIMO + MINIMO * 0.1 << endl;

	}
	else {

		cout << "Usted no tiene aumento. Su salario es " << sueldo << endl;
	}


	system("PAUSE");
	return 0;
}