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
    public partial class Details : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

                string connection = ConfigurationManager.ConnectionStrings["ConnectionDB"]
                .ConnectionString.ToString();

                SqlConnection conn = new SqlConnection(connection);
                SqlCommand cmd = new SqlCommand("select * from Esperienze where IdEsperienza=@id", conn);
                cmd.Parameters.AddWithValue("id", Request.QueryString["IdProdotto"]);
                conn.Open();
                SqlDataReader sqlreader;
                sqlreader = cmd.ExecuteReader();
                while (sqlreader.Read())
                {
                    Nome.InnerHtml = $"{sqlreader["Nome"]}";
                    Prezzo.InnerHtml = $"{sqlreader["Prezzo"]}";
                    DescrizioneLunga.InnerHtml = $"{sqlreader["DescrizioneLunga"]}";
                    dataInizio.InnerHtml = $"{sqlreader["DataInizio"]}";
                    dataFine.InnerHtml = $"{sqlreader["DataFine"]}";
                    location.InnerHtml = $"{sqlreader["Location"]}";
                    categoria.InnerHtml = $"{sqlreader["Categoria"]}";
                    imageBox.ImageUrl = $"{sqlreader["ImageBox"]}";
                    image1.ImageUrl = $"{sqlreader["Image1"]}";
                    image2.ImageUrl = $"{sqlreader["Image2"]}";
                    image3.ImageUrl = $"{sqlreader["Image3"]}";
            }

            conn.Close();
            




        }
    }
}