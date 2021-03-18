﻿<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/excluirPag.aspx.cs" Inherits="excluirPag" %>

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
        <h1 class="tituloProg">Excluir Formas de Pagamento</h1>
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
        <asp:Button ID="btnExcluir" runat="server" CssClass="btn1" Text="EXCLUIR" OnClick="btnExcluir_Click" CausesValidation="False" />
        <br />
        <br />
        <asp:Label ID="lblExc" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="sqlExcPag" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" DeleteCommand="DELETE FROM pagamento WHERE (tipo_pagto = @PESQ)" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT id_pagto, tipo_pagto FROM pagamento WHERE (tipo_pagto = @PESQ)">
            <DeleteParameters>
                <asp:ControlParameter ControlID="txtNome" Name="PESQ" PropertyName="Text" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="txtNome" Name="PESQ" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
    </div>
</asp:Content>
