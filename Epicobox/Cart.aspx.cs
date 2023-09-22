﻿using System;
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

                Repeater1.DataSource = carrello;
                Repeater1.DataBind();
                Cart1.Controls.Add(Repeater1);
                foreach (Prodotto prodotto in carrello)
                {
                    totale += prodotto.Prezzo;
                }
                totaleCarrello.InnerHtml = totale.ToString("C");
                header.Visible = true;
                lblCart.Visible = false;
            }
            else
            {
                header.Visible = false;
                lblCart.Visible = true;
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
                    if (carrello.Count == 0)
                    {
                        Session["Carrello"] = null;
                        Response.Redirect(Request.RawUrl);
                    }
                    else
                    {
                        Response.Redirect(Request.RawUrl);
                    }

                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Carrello"] = null;
            totale = 0;
            Response.Redirect(Request.RawUrl);
        }

        protected void Remove_Click(object sender, EventArgs e)
        {
            LinkButton minus = (sender as LinkButton);
            int rowIndex = Convert.ToInt32(minus.CommandArgument);
            foreach (Prodotto prodotto in carrello)
            {
                if (prodotto.IdEsperienza == rowIndex)
                {
                    decimal prezzoSingolo = prodotto.Prezzo / prodotto.Quantity;
                    if (prodotto.Quantity > 1)
                    {
                        prodotto.Quantity -= 1;
                        prodotto.Prezzo -= prezzoSingolo;
                        Session["Carrello"] = carrello;
                        totale -= prodotto.Prezzo;
                    }
                    else
                    {
                        carrello.Remove(prodotto);
                        Session["Carrello"] = carrello;
                        totale -= prezzoSingolo;
                    }

                    if (carrello.Count == 0)
                    {
                        Session["Carrello"] = null;
                        Response.Redirect(Request.RawUrl);
                    }
                    else
                    {
                        Response.Redirect(Request.RawUrl);
                    }

                }
            }
        }


    

        protected void Add_Click(object sender, EventArgs e)
        {
            LinkButton plus = (sender as LinkButton);
            int rowIndex = Convert.ToInt32(plus.CommandArgument);
            foreach (Prodotto prodotto in carrello)
            {
                if (prodotto.IdEsperienza == rowIndex)
                {
                    decimal prezzoSingolo = prodotto.Prezzo / prodotto.Quantity;
                    prodotto.Quantity += 1;
                    prodotto.Prezzo += prezzoSingolo;
                    Session["Carrello"] = carrello;
                    totale += prezzoSingolo;
                    
                    Response.Redirect(Request.RawUrl);

                }
            }
        }
    }
}