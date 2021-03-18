using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class alterarUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["logado"] != "ok")
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            if ((int)Session["status"] == 0)
            {
                Response.Redirect("adm.aspx");
            }
        }
    }

    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("usuario.aspx");
    }

    protected void btnCarregar_Click(object sender, EventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlUser.Select(DataSourceSelectArguments.Empty);

        txtCEP.Text = dv.Table.Rows[0]["cep_user"].ToString();
        txtCidade.Text = dv.Table.Rows[0]["cid_user"].ToString();
        txtCompl.Text = dv.Table.Rows[0]["compl_user"].ToString();
        txtEnd.Text = dv.Table.Rows[0]["end_user"].ToString();
        txtGen.Text = dv.Table.Rows[0]["gen_user"].ToString();
        txtNome.Text = dv.Table.Rows[0]["nome_user"].ToString();
        txtNum.Text = dv.Table.Rows[0]["num_user"].ToString();
        txtTel.Text = dv.Table.Rows[0]["tel_user"].ToString();
        txtUF.Text = dv.Table.Rows[0]["uf_user"].ToString();
        Session["senha"] = dv.Table.Rows[0]["senha_user"].ToString();
    }

    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        if(txtSenha.Text == string.Empty)
        {
            sqlUser.UpdateParameters["SENHA"].DefaultValue = (string)Session["senha"];
        }

        sqlUser.Update();

        ddlGen.ClearSelection();
        txtUF.Text = string.Empty;
        txtTel.Text = string.Empty;
        txtSenha.Text = string.Empty;
        txtNum.Text = string.Empty;
        txtNome.Text = string.Empty;
        txtGen.Text = string.Empty;
        txtEnd.Text = string.Empty;
        txtConfirmeSenha.Text = string.Empty;
        txtCompl.Text = string.Empty;
        txtCidade.Text = string.Empty;
        txtCEP.Text = string.Empty;
    }
}