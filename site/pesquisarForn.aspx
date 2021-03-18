<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/pesquisarForn.aspx.cs" Inherits="pesquisarForn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="progCont">
        <br />
        <h1 class="tituloProg">Pesquisar Fornecedores</h1>
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
        <asp:TextBox ID="txtNomeForn" runat="server" CssClass="txt" placeholder="Nome" ReadOnly="true"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtCNPJ" runat="server" CssClass="txt" placeholder="CNPJ" ReadOnly="true"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtTel" runat="server" CssClass="txt" placeholder="Telefone" ReadOnly="true"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtEmail" runat="server" CssClass="txt" placeholder="Email" ReadOnly="true"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtCEP" runat="server" CssClass="txt" placeholder="CEP" ReadOnly="true"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtEnd" runat="server" CssClass="txt" placeholder="Endereço" ReadOnly="true"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtNum" runat="server" CssClass="txt" placeholder="Número" ReadOnly="true"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtCidade" runat="server" CssClass="txt" placeholder="Cidade" ReadOnly="true"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtUF" runat="server" CssClass="txt" placeholder="UF" ReadOnly="true"></asp:TextBox>
        <br />
        <br />
        <asp:SqlDataSource ID="sqlPesqForn" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT id_forn, nome_forn, cnpj_forn, tel_forn, email_forn, cep_forn, end_forn, num_forn, cid_forn, uf_forn FROM fornecedor WHERE (nome_forn = @NOME)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtNome" Name="NOME" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </div>
        
</asp:Content>

