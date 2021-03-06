<%@ Page Title="Sobre" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="APS_Criptografia.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>APS - Segurança e Auditoria de Sistemas</h3>
    <p>O intuito dessa aplicação web é demonstrar, na prática, o funcionamento e importância da criptografia para garantir a segurança da informação.</p>
    <br />
    <br />
    <div class="row">
        <div class="col-md-6">
            <img class="img-profile" src="https://media-exp1.licdn.com/dms/image/C5103AQG-xKgJEEGHhA/profile-displayphoto-shrink_800_800/0/1517009866206?e=1620259200&v=beta&t=gU-SWkUG3_a_uf_cGJ_dq0JUQUZejnij_8jgu_jRZFk" />
            <h3 class="center">Nathália Lopes</h3>
            <p class="center">8º Semestre - SI - 21040884</p>
            <p class="center">Desenvolvedora FullStack | Itaú BBA</p>
            <br />
            <p class="justify">Atuo na área de TI desde 2016, adquirindo conhecimento e experiência com programação WEB (C#, Asp.Net/.Net Core, WCF, HTML5, CSS3, Javacript, Angular, Vue.js, PHP, Flutter, arquitetura DDD, SOAP, CQRS) e Windows Forms (VB.Net), além de Banco de Dados (SQL Server, MySQL, MongoDB).</p>
            <br />
            <p>Acesse o perfil completo no <a href="https://www.linkedin.com/in/nathalialcoimbra/">LinkedIn</a></p>
        </div>
        <div class="col-md-6">
            <img class="img-profile" src="https://media-exp1.licdn.com/dms/image/C4D03AQG0ofaVdMCLaw/profile-displayphoto-shrink_800_800/0/1588082310646?e=1620259200&v=beta&t=fVMBGMTaJGbwDp6ow9Fil8zumRE5QJT8LkqdjoAdAIQ" />
            <h3 class="center">Rafael Lima</h3>
            <p class="center">8º Semestre - SI - </p>
            <p class="center">Estudante | Anhembi Morumbi</p>
            <br />
            <p class="justify">Atuo na área de TI desde 2016, adquirindo conhecimento e experiência com programação WEB (C#, Asp.Net/.Net Core, WCF, HTML5, CSS3, Javacript, Angular, Vue.js, PHP, Flutter, arquitetura DDD, SOAP, CQRS) e Windows Forms (VB.Net), além de Banco de Dados (SQL Server, MySQL, MongoDB).</p>
            <br />
            <p>Acesse o perfil completo no <a href="https://www.linkedin.com/in/rafael-lima-143ba4170/">LinkedIn</a></p>
        </div>
    </div>
    <style>
        .img-profile {
            width: 150px;
            border-radius: 150px;
            display: block;
            margin: 0 auto;
        }

        .center {
            text-align: center;
        }

        .justify {
            text-align: justify;
        }
    </style>
</asp:Content>
