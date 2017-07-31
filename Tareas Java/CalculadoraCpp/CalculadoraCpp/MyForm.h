#include <iostream>
#include <string>
#include <msclr\marshal_cppstd.h>

using namespace System;
using namespace System::Windows::Forms;
using namespace std;
using namespace msclr::interop;

//Declaración de la clase para realizar la operacion
public struct Operacion
{
	public: double numero1,
				   numero2;

	public: string operador = "";


	public: void Calcular(TextBox^ txtResultado) {

		double resultado = 0.0;

		if (operador == "+")
		{
			resultado = numero1 + numero2;

		}
		else if (operador == "-")
		{
			resultado = numero1 - numero2;
		}
		else if (operador == "x")
		{
			resultado = numero1 * numero2;
		}else if(operador == "/")
		{
			resultado = numero1 / numero2;
		}

		txtResultado->Text = resultado.ToString();
	}

};

struct Operacion operacion;

#pragma once

namespace CalculadoraCpp {

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
			InitializeComponent();
			//
			//TODO: Add the constructor code here
			//
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
	private: System::Windows::Forms::TextBox^  txtResultado;
	private: System::Windows::Forms::Button^  btnNro7;
	private: System::Windows::Forms::Button^  btnNro8;
	private: System::Windows::Forms::Button^  btnNro9;
	private: System::Windows::Forms::Button^  btnDivision;
	private: System::Windows::Forms::Button^  btnMultiplicacion;
	private: System::Windows::Forms::Button^  btnNro6;
	private: System::Windows::Forms::Button^  btnNro5;
	private: System::Windows::Forms::Button^  btnNro4;
	private: System::Windows::Forms::Button^  btnResta;
	private: System::Windows::Forms::Button^  btnNro3;
	private: System::Windows::Forms::Button^  btnNro2;
	private: System::Windows::Forms::Button^  btnNro1;
	private: System::Windows::Forms::Button^  btnSuma;
	private: System::Windows::Forms::Button^  btnResultado;
	private: System::Windows::Forms::Button^  btnBorrar;
	private: System::Windows::Forms::Button^  btnNro0;
	protected:

