#include <iostream>
using namespace std;

int main() {

	float importeBruto;

	cout << "Ingrese el importe bruto de su factura: ";
	cin >> importeBruto;

	if (importeBruto < 0) {
		cout << "\nImporte bruto invalido" << endl;

	}
	else if (importeBruto >= 20000) {

		cout << "\n\nSu importe neto es " << importeBruto - importeBruto * 0.15 << endl;

	}
	else {

		cout << "\n\nSu importe neto es " << importeBruto << endl;

	}

	system("PAUSE");
	return 0;
}