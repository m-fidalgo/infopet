using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cadastrarPag : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["logado"] != "ok")
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
        sqlCadPag.Insert();

        txtNome.Text = string.Empty;

    }

    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("adm.aspx");
    }
}