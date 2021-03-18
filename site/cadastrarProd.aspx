<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/cadastrarProd.aspx.cs" Inherits="cadastrarProd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="progCont">
        <br />
        <h1 class="tituloProg">Cadastrar Produtos</h1>
        <br />
        <asp:TextBox ID="txtNome" runat="server" CssClass="txt" placeholder="Nome *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" CssClass="vld" ErrorMessage="Insira o nome."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtDesc" runat="server" CssClass="txt" placeholder="Descrição *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDesc" CssClass="vld" ErrorMessage="Insira a descrição."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtPreco" runat="server" CssClass="txt" placeholder="Preço *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPreco" CssClass="vld" ErrorMessage="Insira o preço."></asp:RequiredFieldValidator>
        <br />
        <p style="line-height: 40px;"><asp:FileUpload ID="fuImagem" runat="server" onchange="fileinfo()" style="display: none;"/><asp:LinkButton ID="LinkButton1" runat="server" CssClass="btnFU" CausesValidation="False">Selecione uma Imagem</asp:LinkButton></p>
        <asp:TextBox ID="txtImg" runat="server" CssClass="txt" ReadOnly="True" placeholder="Imagem"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:DropDownList ID="ddlTipoProd" runat="server" CssClass="ddl" AutoPostBack="True" DataSourceID="sqlTipoProd" DataTextField="nome_tipoProd" DataValueField="id_tipoProd" OnSelectedIndexChanged="ddlTipoProd_SelectedIndexChanged"></asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Button ID="btnCadastrar" runat="server" CssClass="btn" Text="CADASTRAR" OnClick="btnCadastrar_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnVoltar" runat="server" CssClass="btn1" Text="VOLTAR" CausesValidation="False" OnClick="btnVoltar_Click" />
        <br />
        <br />
        <asp:SqlDataSource ID="sqlCadProd" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [produto]" InsertCommand="INSERT INTO produto(nome_prod, descr_prod, preco_prod, imagem_prod, id_tipoProd) VALUES (@NOME, @DESC , @PRECO, @IMG, @IDTIPOPROD)">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtNome" Name="NOME" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDesc" Name="DESC" PropertyName="Text" />
                <asp:Parameter Name="PRECO" />
                <asp:Parameter Name="IMG" />
                <asp:SessionParameter Name="IDTIPOPROD" SessionField="IDtipoProd" />
            </InsertParameters>
        </asp:SqlDataSource>
      
        <asp:SqlDataSource ID="sqlTipoProd" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT * FROM tipoprod"></asp:SqlDataSource>
      
        <br />
    </div>

    <script type="text/javascript">
        function fileinfo()
        {
            document.getElementById('<%=txtImg.ClientID%>').value = document.getElementById('<%=fuImagem.ClientID%>').value;
        }
    </script>
</asp:Content>

