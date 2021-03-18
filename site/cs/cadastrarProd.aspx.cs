using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cadastrarProd : System.Web.UI.Page
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

        LinkButton1.Attributes.Add("onclick", "document.getElementById('" + fuImagem.ClientID + "').click(); return false;");
    }

    protected void ddlTipoProd_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["IDtipoProd"] = ddlTipoProd.SelectedValue;
    }

    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("adm.aspx");
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        sqlCadProd.InsertParameters["PRECO"].DefaultValue = txtPreco.Text.Replace(',', '.');

        string nomeArq, url;

        nomeArq = fuImagem.FileName;

        if (nomeArq != "")
        {
            fuImagem.SaveAs(Server.MapPath("\\imgs\\produtos\\" + nomeArq));
            url = "~\\imgs\\produtos\\" + nomeArq;
        }
        else
        {
            url = "~\\imgs\\produtos\\semimagem.png";
        }

        sqlCadProd.InsertParameters["IMG"].DefaultValue = url;

        sqlCadProd.Insert();

        txtDesc.Text = string.Empty;
        txtNome.Text = string.Empty;
        txtPreco.Text = string.Empty;
        ddlTipoProd.ClearSelection();
        Session["IDtipoProd"] = string.Empty;
    }
}