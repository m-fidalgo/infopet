<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/alterarForn.aspx.cs" Inherits="alterarForn" %>

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
        <asp:TextBox ID="txtNomeForn" runat="server" CssClass="txt" placeholder="Nome"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtCNPJ" runat="server" CssClass="txt" placeholder="CNPJ" ></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtTel" runat="server" CssClass="txt" placeholder="Telefone" ></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtEmail" runat="server" CssClass="txt" placeholder="Email" ></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtCEP" runat="server" CssClass="txt" placeholder="CEP"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtEnd" runat="server" CssClass="txt" placeholder="Endereço" ></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtNum" runat="server" CssClass="txt" placeholder="Número" ></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtCidade" runat="server" CssClass="txt" placeholder="Cidade" ></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtUF" runat="server" CssClass="txt" placeholder="UF" ></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnAlterar" runat="server" CssClass="btn1" Text="ALTERAR" OnClick="btnAlterar_Click" CausesValidation="False" />
        <br />
        <br />
        <asp:SqlDataSource ID="sqlAltForn" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT id_forn, nome_forn, cnpj_forn, tel_forn, email_forn, cep_forn, end_forn, num_forn, cid_forn, uf_forn FROM fornecedor WHERE (nome_forn = @PESQ)" UpdateCommand="UPDATE fornecedor SET nome_forn = @NOME, cnpj_forn = @CNPJ, tel_forn = @TEL, email_forn = @EMAIL, cep_forn = @CEP, end_forn = @END, num_forn = @NUM, cid_forn = @CID, uf_forn = @UF WHERE (nome_forn = @PESQ)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtNome" Name="PESQ" PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="txtNomeForn" Name="NOME" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCNPJ" Name="CNPJ" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtTel" Name="TEL" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtEmail" Name="EMAIL" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCEP" Name="CEP" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtEnd" Name="END" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNum" Name="NUM" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCidade" Name="CID" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtUF" Name="UF" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNome" Name="PESQ" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

