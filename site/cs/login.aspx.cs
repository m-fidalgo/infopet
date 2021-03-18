using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    int status;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlLogin.Select(DataSourceSelectArguments.Empty);

        if(dv.Table.Rows.Count == 0)
        {
            lblMsg.Text = "Seu email ou senha estão incorretos.";
            txtEmail.Text = string.Empty;
        }
        else
        {
            status = Convert.ToInt32(dv.Table.Rows[0]["status_user"]);
            Session["status"] = status;
            Session["logado"] = "ok";
            Session["nomeUser"] = dv.Table.Rows[0]["nome_user"];
            Session["IDuser"] = Convert.ToInt32(dv.Table.Rows[0]["id_user"]);

            if((int)Session["status"] == 0)
            {
                Response.Redirect("adm.aspx");
            }
            else
            {
                if((int)Session["status"] == 1)
                {
                    Response.Redirect("usuario.aspx");
                }
            }
        }
    }
}