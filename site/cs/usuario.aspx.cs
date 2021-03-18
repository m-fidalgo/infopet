using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if((string)Session["logado"] != "ok")
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            if((int)Session["status"] == 0)
            {
                Response.Redirect("adm.aspx");
            }
        }

        lblNome.Text = (string)Session["nomeUser"];
    }

    protected void btnSair_Click(object sender, EventArgs e)
    {
        Session["logado"] = "não";
        Response.Redirect("login.aspx");
    }

    protected void btnCalcular_Click(object sender, EventArgs e)
    {
        double peso, estaturaCM, estatura, imcc;

        peso = Convert.ToDouble(txtPeso.Text);
        estaturaCM = Convert.ToDouble(txtEstatura.Text);

        estatura = estaturaCM / 100;

        if (10 >= peso)
        {
            imcc = peso / Math.Pow(estatura, 2) - (peso / Math.Pow(estatura, 2) * 0.1);
            if (imcc <= 11.7)
            {
                lblResp.Text = "O IMCC de seu cão é de " + imcc + "kg/m², portanto ele está abaixo do peso.";
            }
            else
            {
                if (imcc > 11.7 && imcc <= 15)
                {
                    lblResp.Text = "O IMCC de seu cão é de " + imcc + "kg/m², portanto ele está com o peso ideal.";
                }
                if (imcc > 15 && imcc <= 18.6)
                {
                    lblResp.Text = "O IMCC de seu cão é de " + imcc + "kg/m², portanto ele está acima do peso.";
                }
                if (imcc >= 18.6)
                {
                    lblResp.Text = "O IMCC de seu cão é de " + imcc + "kg/m², portanto ele está obeso.";
                }
            }

        }
        if ((peso > 10) && (peso < 25))
        {
            imcc = peso / Math.Pow(estatura, 2);
            if (imcc <= 11.7)
            {
                lblResp.Text = "O IMCC de seu cão é de " + imcc + "kg/m², portanto ele está abaixo do peso.";
            }
            else
            {
                if (imcc > 11.7 && imcc <= 15)
                {
                    lblResp.Text = "O IMCC de seu cão é de " + imcc + "kg/m², portanto ele está com o peso ideal.";
                }
                if (imcc > 15 && imcc <= 18.6)
                {
                    lblResp.Text = "O IMCC de seu cão é de " + imcc + "kg/m², portanto ele está acima do peso.";
                }
                if (imcc >= 18.6)
                {
                    lblResp.Text = "O IMCC de seu cão é de " + imcc + "kg/m², portanto ele está obeso.";
                }
            }
        }
        if (peso >= 25)
        {
            imcc = peso / Math.Pow(estatura, 2) + (peso / Math.Pow(estatura, 2) * 0.2);
            if (imcc <= 11.7)
            {
                lblResp.Text = "O IMCC de seu cão é de " + imcc + "kg/m², portanto ele está abaixo do peso.";
            }
            else
            {
                if (imcc > 11.7 && imcc <= 15)
                {
                    lblResp.Text = "O IMCC de seu cão é de " + imcc + "kg/m², portanto ele está com o peso ideal.";
                }
                if (imcc > 15 && imcc <= 18.6)
                {
                    lblResp.Text = "O IMCC de seu cão é de " + imcc + "kg/m², portanto ele está acima do peso.";
                }
                if (imcc >= 18.6)
                {
                    lblResp.Text = "O IMCC de seu cão é de " + imcc + "kg/m², portanto ele está obeso.";
                }
            }
        }

        txtPeso.Text = string.Empty;
        txtEstatura.Text = string.Empty;
    }

    protected void btnCalcular2_Click(object sender, EventArgs e)
    {
        double comprimento, largura, altura, espessura;
        double comp_alt, beta = 0, fator, fatorSeg, valor1;

        comprimento = Convert.ToDouble(txtComp.Text);
        largura = Convert.ToDouble(txtLarg.Text);
        altura = Convert.ToDouble(txtAlt.Text);

        comp_alt = comprimento / altura;
        fator = 4;
        fatorSeg = 19.3 / fator;

        if (comp_alt <= 0.5)
        {
            beta = 0.085;
        }
        else
        {
            if (comp_alt > 0.5 && comp_alt <= 0.67)
            {
                beta = 0.1156;
            }
            if (comp_alt > 0.67 && comp_alt <= 1)
            {
                beta = 0.16;
            }
            if (comp_alt > 1 && comp_alt <= 1.5)
            {
                beta = 0.26;
            }
            if (comp_alt > 1.5 && comp_alt <= 2)
            {
                beta = 0.32;
            }
            if (comp_alt > 2 && comp_alt <= 2.5)
            {
                beta = 0.35;
            }
            if (comp_alt > 2.5)
            {
                beta = 0.37;
            }

        }
        valor1 = altura * 10;
        valor1 = Math.Pow(valor1, 3);
        valor1 = beta * valor1;

        espessura = Math.Sqrt(valor1 * 0.00001 / fatorSeg);
        espessura = Math.Round(espessura);

        lblResp2.Text = "A espessura dos vidros do aquário deve ser de " + espessura + " mm.";

        txtComp.Text = string.Empty;
        txtLarg.Text = string.Empty;
        txtAlt.Text = string.Empty;
    }
}