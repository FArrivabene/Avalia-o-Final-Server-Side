<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Lusomundo.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div class="content-body">
   <h2>Login with Session #1: Sign in/up Lusomundo</h2>
  <div class="container" id="container">
    <div class="form-container sign-up-container">
      <div class="form-class">
        <h1>Create Account</h1>
        <div class="social-container">
          <a href="#" class="social">
            <i class="fab fa-facebook-f"></i>
          </a>
          <a href="#" class="social">
            <i class="fab fa-google-plus-g"></i>
          </a>
          <a href="#" class="social">
            <i class="fab fa-linkedin-in"></i>
          </a>
        </div>
        <span>Or use your email for registration</span>
        <input id="nome" type="text" placeholder="Name" />
        <input id="email" type="email" placeholder="Email" />
        <input id="password" type="password" placeholder="Password" />
        <button id="signUp2">Sign Up</button>
      </div>
    </div>


    <div class="form-container sign-in-container">
      <div  class="form-class">
        <h1>Sign in</h1>
        <div class="social-container">
          <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
          <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
          <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
        </div>
        <span>Or use your account</span>
         <asp:TextBox id="email2" placeholder="Usuário" runat="server"></asp:TextBox>
         <asp:TextBox ID="password2" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
        <a href="alterar_pw.aspx">Forgot your password?</a>
         <asp:Button CssClass="button-login" ID="signInEnter" runat="server" Text="Sign In" OnClick="signInEnter_Click" />
      </div>
    </div>


    <div class="overlay-container">
      <div class="overlay">
        <div class="overlay-panel overlay-left">
          <h1>Welcome Back!</h1>
          <p>To keep connected with us please login with your personal info</p>
          <button class="ghost" id="signIn">Sign In</button>
        </div>
        <div class="overlay-panel overlay-right">
          <h1>Hello, Friend!</h1>
          <p>Enter your personal details and start journey with us</p>
           <asp:Button CssClass="button-login ghost" ID="signUp" runat="server" Text="Sign Up" OnClick="signUp_Click" />
        </div>
      </div>
    </div>
  </div>
      </div>
</asp:Content>
