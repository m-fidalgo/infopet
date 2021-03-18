using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cadastrarForn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if((string)Session["logado"] != "ok")
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            if ((int)Session["status"] != 0)
            {
                Response.Redirect("login.aspx");
            }
        }
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        sqlCadForn.Insert();

        txtNome.Text = string.Empty;
        txtCNPJ.Text = string.Empty;
        txtTel.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtCEP.Text = string.Empty;
        txtEnd.Text = string.Empty;
        txtNum.Text = string.Empty;
        txtCidade.Text = string.Empty;
        txtUF.Text = string.Empty;
    }

    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("adm.aspx");
    }
}