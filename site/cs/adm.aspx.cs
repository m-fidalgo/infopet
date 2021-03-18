using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adm : System.Web.UI.Page
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

    protected void btnSair_Click(object sender, EventArgs e)
    {
        Session["logado"] = "não";
        Response.Redirect("login.aspx");
    }


    protected void btnProdCad_Click(object sender, EventArgs e)
    {
        Response.Redirect("cadastrarProd.aspx");
    }

    protected void btnProdPesq_Click(object sender, EventArgs e)
    {
        Response.Redirect("pesquisarProd.aspx");
    }

    protected void btnProdAlt_Click(object sender, EventArgs e)
    {
        Response.Redirect("alterarProd.aspx");
    }

    protected void btnProdExc_Click(object sender, EventArgs e)
    {
        Response.Redirect("excluirProd.aspx");
    }

    protected void btnFornCad_Click(object sender, EventArgs e)
    {
        Response.Redirect("cadastrarForn.aspx");
    }

    protected void btnFornPesq_Click(object sender, EventArgs e)
    {
        Response.Redirect("pesquisarForn.aspx");
    }

    protected void btnFornAlt_Click(object sender, EventArgs e)
    {
        Response.Redirect("alterarForn.aspx");
    }

    protected void btnFornExc_Click(object sender, EventArgs e)
    {
        Response.Redirect("excluirForn.aspx");
    }

    protected void btnTranspCad_Click(object sender, EventArgs e)
    {
        Response.Redirect("cadastrarTransp.aspx");
    }

    protected void btnTranspPesq_Click(object sender, EventArgs e)
    {
        Response.Redirect("pesquisarTransp.aspx");
    }

    protected void btnTranspAlt_Click(object sender, EventArgs e)
    {
        Response.Redirect("alterarTransp.aspx");
    }

    protected void btnTranpExc_Click(object sender, EventArgs e)
    {
        Response.Redirect("excluirTransp.aspx");
    }

    protected void btnPagCad_Click(object sender, EventArgs e)
    {
        Response.Redirect("cadastrarPag.aspx");
    }

    protected void btnPagPesq_Click(object sender, EventArgs e)
    {
        Response.Redirect("pesquisarPag.aspx");
    }

    protected void btnPagAlt_Click(object sender, EventArgs e)
    {
        Response.Redirect("alterarPag.aspx");
    }

    protected void btnPagExc_Click(object sender, EventArgs e)
    {
        Response.Redirect("excluirPag.aspx");
    }

    protected void btnTipoAnCad_Click(object sender, EventArgs e)
    {
        Response.Redirect("cadastrarTipoAnimal.aspx");
    }

    protected void btnTipoAnPesq_Click(object sender, EventArgs e)
    {
        Response.Redirect("pesquisarTipoAnimal.aspx");
    }

    protected void btnTipoAnAlt_Click(object sender, EventArgs e)
    {
        Response.Redirect("alterarTipoAnimal.aspx");
    }

    protected void btnTipoAnExc_Click(object sender, EventArgs e)
    {
        Response.Redirect("excluirTipoAnimal.aspx");
    }

    protected void btnTipoProdCad_Click(object sender, EventArgs e)
    {
        Response.Redirect("cadastrarTipoProd.aspx");
    }

    protected void btnTipoProdPesq_Click(object sender, EventArgs e)
    {
        Response.Redirect("pesquisarTipoProd.aspx");
    }

    protected void btnTipoProdAlt_Click(object sender, EventArgs e)
    {
        Response.Redirect("alterarTipoProd.aspx");
    }

    protected void btnTipoProdExc_Click(object sender, EventArgs e)
    {
        Response.Redirect("excluirTipoProd.aspx");
    }
}