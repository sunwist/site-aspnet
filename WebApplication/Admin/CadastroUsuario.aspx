<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroUsuario.aspx.cs" Inherits="WebApplication.CadastroUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="row">
        <div class="col-6 padding-150">
            <div class="formulario">
                <div class="box border padding-14">
                    <h2>Cadastro de Usuario</h2>
                    <asp:Label ID="Alerta" ForeColor="Red" Font-Size="16px" runat="server"></asp:Label>
                    <br>
                    <asp:Label ID="UsuarioID" Font-Size="24px" runat="server"></asp:Label>
                    <br>
                    <label>Nome</label>
                    <asp:TextBox ID="Nome" MaxLength="100" runat="server"></asp:TextBox>
                    <label>Email</label>
                    <asp:TextBox ID="Email" MaxLength="255" runat="server"></asp:TextBox>
                    <label>Nome de Acesso</label>
                    <asp:TextBox ID="NomeAcesso" MaxLength="100" runat="server"></asp:TextBox>
                    <label>Senha</label>
                    <asp:TextBox ID="Senha1" MaxLength="100" runat="server"></asp:TextBox>
                    <label>Repita a Senha</label>
                    <asp:TextBox ID="Senha2" MaxLength="100" runat="server"></asp:TextBox>
                    <asp:Button ID="Enviar" runat="server" Text="Enviar" OnClick="Enviar_Click" />
                    <asp:Button ID="Excluir" runat="server" Text="Excluir" Visible="false" OnClick="Excluir_Click" />
                </div>
            </div><br>
            <div class="opcoes"> 
                <h3>
                    <a href="ExibirUsuarios.aspx">Exibir Usuários Cadastrados</a>
                </h3>
            </div>
            
        </div>
    </div>


</asp:Content>
