<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/cadastrarForn.aspx.cs" Inherits="cadastrarForn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="progCont">
        <br />
        <h1 class="tituloProg">Cadastrar Fornecedores</h1>
        <br />
        
        <asp:TextBox ID="txtNome" runat="server" CssClass="txt" placeholder="Nome *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" CssClass="vld" ErrorMessage="Insira o nome."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtCNPJ" runat="server" CssClass="txt" placeholder="CNPJ *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCNPJ" CssClass="vld" ErrorMessage="Insira o CNPJ."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtTel" runat="server" CssClass="txt" placeholder="Telefone *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTel" CssClass="vld" ErrorMessage="Insira o telefone."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtEmail" runat="server" CssClass="txt" placeholder="Email *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" CssClass="vld" ErrorMessage="Insira o email."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtCEP" runat="server" CssClass="txt" placeholder="CEP *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCEP" CssClass="vld" ErrorMessage="Insira o CEP."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtEnd" runat="server" CssClass="txt" placeholder="Endereço *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEnd" CssClass="vld" ErrorMessage="Insira o endereço."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtNum" runat="server" CssClass="txt" placeholder="Número *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtNum" CssClass="vld" ErrorMessage="Insira o número."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtCidade" runat="server" CssClass="txt" placeholder="Cidade *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCidade" CssClass="vld" ErrorMessage="Insira a cidade."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtUF" runat="server" CssClass="txt" placeholder="UF *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtUF" CssClass="vld" ErrorMessage="Insira a UF."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnCadastrar" runat="server" CssClass="btn" Text="CADASTRAR" OnClick="btnCadastrar_Click" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnVoltar" runat="server" CssClass="btn1" Text="VOLTAR" CausesValidation="False" OnClick="btnVoltar_Click" />

        <br />

        <br />
        <asp:SqlDataSource ID="sqlCadForn" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" InsertCommand="INSERT INTO fornecedor(nome_forn, cnpj_forn, tel_forn, email_forn, cep_forn, end_forn, num_forn, cid_forn, uf_forn) VALUES (@NOME, @CNPJ, @TEL, @EMAIL, @CEP, @END, @NUM, @CIDADE, @UF)" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [fornecedor]">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtNome" Name="NOME" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCNPJ" Name="CNPJ" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtTel" Name="TEL" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtEmail" Name="EMAIL" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCEP" Name="CEP" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtEnd" Name="END" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNum" Name="NUM" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCidade" Name="CIDADE" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtUF" Name="UF" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

