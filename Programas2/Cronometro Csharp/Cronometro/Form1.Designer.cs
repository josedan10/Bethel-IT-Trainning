namespace Cronometro
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
            this.components = new System.ComponentModel.Container();
            this.btnIniciar = new System.Windows.Forms.Button();
            this.btnPausa = new System.Windows.Forms.Button();
            this.btnReset = new System.Windows.Forms.Button();
            this.lblMinutos = new System.Windows.Forms.Label();
            this.lblSegundos = new System.Windows.Forms.Label();
            this.lblMilisegundos = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.SuspendLayout();
            // 
            // btnIniciar
            // 
            this.btnIniciar.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnIniciar.Location = new System.Drawing.Point(28, 205);
            this.btnIniciar.Name = "btnIniciar";
            this.btnIniciar.Size = new System.Drawing.Size(108, 44);
            this.btnIniciar.TabIndex = 0;
            this.btnIniciar.Text = "INICIAR";
            this.btnIniciar.UseVisualStyleBackColor = true;
            this.btnIniciar.Click += new System.EventHandler(this.btnIniciar_Click);
            // 
            // btnPausa
            // 
            this.btnPausa.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPausa.Location = new System.Drawing.Point(164, 205);
            this.btnPausa.Name = "btnPausa";
            this.btnPausa.Size = new System.Drawing.Size(108, 44);
            this.btnPausa.TabIndex = 1;
            this.btnPausa.Text = "PAUSA";
            this.btnPausa.UseVisualStyleBackColor = true;
            this.btnPausa.Click += new System.EventHandler(this.btnPausa_Click);
            // 
            // btnReset
            // 
            this.btnReset.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnReset.Location = new System.Drawing.Point(293, 205);
            this.btnReset.Name = "btnReset";
            this.btnReset.Size = new System.Drawing.Size(108, 44);
            this.btnReset.TabIndex = 2;
            this.btnReset.Text = "RESET";
            this.btnReset.UseVisualStyleBackColor = true;
            this.btnReset.Click += new System.EventHandler(this.btnReset_Click);
            // 
            // lblMinutos
            // 
            this.lblMinutos.AutoSize = true;
            this.lblMinutos.Font = new System.Drawing.Font("Microsoft Sans Serif", 48F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMinutos.Location = new System.Drawing.Point(30, 58);
            this.lblMinutos.Name = "lblMinutos";
            this.lblMinutos.Size = new System.Drawing.Size(106, 73);
            this.lblMinutos.TabIndex = 3;
            this.lblMinutos.Text = "00";
            // 
            // lblSegundos
            // 
            this.lblSegundos.AutoSize = true;
            this.lblSegundos.Font = new System.Drawing.Font("Microsoft Sans Serif", 48F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSegundos.Location = new System.Drawing.Point(166, 58);
            this.lblSegundos.Name = "lblSegundos";
            this.lblSegundos.Size = new System.Drawing.Size(106, 73);
            this.lblSegundos.TabIndex = 4;
            this.lblSegundos.Text = "00";
            // 
            // lblMilisegundos
            // 
            this.lblMilisegundos.AutoSize = true;
            this.lblMilisegundos.Font = new System.Drawing.Font("Microsoft Sans Serif", 48F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMilisegundos.Location = new System.Drawing.Point(295, 58);
            this.lblMilisegundos.Name = "lblMilisegundos";
            this.lblMilisegundos.Size = new System.Drawing.Size(106, 73);
            this.lblMilisegundos.TabIndex = 5;
            this.lblMilisegundos.Text = "00";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 48F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(257, 58);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(51, 73);
            this.label4.TabIndex = 6;
            this.label4.Text = ":";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 48F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(123, 58);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(51, 73);
            this.label5.TabIndex = 7;
            this.label5.Text = ":";
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 10000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(437, 261);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.lblMilisegundos);
            this.Controls.Add(this.lblSegundos);
            this.Controls.Add(this.lblMinutos);
            this.Controls.Add(this.btnReset);
            this.Controls.Add(this.btnPausa);
            this.Controls.Add(this.btnIniciar);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnIniciar;
        private System.Windows.Forms.Button btnPausa;
        private System.Windows.Forms.Button btnReset;
        private System.Windows.Forms.Label lblMinutos;
        private System.Windows.Forms.Label lblSegundos;
        private System.Windows.Forms.Label lblMilisegundos;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Timer timer1;
    }
}

