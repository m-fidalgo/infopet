<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/usuario.aspx.cs" Inherits="usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="progCont">
        <h1 class="tituloProg">Bem vindo(a), 
            <asp:Label ID="lblNome" runat="server"></asp:Label>
        </h1>
        <p> <a href="alterarUser.aspx" style="color: #104E8B; text-decoration: none" >Mudar Informações </a><img class="lapis" src="imgs/icons/lapis.png" /></p>
        <asp:Button ID="btnSair" runat="server" CssClass="btn" Text="SAIR" OnClick="btnSair_Click" CausesValidation="False" />
        <br />
        <br />
        <br />
        <h2 class="tituloProg">Cálculo do IMCC </h2>
        <p> Cálculo do Índice de Massa Corporal Canino</p>
        <asp:TextBox ID="txtPeso" CssClass="txt" placeholder="Peso *" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtEstatura" CssClass="txt" placeholder="Estatura *" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnCalcular" runat="server" CssClass="btn" Text="CALCULAR" OnClick="btnCalcular_Click" />
        <br />
        <br />
        <asp:Label ID="lblResp" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <h2 class="tituloProg">Cálculo da Espessura do Vidro do Aquário</h2>
        <p>Todos os valores devem estar em centímetros para que o cálculo funcione corretamente.</p>
        <asp:TextBox ID="txtComp" CssClass="txt" placeholder="Comprimento *" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtLarg" CssClass="txt" placeholder="Largura *" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtAlt" CssClass="txt" placeholder="Altura *" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnCalcular2" runat="server" CssClass="btn" Text="CALCULAR" OnClick="btnCalcular2_Click" />
         <br />
        <br />
        <asp:Label ID="lblResp2" runat="server"></asp:Label>

    </div>
</asp:Content>

