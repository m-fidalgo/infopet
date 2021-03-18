<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/pesquisarProd.aspx.cs" Inherits="pesquisarProd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="progCont">
        <br />
        <br />
        <br />
        <br />
        <br />
        <h1 class="tituloProg">Pesquisar Produtos</h1>
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
        <asp:Button ID="btnVoltar" runat="server" CssClass="btn1" Text="VOLTAR" OnClick="btnVoltar_Click" CausesValidation="False" />
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtNomeProd" runat="server" CssClass="txt" placeholder="Nome" ReadOnly="true"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtDesc" runat="server" CssClass="txt" placeholder="Descrição" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtPreco" runat="server" CssClass="txt" placeholder="Preço" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtTipoProd" runat="server" CssClass="txt" placeholder="Tipo de Produto" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Image ID="img" runat="server" CssClass="progImg"/>
        <br />
        <br />
        <br />
        
        <asp:SqlDataSource ID="sqlPesqProd" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT id_prod, nome_prod, descr_prod, preco_prod, imagem_prod, id_tipoProd FROM produto WHERE (nome_prod = @NOME)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtNome" Name="NOME" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlTipoProd" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT id_tipoProd, nome_tipoProd FROM tipoprod WHERE (id_tipoProd = @IDTIPOPROD)">
            <SelectParameters>
                <asp:SessionParameter Name="IDTIPOPROD" SessionField="IDtipoProdPesq" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </div>
</asp:Content>