	protected:

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
			this->txtResultado = (gcnew System::Windows::Forms::TextBox());
			this->btnNro7 = (gcnew System::Windows::Forms::Button());
			this->btnNro8 = (gcnew System::Windows::Forms::Button());
			this->btnNro9 = (gcnew System::Windows::Forms::Button());
			this->btnDivision = (gcnew System::Windows::Forms::Button());
			this->btnMultiplicacion = (gcnew System::Windows::Forms::Button());
			this->btnNro6 = (gcnew System::Windows::Forms::Button());
			this->btnNro5 = (gcnew System::Windows::Forms::Button());
			this->btnNro4 = (gcnew System::Windows::Forms::Button());
			this->btnResta = (gcnew System::Windows::Forms::Button());
			this->btnNro3 = (gcnew System::Windows::Forms::Button());
			this->btnNro2 = (gcnew System::Windows::Forms::Button());
			this->btnNro1 = (gcnew System::Windows::Forms::Button());
			this->btnSuma = (gcnew System::Windows::Forms::Button());
			this->btnResultado = (gcnew System::Windows::Forms::Button());
			this->btnBorrar = (gcnew System::Windows::Forms::Button());
			this->btnNro0 = (gcnew System::Windows::Forms::Button());
			this->SuspendLayout();
			// 
			// txtResultado
			// 
			this->txtResultado->Font = (gcnew System::Drawing::Font(L"Consolas", 18, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->txtResultado->Location = System::Drawing::Point(9, 10);
			this->txtResultado->Name = L"txtResultado";
			this->txtResultado->Size = System::Drawing::Size(259, 36);
			this->txtResultado->TabIndex = 0;
			this->txtResultado->Text = L"0";
			this->txtResultado->TextAlign = System::Windows::Forms::HorizontalAlignment::Right;
			// 
			// btnNro7
			// 
			this->btnNro7->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnNro7->Location = System::Drawing::Point(11, 66);
			this->btnNro7->Name = L"btnNro7";
			this->btnNro7->Size = System::Drawing::Size(52, 50);
			this->btnNro7->TabIndex = 1;
			this->btnNro7->Text = L"7";
			this->btnNro7->UseVisualStyleBackColor = true;
			// 
			// btnNro8
			// 
			this->btnNro8->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnNro8->Location = System::Drawing::Point(78, 66);
			this->btnNro8->Name = L"btnNro8";
			this->btnNro8->Size = System::Drawing::Size(52, 50);
			this->btnNro8->TabIndex = 2;
			this->btnNro8->Text = L"8";
			this->btnNro8->UseVisualStyleBackColor = true;
			// 
			// btnNro9
			// 
			this->btnNro9->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnNro9->Location = System::Drawing::Point(147, 66);
			this->btnNro9->Name = L"btnNro9";
			this->btnNro9->Size = System::Drawing::Size(52, 50);
			this->btnNro9->TabIndex = 3;
			this->btnNro9->Text = L"9";
			this->btnNro9->UseVisualStyleBackColor = true;
			// 
			// btnDivision
			// 
			this->btnDivision->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnDivision->Location = System::Drawing::Point(216, 66);
			this->btnDivision->Name = L"btnDivision";
			this->btnDivision->Size = System::Drawing::Size(52, 50);
			this->btnDivision->TabIndex = 4;
			this->btnDivision->Text = L"/";
			this->btnDivision->UseVisualStyleBackColor = true;
			// 
			// btnMultiplicacion
			// 
			this->btnMultiplicacion->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnMultiplicacion->Location = System::Drawing::Point(216, 132);
			this->btnMultiplicacion->Name = L"btnMultiplicacion";
			this->btnMultiplicacion->Size = System::Drawing::Size(52, 50);
			this->btnMultiplicacion->TabIndex = 8;
			this->btnMultiplicacion->Text = L"x";
			this->btnMultiplicacion->UseVisualStyleBackColor = true;
			// 
			// btnNro6
			// 
			this->btnNro6->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnNro6->Location = System::Drawing::Point(147, 132);
			this->btnNro6->Name = L"btnNro6";
			this->btnNro6->Size = System::Drawing::Size(52, 50);
			this->btnNro6->TabIndex = 7;
			this->btnNro6->Text = L"6";
			this->btnNro6->UseVisualStyleBackColor = true;
			// 
			// btnNro5
			// 
			this->btnNro5->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnNro5->Location = System::Drawing::Point(78, 132);
			this->btnNro5->Name = L"btnNro5";
			this->btnNro5->Size = System::Drawing::Size(52, 50);
			this->btnNro5->TabIndex = 6;
			this->btnNro5->Text = L"5";
			this->btnNro5->UseVisualStyleBackColor = true;
			// 
			// btnNro4
			// 
			this->btnNro4->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnNro4->Location = System::Drawing::Point(11, 132);
			this->btnNro4->Name = L"btnNro4";
			this->btnNro4->Size = System::Drawing::Size(52, 50);
			this->btnNro4->TabIndex = 5;
			this->btnNro4->Text = L"4";
			this->btnNro4->UseVisualStyleBackColor = true;
			// 
			// btnResta
			// 
			this->btnResta->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnResta->Location = System::Drawing::Point(216, 199);
			this->btnResta->Name = L"btnResta";
			this->btnResta->Size = System::Drawing::Size(52, 50);
			this->btnResta->TabIndex = 12;
			this->btnResta->Text = L"-";
			this->btnResta->UseVisualStyleBackColor = true;
			// 
			// btnNro3
			// 
			this->btnNro3->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnNro3->Location = System::Drawing::Point(147, 199);
			this->btnNro3->Name = L"btnNro3";
			this->btnNro3->Size = System::Drawing::Size(52, 50);
			this->btnNro3->TabIndex = 11;
			this->btnNro3->Text = L"3";
			this->btnNro3->UseVisualStyleBackColor = true;
			// 
			// btnNro2
			// 
			this->btnNro2->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnNro2->Location = System::Drawing::Point(78, 199);
			this->btnNro2->Name = L"btnNro2";
			this->btnNro2->Size = System::Drawing::Size(52, 50);
			this->btnNro2->TabIndex = 10;
			this->btnNro2->Text = L"2";
			this->btnNro2->UseVisualStyleBackColor = true;
			// 
			// btnNro1
			// 
			this->btnNro1->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnNro1->Location = System::Drawing::Point(11, 199);
			this->btnNro1->Name = L"btnNro1";
			this->btnNro1->Size = System::Drawing::Size(52, 50);
			this->btnNro1->TabIndex = 9;
			this->btnNro1->Text = L"1";
			this->btnNro1->UseVisualStyleBackColor = true;
			// 
			// btnSuma
			// 
			this->btnSuma->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnSuma->Location = System::Drawing::Point(216, 264);
			this->btnSuma->Name = L"btnSuma";
			this->btnSuma->Size = System::Drawing::Size(52, 50);
			this->btnSuma->TabIndex = 16;
			this->btnSuma->Text = L"+";
			this->btnSuma->UseVisualStyleBackColor = true;
			// 
			// btnResultado
			// 
			this->btnResultado->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnResultado->Location = System::Drawing::Point(147, 264);
			this->btnResultado->Name = L"btnResultado";
			this->btnResultado->Size = System::Drawing::Size(52, 50);
			this->btnResultado->TabIndex = 15;
			this->btnResultado->Text = L"=";
			this->btnResultado->UseVisualStyleBackColor = true;
			// 
			// btnBorrar
			// 
			this->btnBorrar->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnBorrar->Location = System::Drawing::Point(78, 264);
			this->btnBorrar->Name = L"btnBorrar";
			this->btnBorrar->Size = System::Drawing::Size(52, 50);
			this->btnBorrar->TabIndex = 14;
			this->btnBorrar->Text = L"Del";
			this->btnBorrar->UseVisualStyleBackColor = true;
			this->btnBorrar->Click += gcnew System::EventHandler(this, &MyForm::btnBorrar_Click);
			// 
			// btnNro0
			// 
			this->btnNro0->Font = (gcnew System::Drawing::Font(L"Lato", 15.75F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnNro0->Location = System::Drawing::Point(11, 264);
			this->btnNro0->Name = L"btnNro0";
			this->btnNro0->Size = System::Drawing::Size(52, 50);
			this->btnNro0->TabIndex = 13;
			this->btnNro0->Text = L"0";
			this->btnNro0->UseVisualStyleBackColor = true;
			// 
			// MyForm
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(6, 13);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(278, 329);
			this->Controls->Add(this->btnSuma);
			this->Controls->Add(this->btnResultado);
			this->Controls->Add(this->btnBorrar);
			this->Controls->Add(this->btnNro0);
			this->Controls->Add(this->btnResta);
			this->Controls->Add(this->btnNro3);
			this->Controls->Add(this->btnNro2);
			this->Controls->Add(this->btnNro1);
			this->Controls->Add(this->btnMultiplicacion);
			this->Controls->Add(this->btnNro6);
			this->Controls->Add(this->btnNro5);
			this->Controls->Add(this->btnNro4);
			this->Controls->Add(this->btnDivision);
			this->Controls->Add(this->btnNro9);
			this->Controls->Add(this->btnNro8);
			this->Controls->Add(this->btnNro7);
			this->Controls->Add(this->txtResultado);
			this->Name = L"MyForm";
			this->Text = L"MyForm";
			this->Load += gcnew System::EventHandler(this, &MyForm::MyForm_Load);
			this->ResumeLayout(false);
			this->PerformLayout();

		}
#pragma endregion


		

	private: System::Void btnBorrar_Click(System::Object^  sender, System::EventArgs^  e) {

		String^ resultado = txtResultado->Text;

		if (resultado != "")
		{
			resultado = resultado->Remove(resultado->Length);
			txtResultado->Text = resultado;
		}

	}

	private: Void agregarNumero(Object^ sender, EventArgs^ e)
	{
		Button^ btnNro = safe_cast<Button^>(sender);

		if (txtResultado->Text == "0") {
			/*Hay un caso especial si el cuadro de texto ya es 0
			No me interesa volver a poner otro cero*/

			if (btnNro->Text != "0" && btnNro->Text != ".") txtResultado->Text = btnNro->Text;

		}else{
			txtResultado->Text += btnNro->Text;
		}

	}

	private: Void AgregarOperador(Object^ sender, EventArgs^ e)
	{
		Button^ operador = safe_cast<Button^>(sender);
		double numero1;
		Double::TryParse(txtResultado->Text, numero1);

		//Asignamos el primer atributo en operacion
		operacion.numero1 = numero1;

		//Asignamos el operador en operacion
		operacion.operador = marshal_as<string> (operador->Text);

		//Borramos el Textbox para recibir el otro número
		txtResultado->Text = "";

	}

	private: Void RealizarOperacion(Object^ sender, EventArgs^ e)
	{
		Double::TryParse(txtResultado->Text, operacion.numero2);
		txtResultado->Text = "";
		operacion.Calcular(txtResultado);
	}



	private: System::Void MyForm_Load(System::Object^  sender, System::EventArgs^  e) {

		//Agregamos el evento para los números
		btnNro0->Click += gcnew System::EventHandler(this, &MyForm::agregarNumero);
		btnNro1->Click += gcnew System::EventHandler(this, &MyForm::agregarNumero);
		btnNro2->Click += gcnew System::EventHandler(this, &MyForm::agregarNumero);
		btnNro3->Click += gcnew System::EventHandler(this, &MyForm::agregarNumero);
		btnNro4->Click += gcnew System::EventHandler(this, &MyForm::agregarNumero);
		btnNro5->Click += gcnew System::EventHandler(this, &MyForm::agregarNumero);
		btnNro6->Click += gcnew System::EventHandler(this, &MyForm::agregarNumero);
		btnNro7->Click += gcnew System::EventHandler(this, &MyForm::agregarNumero);
		btnNro8->Click += gcnew System::EventHandler(this, &MyForm::agregarNumero);
		btnNro9->Click += gcnew System::EventHandler(this, &MyForm::agregarNumero);

		//Agregamos los eventos para cada operador
		btnSuma->Click += gcnew System::EventHandler(this, &MyForm::AgregarOperador);
		btnResta->Click += gcnew System::EventHandler(this, &MyForm::AgregarOperador);
		btnMultiplicacion->Click += gcnew System::EventHandler(this, &MyForm::AgregarOperador);
		btnDivision->Click += gcnew System::EventHandler(this, &MyForm::AgregarOperador);

		//Agregamos el evento al boton de igualdad
		btnResultado->Click += gcnew System::EventHandler(this, &MyForm::RealizarOperacion);
	}
};
}
