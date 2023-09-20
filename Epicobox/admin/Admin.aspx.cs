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

            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionDB"].ConnectionString.ToString();
            SqlConnection conn = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand("select IdEsperienza, Nome, DescrizioneBreve, Prezzo, ImageBox, NomeLocation from Esperienze INNER JOIN Location ON Esperienze.Location = Location.IdLocation", conn);
            SqlDataReader sqlDataReader;

            conn.Open();

            List<Prodotto> esperienze = new List<Prodotto>();
            sqlDataReader = cmd.ExecuteReader();

            while (sqlDataReader.Read())
            {
                Prodotto esperienza = new Prodotto();
                esperienza.IdEsperienza = Convert.ToInt32(sqlDataReader["IdEsperienza"]);
                esperienza.Nome = sqlDataReader["Nome"].ToString();
                esperienza.Location = sqlDataReader["NomeLocation"].ToString();
                esperienza.DescrizioneBreve = sqlDataReader["DescrizioneBreve"].ToString();
                esperienza.Prezzo = Convert.ToDecimal(sqlDataReader["Prezzo"]);
                esperienza.ImageBox = sqlDataReader["ImageBox"].ToString();
                esperienze.Add(esperienza);

            }

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

        protected void modifica_Click(object sender, EventArgs e)
        {
            string connection = ConfigurationManager.ConnectionStrings["ConnectionDB"]
          .ConnectionString.ToString();
            SqlConnection conn = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "UPDATE Esperienze SET Nome=@Nome, DescrizioneCorta=@DescrizioneCorta, DescrizioneLunga=@DescrizioneLunga, Prezzo=@prezzo,DataInizio=@DataInizio,DataFine=@DataFine" +
                ",Location=@Location, Categoria=@Categoria, ImageBox=@ImageBox, Image1=@Image1, Image2=@Image2, Image3=@Image3, Image4=@Image4 where Id=@id";
            cmd.Parameters.AddWithValue("Nome", nomeEsperienza.Text);
            cmd.Parameters.AddWithValue("DescrizioneCorta", descrizioneBreve.Text);
            cmd.Parameters.AddWithValue("DescrizioneLunga", descrizioneLunga.Text);
            cmd.Parameters.AddWithValue("Prezzo", prezzo.Text);
            cmd.Parameters.AddWithValue("DataInizio", dataInizio.Text);
            cmd.Parameters.AddWithValue("DataFine", dataFine.Text);
            cmd.Parameters.AddWithValue("Location", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("Categoria", DropDownList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("ImageBox", fileUpload1.FileName);

            string filename2 = "";
            if (fileUpload2.HasFile)
            {
                filename2 = fileUpload2.FileName;
                //se aggiungi un nuovo file te lo salva nella cartella img
                fileUpload2.SaveAs(Server.MapPath($"/Content/img/{fileUpload2.FileName}"));
            }
            cmd.Parameters.AddWithValue("Image1", filename2);
            string filename3 = "";
            if (fileUpload3.HasFile)
            {
                filename3 = fileUpload3.FileName;
                fileUpload3.SaveAs(Server.MapPath($"/Content/img/{fileUpload3.FileName}"));
            }
            cmd.Parameters.AddWithValue("Image2", filename3);
            string filename4 = "";
            if (fileUpload4.HasFile)
            {
                filename4 = fileUpload4.FileName;
                fileUpload4.SaveAs(Server.MapPath($"/Content/img/{fileUpload4.FileName}"));
            }
            cmd.Parameters.AddWithValue("Image3", filename4);

            string filename5 = "";
            if (fileUpload5.HasFile)
            {
                filename5 = fileUpload5.FileName;
                fileUpload5.SaveAs(Server.MapPath($"/Content/img/{fileUpload5.FileName}"));
            }
            cmd.Parameters.AddWithValue("Image4", filename5);

            cmd.Parameters.AddWithValue("id", Request.QueryString["IdProdotto"]);


            conn.Open();

            cmd.ExecuteNonQuery();

            conn.Close();
           
        }

      

        protected void elimina_Click(object sender, EventArgs e)
        {
            string connection = ConfigurationManager.ConnectionStrings["ConnectionDB"]
           .ConnectionString.ToString();
            SqlConnection conn = new SqlConnection(connection);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "DELETE FROM Esperienze where Id=@id";
            cmd.Parameters.AddWithValue("id", Request.QueryString["IdProdotto"]);

            conn.Open();

            cmd.ExecuteNonQuery();

            conn.Close();
         

        }
    }
}

