<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Epicobox.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home">
        <div class="text">Riepilogo carrello</div>
        <div runat="server" id="Cart1" class="w-75 mx-auto p-3">

            <asp:Repeater ID="Repeater1" runat="server" ItemType="Epicobox.Prodotto">
                <ItemTemplate>
                       <div class="container-fluid  ">
                         <div class="row w-100 border border-secondary bg-white rounded-2">
                             <div class="d-flex  flex-column flex-sm-row justify-content-evenly align-items-center  ">
                                <div class="col text-center">
                                      <img class="w-50 rounded-2" src=" <%# Item.ImageBox %>" alt="Alternate Text" />
                                </div>
                         <div class="col text-center">  
                            <strong> <%# Item.Nome %></strong>
                             <p> <%# Item.DescrizioneBreve %></p>    
                         </div>

                         <div class="col text-center ">
                            <strong><%# string.Format("{0:C}", Item.Prezzo) %></strong>
                           </div>
                          <div class="col text-center ">
                           <asp:DropDownList ID="DropDownList2" runat="server">
                             <asp:ListItem Text="1" Value="1" />
                             <asp:ListItem Text="2" Value="2" />
                             <asp:ListItem Text="3" Value="3" />
                             <asp:ListItem Text="4" Value="4"/>
                             <asp:ListItem Text="5" Value="5" />
                          </asp:DropDownList>
                          
                           </div>
                    <div class="col text-center">
                       <asp:LinkButton ID="btnElimina" runat="server" Text='<i class="bx bx-trash text-danger"></i>' OnClick="btnElimina_Click" CommandArgument='<%# Item.IdEsperienza %>' />
                    </div>
                         </div>
                    </div>
                                      
                </div>
                </ItemTemplate>
            </asp:Repeater>
            </div>

        <%--            <asp:GridView class="table table-secondary table-hover rounded" ID="GridViewCarrello" runat="server" AutoGenerateColumns="false" ItemType="Epicobox.Prodotto">
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <strong>Nome Prodotto</strong>
                        </HeaderTemplate>
                        <ItemTemplate>
                           
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
            </asp:GridView>--%>
            <div class="d-flex justify-content-between py-3 text">
                <h5 class="fs-3">Totale <span runat="server" id="totaleCarrello">€ 0,00</span></h5>
                <asp:Button class="btn btn-danger" ID="Button1" runat="server" Text="svuota carrello" OnClick="Button1_Click" />
            </div>
  
    </section>
</asp:Content>
