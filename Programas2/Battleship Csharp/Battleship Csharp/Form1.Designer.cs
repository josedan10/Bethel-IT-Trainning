namespace Battleship_Csharp
{
    partial class Form1
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.lblNavesRestantes = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.lblDisparosDisponibles = new System.Windows.Forms.Label();
            this.Inicio = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Forte", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(180, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(278, 41);
            this.label1.TabIndex = 0;
            this.label1.Text = "BATTLESHIP";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Showcard Gothic", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(70, 74);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(171, 20);
            this.label2.TabIndex = 1;
            this.label2.Text = "Naves restantes:";
            // 
            // lblNavesRestantes
            // 
            this.lblNavesRestantes.AutoSize = true;
            this.lblNavesRestantes.Font = new System.Drawing.Font("Showcard Gothic", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNavesRestantes.Location = new System.Drawing.Point(238, 74);
            this.lblNavesRestantes.Name = "lblNavesRestantes";
            this.lblNavesRestantes.Size = new System.Drawing.Size(27, 20);
            this.lblNavesRestantes.TabIndex = 2;
            this.lblNavesRestantes.Text = "10";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Showcard Gothic", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(303, 74);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(222, 20);
            this.label3.TabIndex = 3;
            this.label3.Text = "Disparos Disponibles:";
            // 
            // lblDisparosDisponibles
            // 
            this.lblDisparosDisponibles.AutoSize = true;
            this.lblDisparosDisponibles.Font = new System.Drawing.Font("Showcard Gothic", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDisparosDisponibles.Location = new System.Drawing.Point(521, 74);
            this.lblDisparosDisponibles.Name = "lblDisparosDisponibles";
            this.lblDisparosDisponibles.Size = new System.Drawing.Size(27, 20);
            this.lblDisparosDisponibles.TabIndex = 4;
            this.lblDisparosDisponibles.Text = "20";
            // 
            // Inicio
            // 
            this.Inicio.Font = new System.Drawing.Font("Showcard Gothic", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Inicio.Location = new System.Drawing.Point(230, 501);
            this.Inicio.Name = "Inicio";
            this.Inicio.Size = new System.Drawing.Size(164, 40);
            this.Inicio.TabIndex = 5;
            this.Inicio.Text = "¡COMENZAR!";
            this.Inicio.UseVisualStyleBackColor = true;
            this.Inicio.Click += new System.EventHandler(this.button1_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Showcard Gothic", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.label4.Location = new System.Drawing.Point(415, 471);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(110, 20);
            this.label4.TabIndex = 6;
            this.label4.Text = "F: Fallaste";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Showcard Gothic", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(45, 471);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(180, 20);
            this.label5.TabIndex = 7;
            this.label5.Text = "X: Nave destruida";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(608, 565);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.Inicio);
            this.Controls.Add(this.lblDisparosDisponibles);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.lblNavesRestantes);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblNavesRestantes;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label lblDisparosDisponibles;
        private System.Windows.Forms.Button Inicio;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
    }
}

