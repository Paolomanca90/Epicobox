<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Epicobox.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <section class="home">
     <div class="wrapper mx-auto my-5">
  <div class="title-text">
    <div class="title login">Accedi</div>
    <div class="title signup">Registrati</div>
  </div>
  <div class="form-container">
    <div class="slide-controls">
      <input type="radio" name="slide" id="login" checked>
      <input type="radio" name="slide" id="signup">
      <label for="login" class="slide login">Login</label>
      <label for="signup" class="slide signup">Signup</label>
      <div class="slider-tab"></div>
    </div>
    <div class="form-inner">
      <div class="login">
        <div class="field">
          <input type="text" placeholder="Username" required>
        </div>
        <div class="field">
          <input type="password" placeholder="Password" required>
        </div>
        
        <div class="field btn">
          <div class="btn-layer"></div>
          <input type="submit" value="Login">
        </div>
        <div class="signup-link w-100">Non sei ancora dei nostri? <a href="#">Registrati ora</a></div>
      </div>
      <div class="signup">
        <div class="field">
          <input type="text" placeholder="Username" required>
        </div>
        <div class="field">
          <input type="password" placeholder="Password" required>
        </div>
        
        <div class="field btn">
          <div class="btn-layer"></div>
          <input type="submit" value="Signup">
        </div>
      </div>
    </div>
  </div>
</div>
</section>
    <script src="Scripts/login.js"></script>

</asp:Content>
