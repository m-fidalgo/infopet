<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/alterarTipoAnimal.aspx.cs" Inherits="alterarTipoAnimal" %>

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
        <h1 class="tituloProg">Alterar Tipo de Animal</h1>
        <br />

        <asp:TextBox ID="txtNome" runat="server" CssClass="txt" placeholder="Nome *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" CssClass="vld" ErrorMessage="Insira o nome."></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnPesquisar" runat="server" CssClass="btn" Text="PESQUISAR" OnClick="btnPesquisar_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnVoltar" runat="server" CssClass="btn1" Text="VOLTAR" CausesValidation="False" OnClick="btnVoltar_Click" />
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtNomeTipo" runat="server" CssClass="txt" placeholder="Nome" ></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnAlterar" runat="server" CssClass="btn1" Text="ALTERAR" OnClick="btnAlterar_Click" CausesValidation="False" />
        <br />
        <br />
        <asp:SqlDataSource ID="sqlAltTipoAnimal" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT id_tipoAnimal, nome_tipoAnimal FROM tipoanimal WHERE (nome_tipoAnimal = @PESQ)" UpdateCommand="UPDATE tipoanimal SET nome_tipoAnimal = @NOME WHERE (nome_tipoAnimal = @PESQ)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtNome" Name="PESQ" PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="txtNomeTipo" Name="NOME" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNome" Name="PESQ" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>

