<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Epicobox.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/cssDefault.css" rel="stylesheet" />
    <link href="Content/footer.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <section class="home">
        <section class="banner mt-2">
            <video src="Content/Video/smoke.mp4" autoplay muted ></video>
            <h4>
                <span>G</span>
                <span>I</span>
                <span>F</span>
                <span>T</span>
                <span>-</span>
                <span>X</span>
            </h4>

        </section>
        <hr class="mt-3" />
             <div class="my-5 container text-center text fs-4"><p>
     Esplora il mondo con Gift-X e immergiti in esperienze straordinarie in Italia, Europa e oltre. <br />Scopri avventure culinarie, culturali e di intrattenimento senza confini. <br /> Ogni giorno è un viaggio da vivere con passione e scoperta su Gift-X, dove le esperienze diventano ricordi indimenticabili.
 </p></div>
       <hr />
        <div class="text text-center fs-1">Scegli la tua Xperience</div>
        <div class="container-fluid">
            <div class="row gap-2 justify-content-evenly ">
                <asp:Repeater ID="Repeater1" runat="server" ItemType="Epicobox.Prodotto">
                    <ItemTemplate>
                        <div class="col-3">
                            <div class="wrapper">
                                <div class="card">
                                    <div class="poster">
                                        <img src="Content/Img/<%# Item.ImageBox%>" alt="Experience Pic" />
                                    </div>
                                    <div class="details">
                                        <h1><%#  Item.Nome %></h1>
                                        <h2><%#  Item.Location %></h2>

                                        <p class="desc"><%#  Item.DescrizioneBreve%></p>
                                        <div class="cast">
                                            <h3>Prezzo</h3>
                                            <div>
                                                <h3><%# string.Format("{0:C}", Item.Prezzo) %></h3>
                                            </div>
                                        </div>
                                        <div>
                                            <a href="Details.aspx?IdEsperienza=<%# Item.IdEsperienza %>" class="btn btn-warning me-3">Dettagli <i class="bx bx-detail"></i></a>


                                            <%if ((string)Session["User"]  == "Admin"){%>
                                                <a href="admin/Admin.aspx?IdEsperienza=<%# Item.IdEsperienza %>" class="btn btn-danger" id="btnAdmin">Gestisci <i class="bx bx-key"></i></a>
                                            <%} %>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>



            <footer id="footerr"  class="footer-distributed">
  <div class="footer-left">
    <h3>Gift<span>-X</span></h3>

    <p class="footer-links">
      <a href="#" class="link-1">Home</a>

      <a href="#">Blog</a>

      <a href="#">Pricing</a>

      <a href="#">About</a>

      <a href="#">Faq</a>

      <a href="#">Contact</a>
    </p>

    <p class="footer-company-name">Gift-X © 2023</p>
  </div>

  <div class="footer-center">
    <div>
      <i class="fa fa-map-marker"></i>
      <p><span>Sottoscala, 4 Private Drive</span> Little Whinging, Surrey</p>
    </div>

    <div>
      <i class="fa fa-phone"></i>
      <p>+39 333.1112223</p>
    </div>

    <div>
      <i class="fa fa-envelope"></i>
      <p><a href="mailto:support@company.com">support@giftx.com</a></p>
    </div>
  </div>

  <div class="footer-right">
    <p class="footer-company-about">
      <span>Chi siamo</span>
      Lavoro di gruppo Buildweek Epicode 09/23.
      <hr>
      Gruppo 2 Paolo Manca, Federico Maso, Erica Diana, Raffaele Iannello, Simone Potenza 
    </p>
  </div>
</footer>
    </section>
</asp:Content>
