#include <stdlib.h>
#include <time.h>
#include <iostream>


#pragma once

namespace BattleshipCPP {

	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;

	/// <summary>
	/// Summary for MyForm
	/// </summary>



	public ref class MyForm : public System::Windows::Forms::Form
	{
	public:
		MyForm(void)
		{
			//
			//TODO: Add the constructor code here
			//
			InitializeComponent();

		}

	protected:
		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		~MyForm()
		{
			if (components)
			{
				delete components;
			}
		}
	private: System::Windows::Forms::Label^  label1;
	protected:
	private: System::Windows::Forms::Label^  label2;
	private: System::Windows::Forms::Label^  label3;
	private: System::Windows::Forms::Label^  lblNavesRestantes;
	private: System::Windows::Forms::Label^  lblDisparosDisponibles;
	private: System::Windows::Forms::Button^  Inicio;
	private: System::Windows::Forms::Label^  label4;
	private: System::Windows::Forms::Label^  label5;

	private:
		/// <summary>
		/// Required designer variable.
		/// </summary>
		System::ComponentModel::Container ^components;

#pragma region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		void InitializeComponent(void)
		{
			this->label1 = (gcnew System::Windows::Forms::Label());
			this->label2 = (gcnew System::Windows::Forms::Label());
			this->label3 = (gcnew System::Windows::Forms::Label());
			this->lblNavesRestantes = (gcnew System::Windows::Forms::Label());
			this->lblDisparosDisponibles = (gcnew System::Windows::Forms::Label());
			this->Inicio = (gcnew System::Windows::Forms::Button());
			this->label4 = (gcnew System::Windows::Forms::Label());
			this->label5 = (gcnew System::Windows::Forms::Label());
			this->SuspendLayout();
			// 
			// label1
			// 
			this->label1->AutoSize = true;
			this->label1->Font = (gcnew System::Drawing::Font(L"Snap ITC", 20.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->label1->Location = System::Drawing::Point(196, 9);
			this->label1->Name = L"label1";
			this->label1->Size = System::Drawing::Size(224, 35);
			this->label1->TabIndex = 0;
			this->label1->Text = L"BATTLESHIP";
			// 
			// label2
			// 
			this->label2->AutoSize = true;
			this->label2->Font = (gcnew System::Drawing::Font(L"Showcard Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->label2->Location = System::Drawing::Point(318, 64);
			this->label2->Name = L"label2";
			this->label2->Size = System::Drawing::Size(201, 20);
			this->label2->TabIndex = 1;
			this->label2->Text = L"DISPAROS DISPONIBLES:";
			// 
			// label3
			// 
			this->label3->AutoSize = true;
			this->label3->Font = (gcnew System::Drawing::Font(L"Showcard Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->label3->Location = System::Drawing::Point(44, 64);
			this->label3->Name = L"label3";
			this->label3->Size = System::Drawing::Size(155, 20);
			this->label3->TabIndex = 2;
			this->label3->Text = L"NAVES RESTANTES:";
			// 
			// lblNavesRestantes
			// 
			this->lblNavesRestantes->AutoSize = true;
			this->lblNavesRestantes->Font = (gcnew System::Drawing::Font(L"Showcard Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->lblNavesRestantes->Location = System::Drawing::Point(205, 64);
			this->lblNavesRestantes->Name = L"lblNavesRestantes";
			this->lblNavesRestantes->Size = System::Drawing::Size(25, 20);
			this->lblNavesRestantes->TabIndex = 3;
			this->lblNavesRestantes->Text = L"10";
			// 
			// lblDisparosDisponibles
			// 
			this->lblDisparosDisponibles->AutoSize = true;
			this->lblDisparosDisponibles->Font = (gcnew System::Drawing::Font(L"Showcard Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->lblDisparosDisponibles->Location = System::Drawing::Point(525, 64);
			this->lblDisparosDisponibles->Name = L"lblDisparosDisponibles";
			this->lblDisparosDisponibles->Size = System::Drawing::Size(25, 20);
			this->lblDisparosDisponibles->TabIndex = 4;
			this->lblDisparosDisponibles->Text = L"20";
			// 
			// Inicio
			// 
			this->Inicio->Font = (gcnew System::Drawing::Font(L"Showcard Gothic", 14.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->Inicio->Location = System::Drawing::Point(202, 515);
			this->Inicio->Name = L"Inicio";
			this->Inicio->Size = System::Drawing::Size(158, 48);
			this->Inicio->TabIndex = 5;
			this->Inicio->Text = L"¡COMENZAR!";
			this->Inicio->UseVisualStyleBackColor = true;
			this->Inicio->Click += gcnew System::EventHandler(this, &MyForm::Inicio_Click_1);
			// 
			// label4
			// 
			this->label4->AutoSize = true;
			this->label4->Font = (gcnew System::Drawing::Font(L"Impact", 14.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->label4->ForeColor = System::Drawing::Color::FromArgb(static_cast<System::Int32>(static_cast<System::Byte>(230)), static_cast<System::Int32>(static_cast<System::Byte>(19)),
				static_cast<System::Int32>(static_cast<System::Byte>(19)));
			this->label4->Location = System::Drawing::Point(48, 455);
			this->label4->Name = L"label4";
			this->label4->Size = System::Drawing::Size(143, 23);
			this->label4->TabIndex = 6;
			this->label4->Text = L"X: Nave destruida";
			// 
			// label5
			// 
			this->label5->AutoSize = true;
			this->label5->Font = (gcnew System::Drawing::Font(L"Impact", 14.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->label5->Location = System::Drawing::Point(48, 488);
			this->label5->Name = L"label5";
			this->label5->Size = System::Drawing::Size(141, 23);
			this->label5->TabIndex = 7;
			this->label5->Text = L"F: Disparo fallido";
			// 
			// MyForm
			// 
			this->AccessibleName = L"FormBattleship";
			this->AutoScaleDimensions = System::Drawing::SizeF(6, 13);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(608, 565);
			this->Controls->Add(this->label5);
			this->Controls->Add(this->label4);
			this->Controls->Add(this->Inicio);
			this->Controls->Add(this->lblDisparosDisponibles);
			this->Controls->Add(this->lblNavesRestantes);
			this->Controls->Add(this->label3);
			this->Controls->Add(this->label2);
			this->Controls->Add(this->label1);
			this->Name = L"MyForm";
			this->Text = L"MyForm";
			this->Load += gcnew System::EventHandler(this, &MyForm::MyForm_Load);
			this->ResumeLayout(false);
			this->PerformLayout();

		}
#pragma endregion

	/* NOTACIÓN

	F: Fallo
	N: Nave
	O: Espacio vacío
	X: Nave destriuda
	*/

	//Variables globales

		array<String^>^ TableroClave = gcnew array<String^>(100);		//Tablero Clave
		int* naves = new int[10];										//Naves

		array<Label^>^ TableroVisible = gcnew array<Label^>(100);		//Tablero del jugador

		int* EscogerAleatorio() {

			int i, j;                           //Contadores
			int* nave = new int[10];						//Arreglo con las posiciones de las naves
			bool NumeroDistinto;                //Diremos que el numero es distinto hasta que se demuestre lo contrario
			int posicion;						//Posicion aleatoria
			srand((unsigned)time(NULL));

			for (i = 0; i < 10; i++)
			{

				switch (i)
				{
				case 0:     //La primera casilla no cuenta pues no podemos compararla con nada
					nave[i] = rand() % 100;
					break;

				default:    //El resto de las casillas hay que compararlas con las anteriores
					while (true)
					{
						posicion = rand() % 100;
						NumeroDistinto = true;

						for (int j = 0; j < i; j++)
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
		void IniciarJuego(String^ metodo)
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

				TableroVisible[i]->Text = "";
				TableroVisible[i]->ForeColor = Color::FromArgb(1, 0, 0, 0);

			}


			//Generamos las posiciones aleatorias
			naves = EscogerAleatorio();

			for (i = 0; i < 10; i++)
			{
				TableroClave[naves[i]] = "N";
			}

			//Acomodamos los labels con las naves y disparos necesarios
			lblNavesRestantes->Text = "10";
			lblDisparosDisponibles->Text = "20";

			Inicio->Text = "¡Comenzar!";

		}

		void Reiniciar(String^ mensaje)
		{
			System::Windows::Forms::DialogResult respuesta;
			respuesta = MessageBox::Show(this, mensaje, "Error", MessageBoxButtons::YesNo);

			if (respuesta == System::Windows::Forms::DialogResult::Yes)
			{
				IniciarJuego("");
			}
			else
			{
				this->Close();
			}
		}

	private:
		System::Void label_Click(System::Object^ sender, System::EventArgs^ e)
		{
			Label^ casilla = safe_cast<Label^>(sender);
			int index = Array::IndexOf(TableroVisible, casilla);
			String^ texto = lblNavesRestantes->Text;
			int naves = Int32::Parse(texto);
			texto = lblDisparosDisponibles->Text;
			int disparos = Int32::Parse(texto);
			String^ letra = TableroClave[index];

			if (0 == String::Compare(letra, "N")) {
				//Marcamos la casilla
				TableroClave[index] = "X";
				TableroVisible[index]->Text = "X";
				TableroVisible[index]->ForeColor = Color::FromArgb(220, 26, 39);

				//Descontamos una nave
				lblNavesRestantes->Text = (naves - 1).ToString();
				disparos += 2;
				lblDisparosDisponibles->Text = (disparos).ToString();
			}
			else if (0 == String::Compare(letra, "O")) {

				TableroClave[index] = "F";
				TableroVisible[index]->Text = "F";
				disparos--;
				lblDisparosDisponibles->Text = (disparos).ToString();
			}
			else {
				//No se puede disparar aquí
				MessageBox::Show(this, "No puedes disparar aquí", "Battleship", MessageBoxButtons::OK);
			}


			if (disparos >= 0 && naves == 0)
			{
				//Gana
				Reiniciar("¡Has ganado! ¿Deseas comenzar una nueva partida?");

			}
			else if (disparos == 0 && naves > 0)
			{
				//Pierde
				Reiniciar("Has perdido :( ¿Deseas comenzar una nueva partida?");
			}

		}




	private: System::Void Inicio_Click_1(System::Object^  sender, System::EventArgs^  e) {

		Inicio->Text = "¡REINICIAR!";
		IniciarJuego("O");
	}

	private: System::Void MyForm_Load(System::Object^  sender, System::EventArgs^  e) {

		//Añadimos los labels del tablero
		int x, y = 0;													//Contadores posicionar los labels
		int index;														//Contador para recorrer el array

		for (index = 0; index < 100; index++)
		{
			x = index % 10;
			if (x == 0) y++;

			//Propiedades de los labels
			TableroVisible[index] = gcnew Label();
			TableroVisible[index]->Size = System::Drawing::Size(30, 30);
			TableroVisible[index]->Location = Point(150 + x * 35, 60 + y * 35);
			TableroVisible[index]->BackColor = Color::FromArgb(255, 255, 255);
			TableroVisible[index]->Font = (gcnew System::Drawing::Font("Lato", 18, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Pixel));
			//TableroVisible[index] -> TextAlign = ContentAlignment(MiddleCenter);

			TableroVisible[index]->Click -= gcnew System::EventHandler(this, &MyForm::label_Click);
			TableroVisible[index]->Click += gcnew System::EventHandler(this, &MyForm::label_Click);

			this->Controls->Add(TableroVisible[index]);
		}
	}
};
}
