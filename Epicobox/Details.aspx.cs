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
                cmd.Parameters.AddWithValue("id", Request.QueryString["IdEsperienza"]);
                conn.Open();
                SqlDataReader sqlreader;
                sqlreader = cmd.ExecuteReader();
                while (sqlreader.Read())
                {
                    Nome.InnerHtml = sqlreader["Nome"].ToString();
                    Prezzo.InnerHtml = sqlreader["Prezzo"].ToString();
                    DescrizioneLunga.InnerHtml = sqlreader["DescrizioneLunga"].ToString();
                    dataInizio.InnerHtml = sqlreader["DataInizio"].ToString();
                    dataFine.InnerHtml = sqlreader["DataFine"].ToString();
                    location.InnerHtml = sqlreader["Location"].ToString();
                    categoria.InnerHtml = sqlreader["Categoria"].ToString();
                    imageBox.ImageUrl = sqlreader["ImageBox"].ToString();
                    image1.ImageUrl = sqlreader["Image1"].ToString();
                    image2.ImageUrl = sqlreader["Image2"].ToString();
                    image3.ImageUrl = sqlreader["Image3"].ToString();
                }

                conn.Close();
        }
    }
}