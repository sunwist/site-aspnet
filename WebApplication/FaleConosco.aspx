<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FaleConosco.aspx.cs" Inherits="WebApplication.FaleConosco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="row padding-150">
        <div class="col-6">
            <div class="formulario">
                <div class="box padding-14 border">
                    <h2>Fale Conosco</h2>
                    <br>
                    <asp:Label ID="Alerta" Font-Size="16px" runat="server"></asp:Label>
                    <br />
                    <asp:Panel ID="Formulario" runat="server">

                        <label>Motivo</label>
                        <asp:DropDownList ID="Motivo" runat="server">
                            <asp:ListItem Text="Selecione" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Sugestão" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Elogio" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Reclamação" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Suporte" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Financeiro" Value="5"></asp:ListItem>
                            <asp:ListItem Text="Outros" Value="6"></asp:ListItem>
                        </asp:DropDownList>

                        <label>Nome</label>
                        <asp:TextBox ID="Nome" MaxLength="100" runat="server"></asp:TextBox>

                        <label>E-Mail</label>
                        <asp:TextBox ID="Email" TextMode="Email" runat="server"></asp:TextBox>

                        <label>Mensagem</label>
                        <asp:TextBox ID="Mensagem" MaxLength="255" TextMode="MultiLine" Rows="6" runat="server"></asp:TextBox>

                        <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />


                    </asp:Panel>
                </div>
            </div>
            </div>
        </div>
</asp:Content>
