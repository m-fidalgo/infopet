<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/produtosRoedores.aspx.cs" Inherits="produtosRoedores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="tituloProgExibir">Produtos - Roedores</h1>
    <br />
    <br />
    <div class="btnProd">
        <asp:Button ID="btnAlfAZ" runat="server" CssClass="btn1" Text="A-Z" OnClick="btnAlfAZ_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnAlfZA" runat="server" CssClass="btn1" Text="Z-A" OnClick="btnAlfZA_Click" />
        <br class="brCss2"/>
        <br class="brCss2"/>
        <asp:Button ID="btnPrecoMenorMaior" runat="server" CssClass="btn1" Text="PREÇO -  +" OnClick="btnPrecoMenorMaior_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnPrecoMaiorMenor" runat="server" CssClass="btn1" Text="PREÇO +  -" OnClick="btnPrecoMaiorMenor_Click" />
        
    </div>

    <br />
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="sqlProdRoedores" CssClass="dlCss" RepeatColumns="2" RepeatDirection="Horizontal" >
        <ItemStyle CssClass="prodExibir" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" CssClass="imgExibir" ImageUrl='<%# Eval("imagem_prod") %>'/>
            <br />
            <br />
            <h2><asp:Label ID="lblNome" CssClass="tituloProg" runat="server" Text='<%# Eval("nome_prod") %>'></asp:Label></h2>
            <div class="desc">
                <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("descr_prod") %>'></asp:Label>
                <br />
                <br />
            </div>
            <h3><asp:Label ID="lblPreco" CssClass="tituloProg" runat="server" Text='<%# Eval("preco_prod", "{0:C}") %>'></asp:Label></h3>
            <br />
            <br />
            <asp:Button ID="btnComprar" runat="server" CssClass="btn" Text="COMPRAR" CausesValidation="False" Enabled="False" />
            <br />
            <br />
            <br />
            <br />

            <br class="brCssProd" />
            <br class="brCssProd"/>            
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="sqlProdRoedores" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT produto.* FROM produto INNER JOIN tipoan_produto ON produto.id_prod = tipoan_produto.id_prod WHERE (tipoan_produto.id_tipoAnimal = 5)"></asp:SqlDataSource>
        
</asp:Content>

