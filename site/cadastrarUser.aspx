<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/cadastrarUser.aspx.cs" Inherits="cadastrarUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="progCont">
        <br />
        <h1 class="tituloProg">Cadastre-se</h1>
        <br />
        
        <asp:TextBox ID="txtEmail" runat="server" CssClass="txt" placeholder="Email *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" CssClass="vld" ErrorMessage="Insira seu email."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtSenha" runat="server" CssClass="txt" placeholder="Senha *" TextMode="Password"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSenha" CssClass="vld" ErrorMessage="Insira sua senha."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtConfirmeSenha" runat="server" CssClass="txt" placeholder="Confirme sua Senha *" TextMode="Password"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirmeSenha" CssClass="vld" ErrorMessage="Confirme sua senha."></asp:RequiredFieldValidator> 
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSenha" ControlToValidate="txtConfirmeSenha" CssClass="vld" ErrorMessage="As senhas não estão iguais."></asp:CompareValidator>
        <br />
        <asp:TextBox ID="txtNome" runat="server" CssClass="txt" placeholder="Nome Completo *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNome" CssClass="vld" ErrorMessage="Insira seu nome."></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:DropDownList ID="ddlGen" runat="server" CssClass="ddl">
            <asp:ListItem>Feminino</asp:ListItem>
            <asp:ListItem>Masculino</asp:ListItem>
            <asp:ListItem>Outro</asp:ListItem>
        </asp:DropDownList>

        <br />
        <br />
        <br />
        <asp:TextBox ID="txtTel" runat="server" CssClass="txt" placeholder="Telefone *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtTel" CssClass="vld" ErrorMessage="Insira seu telefone."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtCPF" runat="server" CssClass="txt" placeholder="CPF *"></asp:TextBox>

        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtCPF" CssClass="vld" ErrorMessage="Insira seu CPF."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtCEP" runat="server" CssClass="txt" placeholder="CEP *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCEP" CssClass="vld" ErrorMessage="Insira seu CEP."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtEnd" runat="server" CssClass="txt" placeholder="Endereço *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEnd" CssClass="vld" ErrorMessage="Insira seu endereço."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtNum" runat="server" CssClass="txt" placeholder="Número *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtNum" CssClass="vld" ErrorMessage="Insira seu número."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtCompl" runat="server" CssClass="txt" placeholder="Complemento"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtCidade" runat="server" CssClass="txt" placeholder="Cidade *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCidade" CssClass="vld" ErrorMessage="Insira seu cidade."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="txtUF" runat="server" CssClass="txt" placeholder="Estado *"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtUF" CssClass="vld" ErrorMessage="Insira seu estado."></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnCadastrar" runat="server" CssClass="btn" OnClick="btnCadastrar_Click" Text="CADASTRAR" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnVoltar" runat="server" CssClass="btn1" Text="VOLTAR" CausesValidation="False" OnClick="btnVoltar_Click" />
        <br />
        <asp:SqlDataSource ID="sqlUser" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT id_user, email_user, senha_user FROM `user` WHERE (email_user = @EMAIL) AND (senha_user = @SENHA)" InsertCommand="INSERT INTO `user` (email_user, senha_user, nome_user, gen_user, tel_user, cpf_user, cep_user, end_user, num_user, compl_user, cid_user, uf_user, status_user) VALUES (@EMAIL, @SENHA, @NOME, @GENERO, @TEL, @CPF, @CEP, @END, @NUM, @COMPL, @CIDADE, @UF, @STATUS)">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtEmail" Name="EMAIL" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtSenha" Name="SENHA" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNome" Name="NOME" PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlGen" Name="GENERO" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtTel" Name="TEL" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCPF" Name="CPF" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCEP" Name="CEP" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtEnd" Name="END" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNum" Name="NUM" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCompl" Name="COMPL" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCidade" Name="CIDADE" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtUF" Name="UF" PropertyName="Text" />
                <asp:Parameter DefaultValue="1" Name="STATUS" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="txtEmail" Name="EMAIL" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtSenha" Name="SENHA" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

