<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="~/cs/alterarUser.aspx.cs" Inherits="alterarUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="progCont">
        <br />
        <h1 class="tituloProg">Alterar Informações</h1>
        <br />
        <asp:Button ID="btnCarregar" runat="server" CssClass="btn" OnClick="btnCarregar_Click" Text="CARREGAR DADOS" />
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtNome" runat="server" CssClass="txt" placeholder="Nome Completo"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtSenha" runat="server" CssClass="txt" placeholder="Senha" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtConfirmeSenha" runat="server" CssClass="txt" placeholder="Confirme sua Senha" TextMode="Password"></asp:TextBox>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSenha" ControlToValidate="txtConfirmeSenha" CssClass="vld" ErrorMessage="As senhas não estão iguais."></asp:CompareValidator>
        <br />
        <br />
        <asp:TextBox ID="txtGen" runat="server" CssClass="txt" placeholder="Gênero" ReadOnly="True"></asp:TextBox>
        <br />
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
        <asp:TextBox ID="txtTel" runat="server" CssClass="txt" placeholder="Telefone"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtCEP" runat="server" CssClass="txt" placeholder="CEP"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtEnd" runat="server" CssClass="txt" placeholder="Endereço"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtNum" runat="server" CssClass="txt" placeholder="Número"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtCompl" runat="server" CssClass="txt" placeholder="Complemento"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtCidade" runat="server" CssClass="txt" placeholder="Cidade"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtUF" runat="server" CssClass="txt" placeholder="Estado"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnAlterar" runat="server" CssClass="btn" OnClick="btnAlterar_Click" Text="ALTERAR" />
        <br class="brCss"/>
        <br class="brCss"/>
        <asp:Button ID="btnVoltar" runat="server" CssClass="btn1" Text="VOLTAR" CausesValidation="False" OnClick="btnVoltar_Click" />
        <br />
        <asp:SqlDataSource ID="sqlUser" runat="server" ConnectionString="<%$ ConnectionStrings:infoPetConnectionString %>" ProviderName="<%$ ConnectionStrings:infoPetConnectionString.ProviderName %>" SelectCommand="SELECT id_user, email_user, senha_user, nome_user, gen_user, tel_user, cpf_user, cep_user, end_user, num_user, compl_user, cid_user, uf_user, numCartao_user, codSegCartao_user, status_user FROM `user` WHERE (id_user = @IDUSER)" UpdateCommand="UPDATE `user` SET senha_user = @SENHA, nome_user = @NOME, gen_user = @GEN, tel_user = @TEL, cep_user = @CEP, end_user = @END, num_user = @NUM, compl_user = @COMPL, cid_user = @CID, uf_user = @UF">
            <SelectParameters>
                <asp:SessionParameter Name="IDUSER" SessionField="IDuser" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="txtSenha" Name="SENHA" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNome" Name="NOME" PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlGen" Name="GEN" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtTel" Name="TEL" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCEP" Name="CEP" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtEnd" Name="END" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNum" Name="NUM" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCompl" Name="COMPL" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCidade" Name="CID" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtUF" Name="UF" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </div>
</asp:Content>

