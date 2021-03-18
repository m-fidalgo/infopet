using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class alterarProd : System.Web.UI.Page
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

        LinkButton1.Attributes.Add("onclick", "document.getElementById('" + fuImagem.ClientID + "').click(); return false;");
    }

    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("adm.aspx");
    }

    protected void ddlTipoProd_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["IDtipoProd"] = ddlTipoProd.SelectedValue;
    }

    protected void btnPesquisar_Click(object sender, EventArgs e)
    {
        DataView dv, dvID;

        dv = (DataView)sqlAltProd.Select(DataSourceSelectArguments.Empty);

        if (dv.Table.Rows.Count == 0)
        {
            lblMsg.Text = "Este produto não está cadastrado.";

            txtNomeProd.Text = string.Empty;
            txtDesc.Text = string.Empty;
            txtPreco.Text = string.Empty;
            img.ImageUrl = "";
            txtNome.Text = string.Empty;
            txtImg.Text = string.Empty;
            txtTipoProd.Text = string.Empty;
            ddlTipoProd.ClearSelection();
        }
        else
        {
            lblMsg.Text = string.Empty;

            txtNomeProd.Text = dv.Table.Rows[0]["nome_prod"].ToString();
            txtDesc.Text = dv.Table.Rows[0]["descr_prod"].ToString();
            txtPreco.Text = dv.Table.Rows[0]["preco_prod"].ToString();
            img.ImageUrl = dv.Table.Rows[0]["imagem_prod"].ToString();
            txtImg.Text = dv.Table.Rows[0]["imagem_prod"].ToString();

            Session["IDtipoProd"] = dv.Table.Rows[0]["id_tipoProd"].ToString();

            dvID = (DataView)sqlTipoProd.Select(DataSourceSelectArguments.Empty);
            txtTipoProd.Text = dvID.Table.Rows[0]["nome_tipoProd"].ToString();
            
        }
    }

    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        sqlAltProd.UpdateParameters["VALOR"].DefaultValue = txtPreco.Text.Replace(',', '.');

        String nomeArq, url;

        nomeArq = Path.GetFileName(fuImagem.PostedFile.FileName);

        if(nomeArq != "")
        {
            fuImagem.PostedFile.SaveAs(Server.MapPath("\\imgs\\produtos\\" + nomeArq));
            url = "\\imgs\\produtos\\" + nomeArq;
        }
        else
        {
            url = img.ImageUrl.ToString();
        }

        sqlAltProd.UpdateParameters["IMG"].DefaultValue = url;

        sqlAltProd.Update();

        txtNomeProd.Text = string.Empty;
        txtDesc.Text = string.Empty;
        txtPreco.Text = string.Empty;
        img.ImageUrl = "";
        txtNome.Text = string.Empty;
        txtImg.Text = string.Empty;
        txtTipoProd.Text = string.Empty;
        ddlTipoProd.ClearSelection();
    }
}