namespace Operaciones_con_Arreglos_Csharp.Forms
{
    partial class FormResultado
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblSuma = new System.Windows.Forms.Label();
            this.lblResta = new System.Windows.Forms.Label();
            this.lblMultiplicacion = new System.Windows.Forms.Label();
            this.lblPromedio = new System.Windows.Forms.Label();
            this.btnFinalizar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblSuma
            // 
            this.lblSuma.AutoSize = true;
            this.lblSuma.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSuma.Location = new System.Drawing.Point(29, 25);
            this.lblSuma.Name = "lblSuma";
            this.lblSuma.Size = new System.Drawing.Size(55, 20);
            this.lblSuma.TabIndex = 0;
            this.lblSuma.Text = "Suma:";
            // 
            // lblResta
            // 
            this.lblResta.AutoSize = true;
            this.lblResta.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblResta.Location = new System.Drawing.Point(29, 65);
            this.lblResta.Name = "lblResta";
            this.lblResta.Size = new System.Drawing.Size(56, 20);
            this.lblResta.TabIndex = 1;
            this.lblResta.Text = "Resta:";
            // 
            // lblMultiplicacion
            // 
            this.lblMultiplicacion.AutoSize = true;
            this.lblMultiplicacion.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMultiplicacion.Location = new System.Drawing.Point(29, 106);
            this.lblMultiplicacion.Name = "lblMultiplicacion";
            this.lblMultiplicacion.Size = new System.Drawing.Size(107, 20);
            this.lblMultiplicacion.TabIndex = 2;
            this.lblMultiplicacion.Text = "Multiplicacion:";
            // 
            // lblPromedio
            // 
            this.lblPromedio.AutoSize = true;
            this.lblPromedio.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPromedio.Location = new System.Drawing.Point(29, 148);
            this.lblPromedio.Name = "lblPromedio";
            this.lblPromedio.Size = new System.Drawing.Size(80, 20);
            this.lblPromedio.TabIndex = 3;
            this.lblPromedio.Text = "Promedio:";
            // 
            // btnFinalizar
            // 
            this.btnFinalizar.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnFinalizar.Location = new System.Drawing.Point(87, 190);
            this.btnFinalizar.Name = "btnFinalizar";
            this.btnFinalizar.Size = new System.Drawing.Size(123, 42);
            this.btnFinalizar.TabIndex = 4;
            this.btnFinalizar.Text = "Finalizar";
            this.btnFinalizar.UseVisualStyleBackColor = true;
            this.btnFinalizar.Click += new System.EventHandler(this.btnFinalizar_Click);
            // 
            // FormResultado
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 261);
            this.Controls.Add(this.btnFinalizar);
            this.Controls.Add(this.lblPromedio);
            this.Controls.Add(this.lblMultiplicacion);
            this.Controls.Add(this.lblResta);
            this.Controls.Add(this.lblSuma);
            this.Name = "FormResultado";
            this.Text = "FormResultado";
            this.Load += new System.EventHandler(this.FormResultado_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblSuma;
        private System.Windows.Forms.Label lblResta;
        private System.Windows.Forms.Label lblMultiplicacion;
        private System.Windows.Forms.Label lblPromedio;
        private System.Windows.Forms.Button btnFinalizar;
    }
}