using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class excluirPag : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if((string)Session["logado"] != "ok")
        {
            Response.Redirect("adm.aspx");
        }
        else
        {
            if((int)Session["status"] != 0)
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
        dv = (DataView)sqlExcPag.Select(DataSourceSelectArguments.Empty);

        if(dv.Table.Rows.Count == 0)
        {
            lblMsg.Text = "Esta forma de pagamento ainda não foi cadastrada.";
            lblExc.Text = string.Empty;
        }
        else
        {
            lblMsg.Text = "Esta forma de pagamento já foi cadastrada.";
            lblExc.Text = string.Empty;
        }
    }

    protected void btnExcluir_Click(object sender, EventArgs e)
    {
        sqlExcPag.Delete();
        lblMsg.Text = string.Empty;
        txtNome.Text = string.Empty;

        lblExc.Text = "A forma de pagamento foi excluída com sucesso.";
    }
}