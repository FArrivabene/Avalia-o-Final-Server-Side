<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="alterar_pw.aspx.cs" Inherits="Lusomundo.alterar_pw" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   <div style="text-align:center">
   <p>
      Utilizador:<asp:TextBox ID="tb_userLogin" runat="server" Height="16px" Width="214px"></asp:TextBox>
   </p>
   <p>
      Palavra-passe antiga:
      <asp:TextBox ID="tb_oldPass" runat="server" TextMode="Password" Width="136px"></asp:TextBox>
   </p>
   <p>
      Palavra-passe nova:
      <asp:TextBox ID="tb_newPass" runat="server" TextMode="Password" Width="140px"></asp:TextBox>
   </p>
   <p>
      &nbsp;</p>
   <p>
      <asp:Button ID="btn_alterarPass" runat="server" OnClick="btn_alterarPass_Click" Text="Button" Width="121px" />
   </p>
<p>
   </p>
   <asp:Label ID="lbl_mensagem" runat="server"></asp:Label>
   <br />
   <p>
      <asp:Label ID="lbl_ecriptado" runat="server"></asp:Label>
   </p>
   </div>



</asp:Content>
