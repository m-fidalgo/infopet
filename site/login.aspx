<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="progCont">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <h1 class="tituloProg">Login</h1>
        <asp:TextBox ID="txtEmail" CssClass="txt" placeholder="Email" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" CssClass="vld" ErrorMessage="Insira seu email."></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtSenha" CssClass="txt" placeholder="Senha" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSenha" CssClass="vld" ErrorMessage="Insira sua senha."></asp:RequiredFieldValidator>
        
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnEntrar" runat="server" CssClass="btn" Text="ENTRAR" OnClick="btnEntrar_Click" />
        <br />
        <br />
        <p> Não tem uma conta? <a href="cadastrarUser.aspx" style="color: #104E8B; text-decoration: none"> Cadastre-se</a></p>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
            <asp:SqlDataSource ID="sqlLogin" runat="server" ConnectionString="server=127.0.0.1;user id=root;password=ALUNOS;persistsecurityinfo=True;database=infoPet" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT id_user, email_user, senha_user, nome_user, gen_user, tel_user, cpf_user, cep_user, end_user, num_user, compl_user, cid_user, uf_user, numCartao_user, codSegCartao_user, status_user FROM `user` WHERE (email_user = @EMAIL) AND (senha_user = @SENHA)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtEmail" Name="EMAIL" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtSenha" Name="SENHA" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </div>
</asp:Content>

