<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/cadastrarTransp.aspx.cs" Inherits="cadastrarTransp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="progCont">
        <br />
        <h1 class="tituloProg">Cadastrar Transportadoras</h1>
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

        <asp:SqlDataSource ID="sqlCadTransp" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" InsertCommand="INSERT INTO transportadora(nome_transp, cnpj_transp, tel_transp, email_transp, cep_transp, end_transp, num_transp, cid_transp, uf_transp) VALUES (@NOME, @CNPJ, @TELEFONE, @EMAIL, @CEP, @END, @NUM, @CID, @UF)" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [transportadora]">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtNome" Name="NOME" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCNPJ" Name="CNPJ" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtTel" Name="TELEFONE" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtEmail" Name="EMAIL" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCEP" Name="CEP" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtEnd" Name="END" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNum" Name="NUM" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCidade" Name="CID" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtUF" Name="UF" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>

        <br />

    </div>
</asp:Content>

