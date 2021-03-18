<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/cadastrarTipoAnimal.aspx.cs" Inherits="cadastrarTipoAnimal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="progCont">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <h1 class="tituloProg">Cadastrar Tipo de Animal</h1>
        <br />

        <asp:TextBox ID="txtNome" runat="server" CssClass="txt" placeholder="Nome *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" CssClass="vld" ErrorMessage="Insira o nome."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnCadastrar" runat="server" CssClass="btn" Text="CADASTRAR" OnClick="btnCadastrar_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnVoltar" runat="server" CssClass="btn1" Text="VOLTAR" CausesValidation="False" OnClick="btnVoltar_Click" />

        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="sqlCadTipoAnimal" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" InsertCommand="INSERT INTO tipoanimal(nome_tipoAnimal) VALUES (@NOME)" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tipoanimal]">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtNome" Name="NOME" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <br />
    </div>
</asp:Content>

