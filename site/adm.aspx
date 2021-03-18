<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/adm.aspx.cs" Inherits="adm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="progAdm">
        <br />
        <h1 class="tituloProg">Bem vindo(a), Administrador</h1>
        <asp:Button ID="btnSair" runat="server" CssClass="btn" Text="SAIR" OnClick="btnSair_Click" />
        <br />
        <br />        
        <br />   
        <br />

        <h2 class="tituloProg"> Produtos</h2>
        <asp:Button ID="btnProdCad" runat="server" CssClass="btn1" Text="CADASTRAR" OnClick="btnProdCad_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnProdPesq" runat="server" CssClass="btn1" Text="PESQUISAR" OnClick="btnProdPesq_Click" />
        <br class="brCss2"/>
        <br class="brCss2"/>
        <asp:Button ID="btnProdAlt" runat="server" CssClass="btn1" Text="ALTERAR" OnClick="btnProdAlt_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnProdExc" runat="server" CssClass="btn1" Text="EXCLUIR" OnClick="btnProdExc_Click" />

        <br />   
        <br />
        <br />        
        <br /> 
        <h2 class="tituloProg"> Fornecedores</h2>
        <asp:Button ID="btnFornCad" runat="server" CssClass="btn1" Text="CADASTRAR" OnClick="btnFornCad_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnFornPesq" runat="server" CssClass="btn1" Text="PESQUISAR" OnClick="btnFornPesq_Click" />
        <br class="brCss2"/>
        <br class="brCss2"/>
        <asp:Button ID="btnFornAlt" runat="server" CssClass="btn1" Text="ALTERAR" OnClick="btnFornAlt_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnFornExc" runat="server" CssClass="btn1" Text="EXCLUIR" OnClick="btnFornExc_Click" />
    
        <br />   
        <br />
        <br />  
        <br /> 
        <h2 class="tituloProg"> Transportadoras</h2>
        <asp:Button ID="btnTranspCad" runat="server" CssClass="btn1" Text="CADASTRAR" OnClick="btnTranspCad_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnTranspPesq" runat="server" CssClass="btn1" Text="PESQUISAR" OnClick="btnTranspPesq_Click" />
        <br class="brCss2"/>
        <br class="brCss2"/>
        <asp:Button ID="btnTranspAlt" runat="server" CssClass="btn1" Text="ALTERAR" OnClick="btnTranspAlt_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnTranpExc" runat="server" CssClass="btn1" Text="EXCLUIR" OnClick="btnTranpExc_Click" />
        
        <br />   
        <br />
        <br />   
        <br /> 
        <h2 class="tituloProg"> Formas de Pagamento</h2>
        <asp:Button ID="btnPagCad" runat="server" CssClass="btn1" Text="CADASTRAR" OnClick="btnPagCad_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnPagPesq" runat="server" CssClass="btn1" Text="PESQUISAR" OnClick="btnPagPesq_Click" />
        <br class="brCss2"/>
        <br class="brCss2"/>
        <asp:Button ID="btnPagAlt" runat="server" CssClass="btn1" Text="ALTERAR" OnClick="btnPagAlt_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnPagExc" runat="server" CssClass="btn1" Text="EXCLUIR" OnClick="btnPagExc_Click" />
        
        <br />   
        <br />
        <br /> 
        <br /> 
        <h2 class="tituloProg"> Tipos de Animais</h2>
        <asp:Button ID="btnTipoAnCad" runat="server" CssClass="btn1" Text="CADASTRAR" OnClick="btnTipoAnCad_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnTipoAnPesq" runat="server" CssClass="btn1" Text="PESQUISAR" OnClick="btnTipoAnPesq_Click" />
        <br class="brCss2"/>
        <br class="brCss2"/>
        <asp:Button ID="btnTipoAnAlt" runat="server" CssClass="btn1" Text="ALTERAR" OnClick="btnTipoAnAlt_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnTipoAnExc" runat="server" CssClass="btn1" Text="EXCLUIR" OnClick="btnTipoAnExc_Click" />
        
        <br />   
        <br />
        <br /> 
        <br /> 
        <h2 class="tituloProg"> Tipos de Produtos</h2>
        <asp:Button ID="btnTipoProdCad" runat="server" CssClass="btn1" Text="CADASTRAR" OnClick="btnTipoProdCad_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnTipoProdPesq" runat="server" CssClass="btn1" Text="PESQUISAR" OnClick="btnTipoProdPesq_Click" />
        <br class="brCss2"/>
        <br class="brCss2"/>
        <asp:Button ID="btnTipoProdAlt" runat="server" CssClass="btn1" Text="ALTERAR" OnClick="btnTipoProdAlt_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnTipoProdExc" runat="server" CssClass="btn1" Text="EXCLUIR" OnClick="btnTipoProdExc_Click" />
        <br />   
        <br />
        <br />   
       
    </div>
</asp:Content>

