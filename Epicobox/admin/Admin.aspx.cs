using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epicobox
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void aggiungiEsperienza(object sender, EventArgs e)
        {
            string connectionString= ConfigurationManager.ConnectionStrings["ConnectionDB"].ConnectionString.ToString();

            SqlConnection conn=new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "INSERT INTO Esperienze ( @Nome, @Categoria, @Prezzo, @DescrizioneBreve, @DescrizioneLunga, @ImageBox, @Image1, @Image2, @Image3, @Location, @DataInizio, @DataFine ) ";
            cmd.Parameters.AddWithValue("Nome", nomeEsperienza.Text);
            cmd.Parameters.AddWithValue("Categoria", DropDownList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("Prezzo", prezzo.Text);
            cmd.Parameters.AddWithValue("DescrizioneBreve", descrizioneBreve.Text);
            cmd.Parameters.AddWithValue("DescrizioneLunga", descrizioneLunga.Text);
            cmd.Parameters.AddWithValue("ImageBox", fileUpload1.FileName);
            cmd.Parameters.AddWithValue("Image1", fileUpload2.FileName);
            cmd.Parameters.AddWithValue("Image2", fileUpload3.FileName);
            cmd.Parameters.AddWithValue("Image3", fileUpload4.FileName);
            cmd.Parameters.AddWithValue("Image4", "");
            cmd.Parameters.AddWithValue("Location", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("DataInizio", dataInizio.Text);
            cmd.Parameters.AddWithValue("DataFine", dataFine.Text);
            conn.Close();

            nomeEsperienza.Text="";
            DropDownList2.SelectedIndex=1;
            prezzo.Text="";
            descrizioneBreve.Text="";
            descrizioneLunga.Text="";
            DropDownList1.SelectedIndex=1;
            dataInizio.Text="";
            dataFine.Text="";
            

        }


    }
}

