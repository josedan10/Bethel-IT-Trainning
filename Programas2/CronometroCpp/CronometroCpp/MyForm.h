#pragma once

namespace CronometroCpp {

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
	private: System::Windows::Forms::Button^  btnInicio;
	protected:
	private: System::Windows::Forms::Button^  btnPausa;
	private: System::Windows::Forms::Button^  btnReset;
	private: System::Windows::Forms::Label^  lblMilisegundos;
	private: System::Windows::Forms::Label^  lblSegundos;
	private: System::Windows::Forms::Label^  lblMinutos;
	private: System::Windows::Forms::Label^  label1;
	private: System::Windows::Forms::Label^  label2;
	private: System::Windows::Forms::Timer^  timer1;
	private: System::ComponentModel::IContainer^  components;

	private:
		/// <summary>
		/// Required designer variable.
		/// </summary>


#pragma region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		void InitializeComponent(void)
		{
			this->components = (gcnew System::ComponentModel::Container());
			this->btnInicio = (gcnew System::Windows::Forms::Button());
			this->btnPausa = (gcnew System::Windows::Forms::Button());
			this->btnReset = (gcnew System::Windows::Forms::Button());
			this->lblMilisegundos = (gcnew System::Windows::Forms::Label());
			this->lblSegundos = (gcnew System::Windows::Forms::Label());
			this->lblMinutos = (gcnew System::Windows::Forms::Label());
			this->label1 = (gcnew System::Windows::Forms::Label());
			this->label2 = (gcnew System::Windows::Forms::Label());
			this->timer1 = (gcnew System::Windows::Forms::Timer(this->components));
			this->SuspendLayout();
			// 
			// btnInicio
			// 
			this->btnInicio->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 14.25F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnInicio->Location = System::Drawing::Point(29, 188);
			this->btnInicio->Name = L"btnInicio";
			this->btnInicio->Size = System::Drawing::Size(106, 49);
			this->btnInicio->TabIndex = 0;
			this->btnInicio->Text = L"INICIAR";
			this->btnInicio->UseVisualStyleBackColor = true;
			this->btnInicio->Click += gcnew System::EventHandler(this, &MyForm::btnInicio_Click);
			// 
			// btnPausa
			// 
			this->btnPausa->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 14.25F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnPausa->Location = System::Drawing::Point(185, 188);
			this->btnPausa->Name = L"btnPausa";
			this->btnPausa->Size = System::Drawing::Size(106, 49);
			this->btnPausa->TabIndex = 1;
			this->btnPausa->Text = L"PAUSAR";
			this->btnPausa->UseVisualStyleBackColor = true;
			this->btnPausa->Click += gcnew System::EventHandler(this, &MyForm::btnPausa_Click);
			// 
			// btnReset
			// 
			this->btnReset->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 14.25F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->btnReset->Location = System::Drawing::Point(333, 188);
			this->btnReset->Name = L"btnReset";
			this->btnReset->Size = System::Drawing::Size(106, 49);
			this->btnReset->TabIndex = 2;
			this->btnReset->Text = L"RESET";
			this->btnReset->UseVisualStyleBackColor = true;
			this->btnReset->Click += gcnew System::EventHandler(this, &MyForm::btnReset_Click);
			// 
			// lblMilisegundos
			// 
			this->lblMilisegundos->AutoSize = true;
			this->lblMilisegundos->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 48, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->lblMilisegundos->Location = System::Drawing::Point(333, 70);
			this->lblMilisegundos->Name = L"lblMilisegundos";
			this->lblMilisegundos->Size = System::Drawing::Size(106, 73);
			this->lblMilisegundos->TabIndex = 3;
			this->lblMilisegundos->Text = L"00";
			this->lblMilisegundos->TextAlign = System::Drawing::ContentAlignment::MiddleCenter;
			// 
			// lblSegundos
			// 
			this->lblSegundos->AutoSize = true;
			this->lblSegundos->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 48, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->lblSegundos->Location = System::Drawing::Point(185, 70);
			this->lblSegundos->Name = L"lblSegundos";
			this->lblSegundos->Size = System::Drawing::Size(106, 73);
			this->lblSegundos->TabIndex = 4;
			this->lblSegundos->Text = L"00";
			this->lblSegundos->TextAlign = System::Drawing::ContentAlignment::MiddleCenter;
			// 
			// lblMinutos
			// 
			this->lblMinutos->AutoSize = true;
			this->lblMinutos->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 48, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->lblMinutos->Location = System::Drawing::Point(29, 70);
			this->lblMinutos->Name = L"lblMinutos";
			this->lblMinutos->Size = System::Drawing::Size(106, 73);
			this->lblMinutos->TabIndex = 5;
			this->lblMinutos->Text = L"00";
			this->lblMinutos->TextAlign = System::Drawing::ContentAlignment::MiddleCenter;
			// 
			// label1
			// 
			this->label1->AutoSize = true;
			this->label1->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 48, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->label1->Location = System::Drawing::Point(287, 70);
			this->label1->Name = L"label1";
			this->label1->Size = System::Drawing::Size(51, 73);
			this->label1->TabIndex = 6;
			this->label1->Text = L":";
			// 
			// label2
			// 
			this->label2->AutoSize = true;
			this->label2->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 48, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->label2->Location = System::Drawing::Point(139, 70);
			this->label2->Name = L"label2";
			this->label2->Size = System::Drawing::Size(51, 73);
			this->label2->TabIndex = 7;
			this->label2->Text = L":";
			// 
			// timer1
			// 
			this->timer1->Interval = 10;
			this->timer1->Tick += gcnew System::EventHandler(this, &MyForm::timer1_Tick);
			// 
			// MyForm
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(6, 13);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(466, 261);
			this->Controls->Add(this->label2);
			this->Controls->Add(this->label1);
			this->Controls->Add(this->lblMinutos);
			this->Controls->Add(this->lblSegundos);
			this->Controls->Add(this->lblMilisegundos);
			this->Controls->Add(this->btnReset);
			this->Controls->Add(this->btnPausa);
			this->Controls->Add(this->btnInicio);
			this->Name = L"MyForm";
			this->Text = L"MyForm";
			this->ResumeLayout(false);
			this->PerformLayout();

		}
#pragma endregion

