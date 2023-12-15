<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="filmes.aspx.cs" Inherits="Lusomundo.filmes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <asp:Button ID="btn_alterarPass" runat="server" OnClick="btn_alterarPass_Click" Text="Alterar Palavra-passe" />
   <asp:Xml ID="Xml1" runat="server" DocumentSource="~/XMLFile1.xml" TransformSource="~/tranforma_filmes.xslt"></asp:Xml>
&nbsp;<br />

</asp:Content>
