using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TpBaseDeDatosGrafica
{
    public partial class TPBDD : Form
    {
        public TPBDD()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'juegosDataSet.AlquileresPersonasJuegos' Puede moverla o quitarla según sea necesario.
            this.alquileresPersonasJuegosTableAdapter.Fill(this.juegosDataSet.AlquileresPersonasJuegos);

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.alquileresPersonasJuegosTableAdapter.Fill(this.juegosDataSet.AlquileresPersonasJuegos);
        }

        private void label52_Click(object sender, EventArgs e)
        {

        }

        private void label49_Click(object sender, EventArgs e)
        {

        }

        private void label47_Click(object sender, EventArgs e)
        {

        }

        private void tabPage3_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(Properties.Settings.Default.JuegosConnectionString);

            try
            {
                SqlCommand cmd = connection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "CrearJuego";
                cmd.Parameters.AddWithValue("@Nombre", textBox5.Text);
                cmd.Parameters.AddWithValue("@Precio", textBox4.Text);
                cmd.Parameters.AddWithValue("@CodigoGenero", textBox3.Text);
                cmd.Parameters.AddWithValue("@CodigoFormato", textBox2.Text);
                cmd.Parameters.AddWithValue("@Cantidad", textBox1.Text);
                connection.Open();
                label2.Text = "Numero de filas insertadas : " + cmd.ExecuteNonQuery().ToString();
                connection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
    }
}
