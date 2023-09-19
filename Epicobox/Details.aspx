<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Epicobox.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/carousel.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home">
        <div class="text">Dettagli della box</div>
        <div class="w-75 rounded-2 border border-3 border-secondary text mx-auto py-5">

            <asp:Image ID="imageBox" runat="server" class="w-100 mb-3"/>
            <h1 id="Nome" runat="server" class="fw-bold"></h1>
            <p class="text-end display-6"><span id="Prezzo" runat="server" class="display-4"></span> cad.</p>
            <p id="DescrizioneLunga" runat="server"></p>
            <p class="text-end">Dal: <span id="dataInizio" runat="server" class="fw-semibold"></span> - al: <span id="dataFine" runat="server" class="fw-semibold"></span></p>     
            <p>Location: <span id="location" runat="server" class="fst-italic"></span></p>
            <p>Categoria: <span id="categoria" runat="server" class="fst-italic"></span></p>
            <div class="text-end">
                <asp:LinkButton ID="Button1" runat="server" class="btn btn-warning fs-4 fw-semibold px-4" onclick="Button1_Click" >Aggiungi al carrello <i class='bx bx-cart icon fs-3'></i></asp:LinkButton>
            </div>          
        </div>
        <div>
            <h2 class="text mt-4 fw-semibold">...qualche dettaglio in più</h2>
            <div class="slider-container pb-2">

                <div class="slider-content">

                    <div class="slider-single">
                        <asp:Image ID="image1" runat="server" class="slider-single-image rounded-2" />
                        <h1 class="slider-single-title text">Your</h1>
                        <a class="slider-single-likes" href="javascript:void(0);">
                            <i class="fa fa-heart"></i>
                            <p class="text px-2">1,152</p>
                        </a>
                    </div>

                    <div class="slider-single">
                        <asp:Image ID="image2" runat="server" class="slider-single-image rounded-2" />
                        <h1 class="slider-single-title text">Next</h1>
                        <a class="slider-single-likes" href="javascript:void(0);">
                            <i class="fa fa-heart"></i>
                            <p class="text px-2">1,247</p>
                        </a>
                    </div>

                    <div class="slider-single">
                        <asp:Image ID="image3" runat="server" class="slider-single-image rounded-2" />
                        <h1 class="slider-single-title text">Xperience</h1>
                        <a class="slider-single-likes" href="javascript:void(0);">
                            <i class="fa fa-heart"></i>
                            <p class="text px-2">926</p>
                        </a>
                    </div>

                </div>
            </div>

        </div>
    </section>
<script src="Scripts/carousel.js"></script>
</asp:Content>

