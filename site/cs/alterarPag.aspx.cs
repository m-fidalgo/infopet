using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class alterarPag : System.Web.UI.Page
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
        dv = (DataView)sqlAltPag.Select(DataSourceSelectArguments.Empty);

        if(dv.Table.Rows.Count == 0)
        {
            lblMsg.Text = "Esta forma de pagamento ainda não foi cadastrada.";
            txtNomeTipo.Text = string.Empty;
        }
        else
        {
            lblMsg.Text = string.Empty;
            txtNomeTipo.Text = dv.Table.Rows[0]["tipo_pagto"].ToString();
        }
    }

    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        sqlAltPag.Update();
        txtNome.Text = string.Empty;
        txtNomeTipo.Text = string.Empty;
    }
}