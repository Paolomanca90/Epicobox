<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Epicobox.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
     <div id="login" class="pt-5 pb-3" runat="server">
        <div class="border border-2 border-success rounded-2 p-3 w-50 mx-auto" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Inserisci il tuo username" class="d-block fw-bold fs-5 pb-1"></asp:Label>
            <asp:TextBox ID="Username" runat="server" placeholder="Username" class="w-100 p-1"></asp:TextBox>
            <asp:RequiredFieldValidator class="d-block py-1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username richiesto" ControlToValidate="Username" ForeColor="DarkRed"></asp:RequiredFieldValidator>
            <asp:Label ID="Label2" runat="server" Text="Inserisci la tua password" class="d-block fw-bold fs-5 pb-1"></asp:Label>
            <asp:TextBox ID="Password" runat="server" placeholder="Password" TextMode="Password" class="w-100 p-1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password richiesta" ControlToValidate="Password" class="d-block py-1" ForeColor="DarkRed"></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" runat="server" Text="Accedi" onclick="Button1_Click" class="btn btn-outline-success fw-bold p-2 w-100 text-center mt-1"/>
        </div>
    </div>
    <div class="text-center pb-2">
        <asp:Label ID="lblMessage" runat="server" ForeColor="DarkRed" Text="Dati non correti. Riprovare."></asp:Label>
    </div>  
</asp:Content>
