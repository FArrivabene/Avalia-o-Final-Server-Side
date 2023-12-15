<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="registrar.aspx.cs" Inherits="Lusomundo.registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
  <div style="text-align:center">
   
   <h1>Registar novo usuário</h1>

   <p>
      Nome:
      <asp:TextBox ID="tb_nomeUser" placeholder="Nome usuário" runat="server"></asp:TextBox>
   <p>
      Palavra-passe:
      <asp:TextBox ID="tb_passUser" placeholder="Mínimo 8 caracteres" runat="server" TextMode="Password"></asp:TextBox>
   </p>
   <p>
      <asp:Button ID="btn_registar" runat="server" OnClick="btn_registar_Click" Text="Registar" />
   </p>
     <asp:Label ID="lbl_msgErroPass" runat="server"></asp:Label>
   <p>
   </p>
     </div>
</asp:Content>
