<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Epicobox.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="carouselExample" class="carousel slide">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://www.italia.it/content/dam/tdh/it/interests/sicilia/spiagge-piu-belle-in-sicilia/media/800X500_spiagge_sicilia_hero.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://static2-viaggi.corriereobjects.it/wp-content/uploads/2015/06/sicilia-vacande-dove-andare-cosa-fare-1080x720.jpg?v=1683904769" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://www.sicilia.info/wp-content/uploads/sites/91/cefalu.jpg" class="d-block w-100" alt="...">
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
</asp:Content>
