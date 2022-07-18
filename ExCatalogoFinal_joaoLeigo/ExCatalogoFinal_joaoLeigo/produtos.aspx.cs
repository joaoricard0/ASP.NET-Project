using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExCatalogoFinal_joaoLeigo
{
    public partial class produtos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["marca"] != null)
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }
            if (Request.QueryString["tipo"] != null)
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource3;
                DataList1.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton2.ForeColor = System.Drawing.Color.Red;
            Response.Redirect("produtos.aspx?marca=Acer");
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?marca=Asus");
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?marca=Apple");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?marca=Dell");
        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?marca=HP");
        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?marca=Mi");
        }
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?marca=Motorola");
        }
        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?marca=Micromax");
        }
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?marca=Lenovo");
        }
        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?marca=LG");
        }
        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?marca=Rato");
        }
        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?marca=Sony");
        }
        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?marca=Samsung");
        }

        protected void LinkAcess_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?tipo=Acessórios_PC");
        }
        protected void LinkLaptop_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?tipo=Laptops");
        }
        protected void LinkTablet_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?tipo=Tablet");
        }
        protected void LinkTelm_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?tipo=Telemóveis");
        }
        protected void LinkTV_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtos.aspx?tipo=Televisões");
        }

    }
}