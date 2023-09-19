﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Epicobox.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home">
        <div class="text">Riepilogo carrello</div>
        <div runat="server" id="Cart1" class="w-75 mx-auto p-4">
            <asp:GridView class="table table-secondary table-hover rounded" ID="GridViewCarrello" runat="server" AutoGenerateColumns="false" ItemType="Epicobox.Prodotto">
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <strong>Nome Prodotto</strong>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <%# Item.Nome %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <strong>Descrizione</strong>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <%# Item.DescrizioneBreve %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <strong>Prezzo</strong>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <%# string.Format("{0:C}", Item.Prezzo) %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <strong>Elimina</strong>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="btnElimina" runat="server" Text='<i class="bx bx-trash text-danger"></i>' OnClick="btnElimina_Click" CommandArgument='<%# Item.IdEsperienza %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <div class="d-flex justify-content-between py-3 text">
                <h5 class="fs-3">Totale <span runat="server" id="totaleCarrello">€ 0,00</span></h5>
                <asp:Button class="btn btn-danger" ID="Button1" runat="server" Text="svuota carrello" OnClick="Button1_Click" />
            </div>
        </div>
    </section>
</asp:Content>
