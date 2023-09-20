<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Epicobox.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/cssDefault.css" rel="stylesheet" />
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
        <div class="text">Scegli la tua Xperience</div>
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
                                            <a href="Details.aspx?IdEsperienza=<%# Item.IdEsperienza %>" class="btn btn-warning">Dettagli <i class="bx bx-detail"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>

    </section>
</asp:Content>
