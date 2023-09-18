using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epicobox
{
    public partial class Cart : System.Web.UI.Page
    {
        List<Prodotto> carrello;
        decimal totale;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Carrello"] != null)
            {
                carrello = Session["Carrello"] as List<Prodotto>;
                GridViewCarrello.DataSource = carrello;
                GridViewCarrello.DataBind();
                Cart1.Controls.Add(GridViewCarrello);
                foreach (Prodotto prodotto in carrello)
                {
                    totale += prodotto.Prezzo;
                }
                totaleCarrello.InnerHtml = totale.ToString("C");
            }
        }


        protected void btnElimina_Click(object sender, EventArgs e)
        {
            LinkButton btnElimina = (sender as LinkButton);
            int rowIndex = Convert.ToInt32(btnElimina.CommandArgument);
            foreach (Prodotto prodotto in carrello)
            {
                if (prodotto.IdEsperienza == rowIndex)
                {
                    carrello.Remove(prodotto);
                    Session["Carrello"] = carrello;
                    totale -= prodotto.Prezzo;
                    Response.Redirect(Request.RawUrl);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Carrello"] = null;
            totale = 0;
            Response.Redirect(Request.RawUrl);
        }
    }
}