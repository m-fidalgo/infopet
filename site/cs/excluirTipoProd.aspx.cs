using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class excluirTipoProd : System.Web.UI.Page
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
        dv = (DataView)sqlExcTipoProd.Select(DataSourceSelectArguments.Empty);

        if (dv.Table.Rows.Count == 0)
        {
            lblMsg.Text = "Este tipo de produto ainda não foi cadastrado.";
            lblExc.Text = string.Empty;
        }
        else
        {
            lblMsg.Text = "Este tipo de produto já foi cadastrado.";
            lblExc.Text = string.Empty;
        }
    }

    protected void btnExcluir_Click(object sender, EventArgs e)
    {
        sqlExcTipoProd.Delete();
        lblMsg.Text = string.Empty;
        txtNome.Text = string.Empty;

        lblExc.Text = "O tipo de produto foi excluído com sucesso.";
    }
}