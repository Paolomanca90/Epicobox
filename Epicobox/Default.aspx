<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Epicobox.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/cssDefault.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
            <asp:Repeater ID="Repeater1" runat="server" ItemType="Epicobox.Prodotto">


 <div class="wrapper">
   <div class="card">
     <div class="poster">
       <img src="Content/Img/{{Item.ImageBox}}" alt="Experience Pic" />
     </div>
     <div class="details">
       <h1>{{ Item.Nome }}</h1>
       <h2>{{ Item.Location }}</h2>

       <p class="desc">{{ Item.Descrizione  }}</p>
       <div class="cast">
         <h3>Prezzo</h3>
         <div>
           <h3>{{ Item.Prezzo }}</h3>
         </div>
       </div>
     </div>
   </div>
 </div>
    

            </asp:Repeater>

                
   
    

     <div class="wrapper">
      <div class="card">
        <div class="poster">
          <img
            src="https://i.postimg.cc/jjBSrfnQ/poster1-img.jpg"
            alt="Location Unknown"
          />
        </div>
        <div class="details">
          <h1>Location Unknown</h1>
          <h2>2021 • PG • 1hr 38min</h2>
          <div class="rating">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
            <span>4.2/5</span>
          </div>
          <div class="tags">
            <span class="tag">Italian</span>
            <span class="tag">Drama</span>
            <span class="tag">Indie</span>
          </div>
          <p class="desc">
            Marco, a disillusioned backpacker in his late 20s, embarks on a
            solitary journey in search for meaning.
          </p>
          <div class="cast">
            <h3>Cast</h3>
            <ul>
              <li>
                <img
                  src="https://i.postimg.cc/jqgkqhSb/cast-11.jpg"
                  alt="Marco Andrews"
                  title="Marco Andrews"
                />
              </li>
              <li>
                <img
                  src="https://i.postimg.cc/8P7X7r7r/cast-12.jpg"
                  alt="Rebecca Floyd"
                  title="Rebecca Floyd"
                />
              </li>
              <li>
                <img
                  src="https://i.postimg.cc/2SvHwRFk/cast-13.jpg
"
                  alt="Antonio Herrera"
                  title="Antonio Herrera"
                />
              </li>
            </ul>
          </div>
          
     
</asp:Content>
