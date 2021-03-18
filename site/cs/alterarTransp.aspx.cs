using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class alterarTransp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if((string)Session["logado"] != "ok")
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            if((int)Session["status"] != 0)
            {
                Response.Redirect("login.aspx");
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
        dv = (DataView)sqlAltTransp.Select(DataSourceSelectArguments.Empty);

        if (dv.Table.Rows.Count == 0)
        {
            lblMsg.Text = "Esta transportadora não está cadastrada.";

            txtCEP.Text = string.Empty;
            txtCidade.Text = string.Empty;
            txtCNPJ.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtEnd.Text = string.Empty;
            txtNome.Text = string.Empty;
            txtNum.Text = string.Empty;
            txtTel.Text = string.Empty;
            txtUF.Text = string.Empty;
            txtNomeTransp.Text = string.Empty;
        }
        else
        {
            lblMsg.Text = string.Empty;

            txtCEP.Text = dv.Table.Rows[0]["cep_transp"].ToString();
            txtCidade.Text = dv.Table.Rows[0]["cid_transp"].ToString();
            txtCNPJ.Text = dv.Table.Rows[0]["cnpj_transp"].ToString();
            txtEmail.Text = dv.Table.Rows[0]["email_transp"].ToString();
            txtEnd.Text = dv.Table.Rows[0]["end_transp"].ToString();
            txtNum.Text = dv.Table.Rows[0]["num_transp"].ToString();
            txtTel.Text = dv.Table.Rows[0]["tel_transp"].ToString();
            txtUF.Text = dv.Table.Rows[0]["uf_transp"].ToString();
            txtNomeTransp.Text = dv.Table.Rows[0]["nome_transp"].ToString();
        }
    }

    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        sqlAltTransp.Update();

        txtCEP.Text = string.Empty;
        txtCidade.Text = string.Empty;
        txtCNPJ.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtEnd.Text = string.Empty;
        txtNome.Text = string.Empty;
        txtNum.Text = string.Empty;
        txtTel.Text = string.Empty;
        txtUF.Text = string.Empty;
        txtNomeTransp.Text = string.Empty;
    }
}