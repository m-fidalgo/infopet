using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class alterarTipoProd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["logado"] != "ok")
        {
            Response.Redirect("adm.aspx");
        }
        else
        {
            if ((int)Session["status"] != 0)
            {
                Response.Redirect("adm.aspx");
            }
        }
    }

    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("adm.aspx");
    }

    protected void btnPesquisar_Click(object sender, EventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlAltTipoProd.Select(DataSourceSelectArguments.Empty);

        if (dv.Table.Rows.Count == 0)
        {
            lblMsg.Text = "Este tipo de produto ainda não foi cadastrado.";
            txtNomeTipo.Text = string.Empty;
        }
        else
        {
            lblMsg.Text = string.Empty;
            txtNomeTipo.Text = dv.Table.Rows[0]["nome_tipoProd"].ToString();
        }
    }

    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        sqlAltTipoProd.Update();

        txtNome.Text = string.Empty;
        txtNomeTipo.Text = string.Empty;
    }
}