		int milisegundos = 0,
			segundos = 0,
			minutos = 0;


	private: System::Void timer1_Tick(System::Object^  sender, System::EventArgs^  e) {

		switch (milisegundos) {
			
			//Si llegamos a 60 milisegundos reiniciamos los milisegundos y sumamos un segundo
			case 60:
				milisegundos = 0;
				segundos++;

				lblMilisegundos->Text = "0" + milisegundos.ToString();

				//En lugar de que aparezca "0, 1, 2, ..., 9" haremos que aparezca "00, 01, 02, ..., 09"
				if (segundos < 10) {
					lblSegundos->Text = "0" + segundos.ToString();
				}
				else {
					lblSegundos->Text = segundos.ToString();
				}

				break;

			//En otro caso solo sumamos
			default:
				milisegundos++;
				break;

		}

		switch (segundos) {

			//Lo mismo que en los milisegundos pero aplicado a los segundos
			case 60:
				segundos = 0;
				minutos++;

				lblSegundos->Text = "0" + segundos.ToString();
				lblMinutos->Text = minutos.ToString();

				if (minutos < 10) {
					lblMinutos->Text = "0" + minutos.ToString();
				}
				else {
					lblMinutos->Text = minutos.ToString();
				}

				break;

		}

		if (milisegundos < 10) {
			lblMilisegundos->Text = "0" + milisegundos.ToString();
		}
		else {
			lblMilisegundos->Text = milisegundos.ToString();
		}

	}
private: System::Void btnInicio_Click(System::Object^  sender, System::EventArgs^  e) {
	//Iniciamos
	timer1->Enabled = true;
}
private: System::Void btnPausa_Click(System::Object^  sender, System::EventArgs^  e) {
	//Pausamos
	timer1->Enabled = false;
}
private: System::Void btnReset_Click(System::Object^  sender, System::EventArgs^  e) {
	//Reseteamos
	milisegundos = 0;
	segundos = 0;
	minutos = 0;

	lblMilisegundos->Text = "00";
	lblSegundos->Text = "00";
	lblSegundos->Text = "00";
}
};
}
