<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Epicobox.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
      
        <asp:Image ID="imageBox" runat="server" />
        <h2 id="Nome" runat="server"> </h2>
         <p id="Prezzo" runat="server"> </p>
        <p id="DescrizioneLunga" runat="server"> </p>
        <p id="dataInizio" runat="server"></p>
        <p id="dataFine" runat="server"> </p>
        <p id="location" runat="server"></p>
        <p id="categoria" runat="server"></p>
    </div>

    <div>
        <div id="carouselExample" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
     <asp:Image ID="image1" runat="server" CssClass="d-block w-100" />
     
    </div>
    <div class="carousel-item">
      <asp:Image ID="image2" runat="server" CssClass="d-block w-100" />
    </div>
    <div class="carousel-item">
    <asp:Image ID="image3" runat="server" CssClass="d-block w-100" />
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

    </div>


</asp:Content>
