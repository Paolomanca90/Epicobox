<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Epicobox.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div runat="server" id="Cart" class="w-75 mx-auto p-4">
        <h2>Riepilogo del carrello</h2>
        <asp:GridView class="table table-success" ID="GridViewCarrello" runat="server" AutoGenerateColumns="false" ItemType="Epicobox.Prodotto">
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
                        <asp:LinkButton ID="btnElimina" runat="server" Text='<i class="bi bi-trash-fill text-danger"></i>' onclick="btnElimina_Click" CommandArgument='<%# Item.Id %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <div class="d-flex justify-content-between py-3">
            <h4>Totale <span runat="server" id="totaleCarrello">0,00 €</span></h4>
            <asp:Button class="btn btn-outline-secondary" ID="Button1" runat="server" Text="svuota carrello" OnClick="Button1_Click" />
        </div>      
    </div>
</asp:Content>
