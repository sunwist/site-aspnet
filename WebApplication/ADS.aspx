<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ADS.aspx.cs" Inherits="WebApplication.ADS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <!-- Banners -->
    <div class="padding-100">
        <div class="flexslider">
            <ul class="slides">
                <li>
                    <img src="Images/docker1.png" alt="Docker Banner 1" /></li>
                <li>
                    <img src="Images/docker2.png" alt="Docker Banner 2" /></li>
            </ul>
        </div>
    </div>

    <script>
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide"
            });
        });
    </script>

    <script src="https://kit.fontawesome.com/2cfa6a23a4.js" crossorigin="anonymous"></script>

    <!-- Seção 'O que é Docker' -->
    <div class="row margin-top-60 content-wrap2">

        <!-- Coluna da imagem -->
        <div class="col-6">
            <div class="margin-right-20 margin-top-60">
                <img width="100%" src="Images/docker-app.png" alt="Docker" />
            </div>
        </div>

        <!-- Coluna do texto -->
        <div class="col-6">
            <div class="margin-right-20 margin-top-60">
                <div class="texto-sobre">
                    <span>
                        <h1>O que é Docker?</h1>
                    </span>
                    <div class="box">
                        <p>
                            Docker é uma plataforma poderosa que facilita a criação, implantação e gerenciamento de aplicações dentro de contêineres. Esses contêineres são como pacotes leves e autossuficientes que reúnem tudo o que uma aplicação precisa para rodar, incluindo o código e suas dependências, garantindo que a aplicação funcione da mesma forma em qualquer ambiente.


                            <br>
                            <br>
                            Uma das grandes vantagens do Docker é o isolamento. Cada contêiner é independente, o que significa que diferentes aplicações podem rodar no mesmo sistema sem afetar umas às outras. Isso evita conflitos entre versões de bibliotecas ou problemas de compatibilidade, tornando o processo de desenvolvimento mais confiável e estável.


                            <br>
                            <br>
                            Além disso, o Docker oferece uma excelente escalabilidade. Se a demanda por uma aplicação aumenta, novos contêineres podem ser rapidamente criados para suprir essa necessidade. Esse processo de escalonamento eficiente permite que as equipes ajustem a capacidade de suas aplicações de forma ágil e flexível, respondendo rapidamente às mudanças de carga de trabalho. 
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Seção 'Como funciona' -->
    <div class="row margin-top-60 content-wrap">
        <!-- Coluna do texto -->
        <div class="col-12">
            <div class="margin-right-20 margin-top-60">
                <div class="texto-comofunciona">
                    <span>
                        <h1>Como funciona</h1>
                    </span>
                    <p>
                        Docker funciona criando contêineres, que são unidades leves de software que empacotam uma aplicação junto com todas as suas dependências e configurações necessárias. Cada contêiner é construído a partir de uma imagem, que é definida por um arquivo chamado Dockerfile. Esse arquivo especifica as instruções para construir a imagem, como quais bibliotecas instalar, quais comandos executar e como configurar o ambiente. Uma vez que a imagem é criada, ela pode ser executada em qualquer sistema que tenha o Docker instalado, garantindo que a aplicação se comporte da mesma forma em diferentes ambientes. Isso é crucial para evitar problemas de "funciona na minha máquina", já que todos os requisitos estão encapsulados no contêiner.

                        <br>
                        <br>
                        Docker utiliza tecnologias como "cgroups" e "namespaces" para fornecer o isolamento necessário entre os contêineres. Os namespaces garantem que cada contêiner tenha sua própria visão do sistema, incluindo processos, usuários e redes, enquanto os cgroups controlam o uso de recursos como CPU e memória. Essa arquitetura permite que múltiplos contêineres operem no mesmo sistema sem interferir uns nos outros, aumentando a eficiência do uso de recursos e simplificando o gerenciamento de múltiplas aplicações. Além disso, os contêineres são mais leves do que máquinas virtuais, já que compartilham o mesmo núcleo do sistema operacional, resultando em tempos de inicialização muito mais rápidos.

                        <br>
                        <br>
                        Para gerenciar aplicações compostas por múltiplos contêineres, o Docker oferece ferramentas como Docker Compose e Kubernetes. O Docker Compose permite que os desenvolvedores definam e executem aplicações multi-contêiner usando um arquivo de configuração YAML. Por outro lado, o Kubernetes é uma plataforma mais robusta para orquestração de contêineres, facilitando a implantação, escalabilidade e gerenciamento de aplicações em ambientes de produção. Com essas ferramentas, é possível não apenas manter ambientes complexos, mas também escalar aplicações de forma dinâmica, ajustando a capacidade de acordo com a demanda. Assim, o Docker não apenas simplifica o desenvolvimento, mas também transforma a maneira como as aplicações são gerenciadas e implantadas em larga escala.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!-- Seção 'Vantagens' -->
    <div class="titulo-vantagens margin-top-120">
        <span>
            <h1>Vantagens no uso de containers</h1>
        </span>
    </div>
    <div class="row margin-top-60 content-wrap">
        <!-- Card 1 -->
        <div class="col-4">
            <!-- Ajuste aqui -->
            <div class="cards">
                <div class="border">
                    <div class="icons">
                        <img src="Images/modularidade.png" width="100px" alt="Modularidade" />
                    </div>
                    <div class="icons-titulo">
                        <h2>Modularidade</h2>
                    </div>
                    <div class="card">
                        <div class="box">
                            <p>
                                A abordagem do Docker para a conteinerização se concentra na habilidade de desativar um pedaço de uma aplicação, seja para reparo ou atualização, sem interrompê-la. Além dessa abordagem baseada em microsserviços, é possível compartilhar processos entre várias apps da mesma maneira.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Card 2 -->
        <div class="col-4">
            <!-- Ajuste aqui -->
            <div class="cards">
                <div class="border">
                    <div class="icons">
                        <img src="Images/modularidade.png" width="100px" alt="Camadas" />
                    </div>
                    <div class="icons-titulo">
                        <h2>Camadas</h2>
                    </div>
                    <div class="card">
                        <div class="box">
                            <p>
                                Cada arquivo de imagem Docker é composto por uma série de camadas. Quando a imagem muda, uma camada é criada. Assim como sempre que alguém especificar um comando, como run ou copy. O Docker reutiliza essas camadas para criar novos containers, o que acelera o processo.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Card 3 -->
        <div class="col-4">
            <!-- Ajuste aqui -->
            <div class="cards">
                <div class="border">
                    <div class="icons">
                        <img src="Images/modularidade.png" width="100px" alt="Implantação Rápida" />
                    </div>
                    <div class="icons-titulo">
                        <h2>Implantação Rápida</h2>
                    </div>
                    <div class="card">
                        <div class="box">
                            <p>
                                Com o Docker, a implantação leva alguns segundos. Crie um container para cada processo para agilizar o compartilhamento desses processos com novas apps. Não é necessário inicializar o sistema operacional para adicionar ou mover um container, reduzindo o tempo de implantação.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
