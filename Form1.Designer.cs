namespace TpBaseDeDatosGrafica
{
    partial class TPBDD
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tabControl2 = new System.Windows.Forms.TabControl();
            this.tabPage5 = new System.Windows.Forms.TabPage();
            this.button1 = new System.Windows.Forms.Button();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.tabControl4 = new System.Windows.Forms.TabControl();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.label47 = new System.Windows.Forms.Label();
            this.groupBox10 = new System.Windows.Forms.GroupBox();
            this.label49 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label50 = new System.Windows.Forms.Label();
            this.label51 = new System.Windows.Forms.Label();
            this.label52 = new System.Windows.Forms.Label();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.textBox5 = new System.Windows.Forms.TextBox();
            this.toolBarArray1 = new Microsoft.VisualBasic.Compatibility.VB6.ToolBarArray(this.components);
            this.juegosDataSet = new TpBaseDeDatosGrafica.JuegosDataSet();
            this.alquileresPersonasJuegosBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.alquileresPersonasJuegosTableAdapter = new TpBaseDeDatosGrafica.JuegosDataSetTableAdapters.AlquileresPersonasJuegosTableAdapter();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.nombreDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.apellidoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.emailDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.codigoSocioDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.codigoAlquilerDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nombreJuegoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fechaRetiroDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fechaDevolucionDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.costoPorDiaDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.costoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.estadoPagoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fechaPagoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.deudaTotalDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.button2 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabControl2.SuspendLayout();
            this.tabPage5.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.tabControl4.SuspendLayout();
            this.tabPage3.SuspendLayout();
            this.groupBox10.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.toolBarArray1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.juegosDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alquileresPersonasJuegosBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(13, 13);
            this.tabControl1.Margin = new System.Windows.Forms.Padding(4);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(1202, 674);
            this.tabControl1.TabIndex = 1;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.tabControl2);
            this.tabPage1.Location = new System.Drawing.Point(4, 25);
            this.tabPage1.Margin = new System.Windows.Forms.Padding(4);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(4);
            this.tabPage1.Size = new System.Drawing.Size(1194, 645);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Vista";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // tabControl2
            // 
            this.tabControl2.Controls.Add(this.tabPage5);
            this.tabControl2.Location = new System.Drawing.Point(4, 7);
            this.tabControl2.Margin = new System.Windows.Forms.Padding(4);
            this.tabControl2.Name = "tabControl2";
            this.tabControl2.SelectedIndex = 0;
            this.tabControl2.Size = new System.Drawing.Size(1186, 638);
            this.tabControl2.TabIndex = 0;
            // 
            // tabPage5
            // 
            this.tabPage5.Controls.Add(this.dataGridView1);
            this.tabPage5.Controls.Add(this.button1);
            this.tabPage5.Location = new System.Drawing.Point(4, 25);
            this.tabPage5.Margin = new System.Windows.Forms.Padding(4);
            this.tabPage5.Name = "tabPage5";
            this.tabPage5.Padding = new System.Windows.Forms.Padding(4);
            this.tabPage5.Size = new System.Drawing.Size(1178, 609);
            this.tabPage5.TabIndex = 0;
            this.tabPage5.Text = "Alquileres";
            this.tabPage5.UseVisualStyleBackColor = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(4, 8);
            this.button1.Margin = new System.Windows.Forms.Padding(4);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(204, 28);
            this.button1.TabIndex = 3;
            this.button1.Text = "Obtener Alquileres";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.tabControl4);
            this.tabPage2.Location = new System.Drawing.Point(4, 25);
            this.tabPage2.Margin = new System.Windows.Forms.Padding(4);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(4);
            this.tabPage2.Size = new System.Drawing.Size(1194, 645);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Cargar Juego";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // tabControl4
            // 
            this.tabControl4.Controls.Add(this.tabPage3);
            this.tabControl4.Location = new System.Drawing.Point(8, 8);
            this.tabControl4.Margin = new System.Windows.Forms.Padding(4);
            this.tabControl4.Name = "tabControl4";
            this.tabControl4.SelectedIndex = 0;
            this.tabControl4.Size = new System.Drawing.Size(1186, 517);
            this.tabControl4.TabIndex = 1;
            // 
            // tabPage3
            // 
            this.tabPage3.Controls.Add(this.label2);
            this.tabPage3.Controls.Add(this.label47);
            this.tabPage3.Controls.Add(this.groupBox10);
            this.tabPage3.Location = new System.Drawing.Point(4, 25);
            this.tabPage3.Margin = new System.Windows.Forms.Padding(4);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(4);
            this.tabPage3.Size = new System.Drawing.Size(1178, 488);
            this.tabPage3.TabIndex = 0;
            this.tabPage3.Text = "Nuevo Juego";
            this.tabPage3.UseVisualStyleBackColor = true;
            this.tabPage3.Click += new System.EventHandler(this.tabPage3_Click);
            // 
            // label47
            // 
            this.label47.AutoSize = true;
            this.label47.Location = new System.Drawing.Point(21, 143);
            this.label47.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label47.Name = "label47";
            this.label47.Size = new System.Drawing.Size(72, 17);
            this.label47.TabIndex = 1;
            this.label47.Text = "Resultado";
            this.label47.Click += new System.EventHandler(this.label47_Click);
            // 
            // groupBox10
            // 
            this.groupBox10.Controls.Add(this.textBox1);
            this.groupBox10.Controls.Add(this.label1);
            this.groupBox10.Controls.Add(this.button2);
            this.groupBox10.Controls.Add(this.label49);
            this.groupBox10.Controls.Add(this.textBox2);
            this.groupBox10.Controls.Add(this.label50);
            this.groupBox10.Controls.Add(this.label51);
            this.groupBox10.Controls.Add(this.label52);
            this.groupBox10.Controls.Add(this.textBox3);
            this.groupBox10.Controls.Add(this.textBox4);
            this.groupBox10.Controls.Add(this.textBox5);
            this.groupBox10.ImeMode = System.Windows.Forms.ImeMode.On;
            this.groupBox10.Location = new System.Drawing.Point(8, 25);
            this.groupBox10.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox10.Name = "groupBox10";
            this.groupBox10.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox10.Size = new System.Drawing.Size(1166, 102);
            this.groupBox10.TabIndex = 0;
            this.groupBox10.TabStop = false;
            this.groupBox10.Text = "Datos de entrada";
            // 
            // label49
            // 
            this.label49.AutoSize = true;
            this.label49.Location = new System.Drawing.Point(577, 36);
            this.label49.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label49.Name = "label49";
            this.label49.Size = new System.Drawing.Size(104, 17);
            this.label49.TabIndex = 9;
            this.label49.Text = "CodigoFormato";
            this.label49.Click += new System.EventHandler(this.label49_Click);
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(689, 33);
            this.textBox2.Margin = new System.Windows.Forms.Padding(4);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(132, 22);
            this.textBox2.TabIndex = 5;
            // 
            // label50
            // 
            this.label50.AutoSize = true;
            this.label50.Location = new System.Drawing.Point(390, 36);
            this.label50.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label50.Name = "label50";
            this.label50.Size = new System.Drawing.Size(85, 17);
            this.label50.TabIndex = 1;
            this.label50.Text = "Cod Genero";
            // 
            // label51
            // 
            this.label51.AutoSize = true;
            this.label51.Location = new System.Drawing.Point(227, 33);
            this.label51.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label51.Name = "label51";
            this.label51.Size = new System.Drawing.Size(48, 17);
            this.label51.TabIndex = 4;
            this.label51.Text = "Precio";
            // 
            // label52
            // 
            this.label52.AutoSize = true;
            this.label52.Location = new System.Drawing.Point(13, 33);
            this.label52.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label52.Name = "label52";
            this.label52.Size = new System.Drawing.Size(58, 17);
            this.label52.TabIndex = 3;
            this.label52.Text = "Nombre";
            this.label52.Click += new System.EventHandler(this.label52_Click);
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(483, 33);
            this.textBox3.Margin = new System.Windows.Forms.Padding(4);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(78, 22);
            this.textBox3.TabIndex = 2;
            // 
            // textBox4
            // 
            this.textBox4.Location = new System.Drawing.Point(287, 33);
            this.textBox4.Margin = new System.Windows.Forms.Padding(4);
            this.textBox4.Name = "textBox4";
            this.textBox4.Size = new System.Drawing.Size(91, 22);
            this.textBox4.TabIndex = 1;
            // 
            // textBox5
            // 
            this.textBox5.Location = new System.Drawing.Point(83, 33);
            this.textBox5.Margin = new System.Windows.Forms.Padding(4);
            this.textBox5.Name = "textBox5";
            this.textBox5.Size = new System.Drawing.Size(132, 22);
            this.textBox5.TabIndex = 0;
            this.textBox5.TextChanged += new System.EventHandler(this.textBox5_TextChanged);
            // 
            // juegosDataSet
            // 
            this.juegosDataSet.DataSetName = "JuegosDataSet";
            this.juegosDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // alquileresPersonasJuegosBindingSource
            // 
            this.alquileresPersonasJuegosBindingSource.DataMember = "AlquileresPersonasJuegos";
            this.alquileresPersonasJuegosBindingSource.DataSource = this.juegosDataSet;
            // 
            // alquileresPersonasJuegosTableAdapter
            // 
            this.alquileresPersonasJuegosTableAdapter.ClearBeforeFill = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.nombreDataGridViewTextBoxColumn,
            this.apellidoDataGridViewTextBoxColumn,
            this.emailDataGridViewTextBoxColumn,
            this.codigoSocioDataGridViewTextBoxColumn,
            this.codigoAlquilerDataGridViewTextBoxColumn,
            this.nombreJuegoDataGridViewTextBoxColumn,
            this.fechaRetiroDataGridViewTextBoxColumn,
            this.fechaDevolucionDataGridViewTextBoxColumn,
            this.costoPorDiaDataGridViewTextBoxColumn,
            this.costoDataGridViewTextBoxColumn,
            this.estadoPagoDataGridViewTextBoxColumn,
            this.fechaPagoDataGridViewTextBoxColumn,
            this.deudaTotalDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.alquileresPersonasJuegosBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(4, 43);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(1178, 498);
            this.dataGridView1.TabIndex = 4;
            // 
            // nombreDataGridViewTextBoxColumn
            // 
            this.nombreDataGridViewTextBoxColumn.DataPropertyName = "Nombre";
            this.nombreDataGridViewTextBoxColumn.HeaderText = "Nombre";
            this.nombreDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.nombreDataGridViewTextBoxColumn.Name = "nombreDataGridViewTextBoxColumn";
            this.nombreDataGridViewTextBoxColumn.ReadOnly = true;
            this.nombreDataGridViewTextBoxColumn.Width = 125;
            // 
            // apellidoDataGridViewTextBoxColumn
            // 
            this.apellidoDataGridViewTextBoxColumn.DataPropertyName = "Apellido";
            this.apellidoDataGridViewTextBoxColumn.HeaderText = "Apellido";
            this.apellidoDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.apellidoDataGridViewTextBoxColumn.Name = "apellidoDataGridViewTextBoxColumn";
            this.apellidoDataGridViewTextBoxColumn.ReadOnly = true;
            this.apellidoDataGridViewTextBoxColumn.Width = 125;
            // 
            // emailDataGridViewTextBoxColumn
            // 
            this.emailDataGridViewTextBoxColumn.DataPropertyName = "Email";
            this.emailDataGridViewTextBoxColumn.HeaderText = "Email";
            this.emailDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.emailDataGridViewTextBoxColumn.Name = "emailDataGridViewTextBoxColumn";
            this.emailDataGridViewTextBoxColumn.ReadOnly = true;
            this.emailDataGridViewTextBoxColumn.Width = 125;
            // 
            // codigoSocioDataGridViewTextBoxColumn
            // 
            this.codigoSocioDataGridViewTextBoxColumn.DataPropertyName = "CodigoSocio";
            this.codigoSocioDataGridViewTextBoxColumn.HeaderText = "CodigoSocio";
            this.codigoSocioDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.codigoSocioDataGridViewTextBoxColumn.Name = "codigoSocioDataGridViewTextBoxColumn";
            this.codigoSocioDataGridViewTextBoxColumn.ReadOnly = true;
            this.codigoSocioDataGridViewTextBoxColumn.Width = 125;
            // 
            // codigoAlquilerDataGridViewTextBoxColumn
            // 
            this.codigoAlquilerDataGridViewTextBoxColumn.DataPropertyName = "CodigoAlquiler";
            this.codigoAlquilerDataGridViewTextBoxColumn.HeaderText = "CodigoAlquiler";
            this.codigoAlquilerDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.codigoAlquilerDataGridViewTextBoxColumn.Name = "codigoAlquilerDataGridViewTextBoxColumn";
            this.codigoAlquilerDataGridViewTextBoxColumn.ReadOnly = true;
            this.codigoAlquilerDataGridViewTextBoxColumn.Width = 125;
            // 
            // nombreJuegoDataGridViewTextBoxColumn
            // 
            this.nombreJuegoDataGridViewTextBoxColumn.DataPropertyName = "Nombre juego";
            this.nombreJuegoDataGridViewTextBoxColumn.HeaderText = "Nombre juego";
            this.nombreJuegoDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.nombreJuegoDataGridViewTextBoxColumn.Name = "nombreJuegoDataGridViewTextBoxColumn";
            this.nombreJuegoDataGridViewTextBoxColumn.ReadOnly = true;
            this.nombreJuegoDataGridViewTextBoxColumn.Width = 125;
            // 
            // fechaRetiroDataGridViewTextBoxColumn
            // 
            this.fechaRetiroDataGridViewTextBoxColumn.DataPropertyName = "FechaRetiro";
            this.fechaRetiroDataGridViewTextBoxColumn.HeaderText = "FechaRetiro";
            this.fechaRetiroDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.fechaRetiroDataGridViewTextBoxColumn.Name = "fechaRetiroDataGridViewTextBoxColumn";
            this.fechaRetiroDataGridViewTextBoxColumn.ReadOnly = true;
            this.fechaRetiroDataGridViewTextBoxColumn.Width = 125;
            // 
            // fechaDevolucionDataGridViewTextBoxColumn
            // 
            this.fechaDevolucionDataGridViewTextBoxColumn.DataPropertyName = "FechaDevolucion";
            this.fechaDevolucionDataGridViewTextBoxColumn.HeaderText = "FechaDevolucion";
            this.fechaDevolucionDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.fechaDevolucionDataGridViewTextBoxColumn.Name = "fechaDevolucionDataGridViewTextBoxColumn";
            this.fechaDevolucionDataGridViewTextBoxColumn.ReadOnly = true;
            this.fechaDevolucionDataGridViewTextBoxColumn.Width = 125;
            // 
            // costoPorDiaDataGridViewTextBoxColumn
            // 
            this.costoPorDiaDataGridViewTextBoxColumn.DataPropertyName = "CostoPorDia";
            this.costoPorDiaDataGridViewTextBoxColumn.HeaderText = "CostoPorDia";
            this.costoPorDiaDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.costoPorDiaDataGridViewTextBoxColumn.Name = "costoPorDiaDataGridViewTextBoxColumn";
            this.costoPorDiaDataGridViewTextBoxColumn.ReadOnly = true;
            this.costoPorDiaDataGridViewTextBoxColumn.Width = 125;
            // 
            // costoDataGridViewTextBoxColumn
            // 
            this.costoDataGridViewTextBoxColumn.DataPropertyName = "Costo";
            this.costoDataGridViewTextBoxColumn.HeaderText = "Costo";
            this.costoDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.costoDataGridViewTextBoxColumn.Name = "costoDataGridViewTextBoxColumn";
            this.costoDataGridViewTextBoxColumn.ReadOnly = true;
            this.costoDataGridViewTextBoxColumn.Width = 125;
            // 
            // estadoPagoDataGridViewTextBoxColumn
            // 
            this.estadoPagoDataGridViewTextBoxColumn.DataPropertyName = "EstadoPago";
            this.estadoPagoDataGridViewTextBoxColumn.HeaderText = "EstadoPago";
            this.estadoPagoDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.estadoPagoDataGridViewTextBoxColumn.Name = "estadoPagoDataGridViewTextBoxColumn";
            this.estadoPagoDataGridViewTextBoxColumn.ReadOnly = true;
            this.estadoPagoDataGridViewTextBoxColumn.Width = 125;
            // 
            // fechaPagoDataGridViewTextBoxColumn
            // 
            this.fechaPagoDataGridViewTextBoxColumn.DataPropertyName = "FechaPago";
            this.fechaPagoDataGridViewTextBoxColumn.HeaderText = "FechaPago";
            this.fechaPagoDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.fechaPagoDataGridViewTextBoxColumn.Name = "fechaPagoDataGridViewTextBoxColumn";
            this.fechaPagoDataGridViewTextBoxColumn.ReadOnly = true;
            this.fechaPagoDataGridViewTextBoxColumn.Width = 125;
            // 
            // deudaTotalDataGridViewTextBoxColumn
            // 
            this.deudaTotalDataGridViewTextBoxColumn.DataPropertyName = "deuda total";
            this.deudaTotalDataGridViewTextBoxColumn.HeaderText = "deuda total";
            this.deudaTotalDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.deudaTotalDataGridViewTextBoxColumn.Name = "deudaTotalDataGridViewTextBoxColumn";
            this.deudaTotalDataGridViewTextBoxColumn.ReadOnly = true;
            this.deudaTotalDataGridViewTextBoxColumn.Width = 125;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(16, 66);
            this.button2.Margin = new System.Windows.Forms.Padding(4);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(204, 28);
            this.button2.TabIndex = 4;
            this.button2.Text = "CargarJuego";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(849, 36);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(64, 17);
            this.label1.TabIndex = 10;
            this.label1.Text = "Cantidad";
            // 
            // textBox1
            // 
            this.textBox1.ForeColor = System.Drawing.Color.Black;
            this.textBox1.Location = new System.Drawing.Point(921, 36);
            this.textBox1.Margin = new System.Windows.Forms.Padding(4);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(132, 22);
            this.textBox1.TabIndex = 6;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(101, 143);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(0, 17);
            this.label2.TabIndex = 2;
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // TPBDD
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1228, 700);
            this.Controls.Add(this.tabControl1);
            this.Name = "TPBDD";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabControl2.ResumeLayout(false);
            this.tabPage5.ResumeLayout(false);
            this.tabPage2.ResumeLayout(false);
            this.tabControl4.ResumeLayout(false);
            this.tabPage3.ResumeLayout(false);
            this.tabPage3.PerformLayout();
            this.groupBox10.ResumeLayout(false);
            this.groupBox10.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.toolBarArray1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.juegosDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alquileresPersonasJuegosBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabControl tabControl2;
        private System.Windows.Forms.TabPage tabPage5;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.TabControl tabControl4;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.Label label47;
        private System.Windows.Forms.GroupBox groupBox10;
        private System.Windows.Forms.Label label49;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label50;
        private System.Windows.Forms.Label label51;
        private System.Windows.Forms.Label label52;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.TextBox textBox4;
        private System.Windows.Forms.TextBox textBox5;
        private Microsoft.VisualBasic.Compatibility.VB6.ToolBarArray toolBarArray1;
        private JuegosDataSet juegosDataSet;
        private System.Windows.Forms.BindingSource alquileresPersonasJuegosBindingSource;
        private JuegosDataSetTableAdapters.AlquileresPersonasJuegosTableAdapter alquileresPersonasJuegosTableAdapter;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn nombreDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn apellidoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn emailDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn codigoSocioDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn codigoAlquilerDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nombreJuegoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn fechaRetiroDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn fechaDevolucionDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn costoPorDiaDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn costoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn estadoPagoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn fechaPagoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn deudaTotalDataGridViewTextBoxColumn;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
    }
}

