using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class produtosGatos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAlfAZ_Click(object sender, EventArgs e)
    {
        sqlProdGatos.SelectCommand = "SELECT produto.* FROM produto INNER JOIN tipoan_produto ON produto.id_prod = tipoan_produto.id_prod WHERE(tipoan_produto.id_tipoAnimal = 2) order by nome_prod asc";
    }

    protected void btnAlfZA_Click(object sender, EventArgs e)
    {
        sqlProdGatos.SelectCommand = "SELECT produto.* FROM produto INNER JOIN tipoan_produto ON produto.id_prod = tipoan_produto.id_prod WHERE(tipoan_produto.id_tipoAnimal = 2) order by nome_prod desc";
    }

    protected void btnPrecoMaiorMenor_Click(object sender, EventArgs e)
    {
        sqlProdGatos.SelectCommand = "SELECT produto.* FROM produto INNER JOIN tipoan_produto ON produto.id_prod = tipoan_produto.id_prod WHERE(tipoan_produto.id_tipoAnimal = 2) order by preco_prod desc";
    }

    protected void btnPrecoMenorMaior_Click(object sender, EventArgs e)
    {
        sqlProdGatos.SelectCommand = "SELECT produto.* FROM produto INNER JOIN tipoan_produto ON produto.id_prod = tipoan_produto.id_prod WHERE(tipoan_produto.id_tipoAnimal = 2) order by preco_prod asc";
    }
}