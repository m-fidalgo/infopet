using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class cadastrarUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        sqlUser.Insert();


        Session["logado"] = "ok";
        Session["status"] = 1;
        Session["nomeUser"] = txtNome.Text;

        DataView dv;
        dv = (DataView)sqlUser.Select(DataSourceSelectArguments.Empty);

        Session["IDuser"] = Convert.ToInt32(dv.Table.Rows[0]["id_user"]);

        Response.Redirect("usuario.aspx");
        
    }

    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}