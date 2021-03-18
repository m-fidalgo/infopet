<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/alterarProd.aspx.cs" Inherits="alterarProd" %>

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
        <asp:TextBox ID="txtNomeProd" runat="server" CssClass="txt" placeholder="Nome"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtDesc" runat="server" CssClass="txt" placeholder="Descrição"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtPreco" runat="server" CssClass="txt" placeholder="Preço"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtTipoProd" runat="server" CssClass="txt" placeholder="Tipo de Produto" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:DropDownList ID="ddlTipoProd" CssClass="ddl" runat="server" AutoPostBack="True" DataSourceID="sqlTipoProd" DataTextField="nome_tipoProd" DataValueField="id_tipoProd" OnSelectedIndexChanged="ddlTipoProd_SelectedIndexChanged"></asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Image ID="img" runat="server" CssClass="progImg"/>
        <p style="line-height: 40px;"><asp:FileUpload ID="fuImagem" runat="server" onchange="fileinfo()" style="display: none;"/><asp:LinkButton ID="LinkButton1" runat="server" CssClass="btnFU" CausesValidation="False">Selecione uma Imagem</asp:LinkButton></p>
        <asp:TextBox ID="txtImg" runat="server" CssClass="txt" ReadOnly="True" placeholder="Imagem"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnAlterar" runat="server" CssClass="btn1" Text="ALTERAR" OnClick="btnAlterar_Click" CausesValidation="False" />
        
        <br />
        <br />
        <asp:SqlDataSource ID="sqlTipoProd" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT * FROM tipoprod"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlAltProd" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT id_prod, nome_prod, descr_prod, preco_prod, imagem_prod, id_tipoProd FROM produto WHERE (nome_prod = @PESQ)" UpdateCommand="UPDATE produto SET nome_prod = @NOME, descr_prod = @DESC , preco_prod = @VALOR, imagem_prod = @IMG, id_tipoProd = @TIPOPROD WHERE (nome_prod = @PESQ)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtNome" Name="PESQ" PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="txtNome" Name="PESQ" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNomeProd" Name="NOME" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDesc" Name="DESC" PropertyName="Text" />
                <asp:Parameter Name="VALOR" />
                <asp:Parameter Name="IMG" />
                <asp:SessionParameter Name="TIPOPROD" SessionField="IDtipoProd" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </div>

     <script type="text/javascript">
        function fileinfo()
        {
            document.getElementById('<%=txtImg.ClientID%>').value = document.getElementById('<%=fuImagem.ClientID%>').value;
        }
    </script>
</asp:Content>

