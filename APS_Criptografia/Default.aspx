<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" ClientIDMode="Static" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="APS_Criptografia._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        function copy() {
            var text = document.getElementById("<%= txtCriptografia.ClientID %>");
            text.select();
            text.setSelectionRange(0, 99999);
            document.execCommand("copy");
            console.log(text.value);
            alert("Texto copiado!");
        }
    </script>
    <div class="row">
        <div class="col-md-6">
            <h2>Descriptografar</h2>
            <br />
            <asp:TextBox runat="server" ID="txtDescriptografia"></asp:TextBox>
            <br />
            <asp:UpdatePanel runat="server" ID="uptDescriptografar" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Button runat="server" ID="btnDescriptografar" Text="Descriptografar" OnClick="btnDescriptografar_Click" />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="txtDescriptografia" EventName="TextChanged" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
        <div class="col-md-6">
            <h2>Criptografar</h2>
            <br />
            <asp:FileUpload runat="server" ID="uplCriptografar"/>
            <asp:Button runat="server" ID="btnCriptografar" Text="Criptografar" OnClick="btnCriptografar_Click"/>
            <br />
            <asp:UpdatePanel runat="server" ID="uptCriptografar" UpdateMode="Conditional">
                <ContentTemplate>
                    <p>Retorno:</p>
                    <button onclick="copy()">Copiar</button>
                    <asp:TextBox runat="server" ID="txtCriptografia" ClientIDMode="Static" ReadOnly="true" Enabled="false" TextMode="MultiLine" Width="200" Height="100"></asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <style>
        
    </style>
</asp:Content>
