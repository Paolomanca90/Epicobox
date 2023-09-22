<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Epicobox.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/StyleSheet1cart.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home">
        <div class="text">Riepilogo carrello</div>
        <div class="text text-center fs-3 fst-italic p-4" id="lblCart" runat="server">Il tuo carrello è vuoto</div>
        <div runat="server" id="Cart1" class="w-75 mx-auto p-3">
            <div class="container-fluid" id="header" runat="server">
                <div class="row w-100 border border-secondary bg-white rounded-2">
                    <div class="d-flex   flex-sm-row justify-content-evenly align-items-center  " style="background: lightgrey">
                        <div class="col-2 text-center">
                            <strong>Prodotto</strong>
                        </div>
                        <div class="col-9 d-flex flex-column flex-md-row  justify-content-evenly align-items-center p-2">
                            <div class="col text-center">
                                <strong>Nome Xperience</strong>

                            </div>

                            <div class="col text-center ">
                                <strong>Prezzo</strong>
                            </div>
                            <div class="col text-center ">
                                <strong>Quantità</strong>


                            </div>
                            <div class="col text-center">
                                <strong>Elimina</strong>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <asp:Repeater ID="Repeater1" runat="server" ItemType="Epicobox.Prodotto">

                <ItemTemplate>
                    <div class="container-fluid">
                        <div class="row w-100 border border-secondary bg-white rounded-2">
                            <div class="d-flex   flex-sm-row justify-content-evenly align-items-center  ">
                                <div class="col-2 text-center">
                                    <img id="img" class="w-100 mt-1 mb-1 rounded-2 " src="Content/Img/<%# Item.ImageBox %>" alt="Alternate Text" />
                                </div>
                                <div class="col-9 d-flex flex-column flex-md-row  justify-content-evenly align-items-center p-2">
                                    <div class="col text-center">
                                        <strong><%# Item.Nome %></strong>
                                        <p class="text-secondary"><%# Item.DescrizioneBreve %></p>
                                    </div>

                                    <div class="col text-center ">
                                        <strong><%# string.Format("{0:C}", Item.Prezzo) %></strong>
                                    </div>
                                    <div class="col text-center ">
                                        <asp:LinkButton ID="Remove" runat="server" Text='<i class="bx bx-minus text-secondary"></i>' OnClick="Remove_Click" CommandArgument='<%# Item.IdEsperienza %>' />
                                        <span><%# Item.Quantity %></span>
                                        <asp:LinkButton ID="Add" runat="server" Text='<i class="bx bx-plus text-secondary"></i>' OnClick="Add_Click" CommandArgument='<%# Item.IdEsperienza %>' />
                                    </div>
                                    <div class="col text-center">
                                        <asp:LinkButton ID="btnElimina" runat="server" Text='<i class="bx bx-trash text-danger"></i>' OnClick="btnElimina_Click" CommandArgument='<%# Item.IdEsperienza %>' />
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        
        <div >
            <asp:Label ID="Label1" class="d-block my-5 w-25 fs-6 fw-bold text-center mx-auto   rounded-pill text text-bg-warning" runat="server" Text="Sconto del 30% applicato al carrello"></asp:Label>
        </div>

        <div class="d-flex justify-content-between py-3 text">
            <h5 class="fs-3">Totale <span runat="server" id="totaleCarrello">€ 0,00</span></h5>
            <asp:Button class="btn btn-danger" ID="Button1" runat="server" Text="svuota carrello" OnClick="Button1_Click" />
        </div>
           
    </section>
</asp:Content>
