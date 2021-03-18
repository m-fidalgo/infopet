using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class pesquisarProd : System.Web.UI.Page
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
    }

    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("adm.aspx");
    }

    protected void btnPesquisar_Click(object sender, EventArgs e)
    {
        DataView dv, dvID;

        dv = (DataView)sqlPesqProd.Select(DataSourceSelectArguments.Empty);
        
        if (dv.Table.Rows.Count == 0)
        {
            lblMsg.Text = "Este produto não está cadastrado.";

            txtDesc.Text = string.Empty;
            txtPreco.Text = string.Empty;
            img.ImageUrl = "";
            txtNome.Text = string.Empty;
            txtTipoProd.Text = string.Empty;
            txtNomeProd.Text = string.Empty;
        }
        else
        {
            txtDesc.Text = dv.Table.Rows[0]["descr_prod"].ToString();
            txtPreco.Text = dv.Table.Rows[0]["preco_prod"].ToString();
            img.ImageUrl = dv.Table.Rows[0]["imagem_prod"].ToString();
            txtNomeProd.Text = dv.Table.Rows[0]["nome_prod"].ToString();

            Session["IDtipoProdPesq"] = dv.Table.Rows[0]["id_tipoProd"].ToString();

            dvID = (DataView)sqlTipoProd.Select(DataSourceSelectArguments.Empty);

            txtTipoProd.Text = dvID.Table.Rows[0]["nome_tipoProd"].ToString();
            
            lblMsg.Text = string.Empty;
        }
    }
}