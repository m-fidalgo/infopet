using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class excluirForn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if((string)Session["logado"] != "ok")
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            if((int)Session["status"] !=  0)
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
        dv = (DataView)sqlExcForn.Select(DataSourceSelectArguments.Empty);

        if (dv.Table.Rows.Count == 0)
        {
            lblMsg.Text = "Este fornecedor não está cadastrado.";

            txtCEP.Text = string.Empty;
            txtCidade.Text = string.Empty;
            txtCNPJ.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtEnd.Text = string.Empty;
            txtNome.Text = string.Empty;
            txtNomeForn.Text = string.Empty;
            txtNum.Text = string.Empty;
            txtTel.Text = string.Empty;
            txtUF.Text = string.Empty;
        }
        else
        {
            lblMsg.Text = string.Empty;

            txtCEP.Text = dv.Table.Rows[0]["cep_forn"].ToString();
            txtCidade.Text = dv.Table.Rows[0]["cid_forn"].ToString();
            txtCNPJ.Text = dv.Table.Rows[0]["cnpj_forn"].ToString();
            txtEmail.Text = dv.Table.Rows[0]["email_forn"].ToString();
            txtEnd.Text = dv.Table.Rows[0]["end_forn"].ToString();
            txtNum.Text = dv.Table.Rows[0]["num_forn"].ToString();
            txtTel.Text = dv.Table.Rows[0]["tel_forn"].ToString();
            txtUF.Text = dv.Table.Rows[0]["uf_forn"].ToString();
            txtNomeForn.Text = dv.Table.Rows[0]["nome_forn"].ToString();
        }
    }

    protected void btnExcluir_Click(object sender, EventArgs e)
    {
        sqlExcForn.Delete();

        txtCEP.Text = string.Empty;
        txtCidade.Text = string.Empty;
        txtCNPJ.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtEnd.Text = string.Empty;
        txtNome.Text = string.Empty;
        txtNomeForn.Text = string.Empty;
        txtNum.Text = string.Empty;
        txtTel.Text = string.Empty;
        txtUF.Text = string.Empty;
    }
}