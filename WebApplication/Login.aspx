<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">

        <div class="row">
        <div class="col-6 padding-250">
            <div class="formulario">
                <div class="box border padding-14">
                    <h2>Login</h2><br>
                    <asp:Label runat="server" ForeColor="red" ID="Alerta"></asp:Label><br>

                    <label>Nome</label>
                    <asp:TextBox ID="NomeAcesso" runat="server"></asp:TextBox>

                    <label>Senha</label>
                    <asp:TextBox ID="Senha" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:Button runat="server" Text="Entrar" ID="Entrar" Onclick="Entrar_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
