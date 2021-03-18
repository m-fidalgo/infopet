using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cadastrarTransp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("adm.aspx");
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        sqlCadTransp.Insert();

        txtNome.Text = "";
        txtCNPJ.Text = "";
        txtTel.Text = "";
        txtEmail.Text = "";
        txtEnd.Text = "";
        txtNum.Text = "";
        txtCEP.Text = "";
        txtCidade.Text = "";
        txtUF.Text = "";
        
    }
}