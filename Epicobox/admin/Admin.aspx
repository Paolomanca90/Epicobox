<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Epicobox.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="../Content/bootstrap.min.css"/>
    <div class="container">
       
     <div class="mb-3">
        <asp:Label for="nomeEsperienza" runat="server" class="form-label">Inserisci il nome dell'Esperienza</asp:Label>
        <asp:Input type="text" class="form-control" id="nomeEsperienza" runat="server">

         <asp:Label for="descrizioneBreve" runat="server" class="form-label">Inserisci una breve descrizione</asp:Label>
         <asp:Input type="text" class="form-control" id="descrizioneBreve" runat="server">

         <asp:Label for="descrizioneLunga" runat="server" class="form-label">Inserisci una descrizione più approfondita</asp:Label>
         <asp:Input type="text" class="form-control" id="descrizioneLunga" runat="server">

          <asp:Label for="prezzo" runat="server" class="form-label">Inserisci il Prezzo</asp:Label>
          <asp:Input type="text" class="form-control" id="prezzo" runat="server">

         <asp:Label for="dataInizio" runat="server" class="form-label">Inserisci la Data di Inizio</asp:Label>
         <asp:Input type="date" class="form-control" id="dataInizio" runat="server">

         <asp:Label for="dataFine" runat="server" class="form-label">Inserisci la Data di Fine</asp:Label>
         <asp:Input type="date" class="form-control" id="dataFine" runat="server">

         <asp:Label for="DropDownList1" runat="server" class="form-label">Selezionare la Location</asp:Label>
         <asp:DropDownList ID="DropDownList1" runat="server">

             <asp:Listitem Value="1" Text="Italia"></asp:Listitem>

             <asp:Listitem Value="2" Text="Europa"></asp:Listitem>

             <asp:Listitem Value="3" Text="Mondo"></asp:Listitem>

        </asp:DropDownList>

         <asp:Label for="DropDownList2" runat="server" class="form-label">Selezionare la Categoria</asp:Label>
         <asp:DropDownList ID="DropDownList2" runat="server">

             <asp:Listitem Value="1" Text="Soggiorni" ></asp:Listitem>

             <asp:Listitem Value="2" Text="Benessere" ></asp:Listitem>

             <asp:Listitem Value="3" Text="Gourmet" ></asp:Listitem>

             <asp:Listitem Value="4" Text="Motori" ></asp:Listitem>

             <asp:Listitem Value="5" Text="Sport & Avventura" ></asp:Listitem>

             <asp:Listitem Value="6" Text="Idee Regalo" ></asp:Listitem>

             <asp:Listitem Value="7" Text="Tempo Libero" ></asp:Listitem>

             <asp:Listitem Value="8" Text="Offerte" ></asp:Listitem>

         </asp:DropDownList>

         <asp:Label runat="server" class="form-label">Caricare Immagine Principale</asp:Label>

                <asp:FileUpload id="fileUpload1" runat="server" ></asp:FileUpload>


             <asp:Label runat="server" class="form-label">Caricare Seconda Immagine</asp:Label>

                <asp:FileUpload id="fileUpload2" runat="server" ></asp:FileUpload>


             <asp:Label runat="server" class="form-label">Caricare Terza Immagine</asp:Label>

                <asp:FileUpload id="fileUpload3" runat="server" ></asp:FileUpload>


             <asp:Label runat="server" class="form-label">Caricare Quarta Immagine</asp:Label>

               <asp:FileUpload id="fileUpload4" runat="server" ></asp:FileUpload>


             <asp:Button runat="server" Text="Aggiungi Esperienza" OnClick="aggiungiEsperienza"  />


    </div>
       
    </div>
</asp:Content>
