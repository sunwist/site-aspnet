<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="subnautica padding-100">
        <img src="Images/logo-subnautica.png" alt="Alternate Text" />
    </div>
    <div class="flexslider">
        <ul class="slides">
            <li>
                <img src="Images/banner0.png" />
            </li>
            <li>
                <img src="Images/banner1.png" />
            </li>
            <li>
                <img src="Images/banner2.png" />
            </li>
            <li>
                <img src="Images/banner3.png" />
            </li>
        </ul>
    </div>

    <script> 

        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide"
            }); x
        });
    </script>
    <script src="https://kit.fontawesome.com/2cfa6a23a4.js" crossorigin="anonymus">
    </script>

    <div class="barra-titulo content-wrap">
        <h1>MODO DE JOGO</h1>
    </div>
    <div class="row margin-top-60">
        <div class="col-3 box">
            <div class="margin-right-20">
                <div class="cards-home">
                    <div class="border box">
                        <div class="card-home">
                            <h2>Livre</h2>
                            <br>
                            <p>
                                Oxigênio e vida são os únicos recursos que você precisa para sobreviver. Energia é consumida
                        por todas as ferramentas elétricas e veículos, enquanto aparelhos como o Fabricador usa a 
                        energia armazenada dentro do Lifepod 5 e Bases Submarinas.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-3">
            <div class="margin-right-20">
                <div class="cards-home">
                    <div class="border box">
                        <div class="card-home">
                            <h2>Sobrevivência</h2>
                            <br>
                            <p>
                                Parecido com o Modo Livre, com a adição de precisar manter sua fome e sede assim como 
                        vida e oxigênio. Se você se afogar ou se sua vida chegar a zero, todos os itens em seu 
                        inventário que foram coletados antes de entrar no Lifepod ou em uma Base Submarina são perdidos.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-3">
            <div class="margin-right-20">
                <div class="cards-home">
                    <div class="border box">
                        <div class="card-home">
                            <h2>Hardcore</h2>
                            <br>
                            <p>
                                Igual o modo sobrevivência, mas com apenas uma vida. Se você se afogar ou sua vida chegar a 
                        zero, seu jogo acaba, sendo necessário começar de novo desde o começo. No Modo Hardcore não 
                        há um alerta quando você está com uma quantidade baixa de oxigênio.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
