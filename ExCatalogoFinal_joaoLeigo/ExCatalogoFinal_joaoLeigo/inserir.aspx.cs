using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace ExCatalogoFinal_joaoLeigo
{
    public partial class inserir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String Product = ("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\LojaFinal.mdf;Integrated Security=True");

            SqlConnection SqlPro = new SqlConnection(Product);
           

            
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/Imagem_Produto/") + Path.GetFileName(FileUpload1.FileName));
                string link = "Imagem_Produto/" + Path.GetFileName(FileUpload1.FileName);
                String query = "Insert into Produtos(Nome,Preço,Marca,Tipo,Imagem,Características,Stock)values('" + txtNome.Text + "', '" + txtPreco.Text + "', '" + txtMarca.Text + "', '" + txtTipo.Text + "', '" + link + "', '" + txtCaract.Text + "', '" + txtStock.Text + "')";
                SqlCommand cmd = new SqlCommand(query, SqlPro);
                


                SqlPro.Open();
                cmd.ExecuteNonQuery();
                SqlPro.Close();
                txtNome.Text = "";
                txtPreco.Text = "";
                txtMarca.Text = "";
                txtTipo.Text = "";
                txtCaract.Text = "";
                txtStock.Text = "";
                Label1.Text = "Artigo carregado com sucesso";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "Erro, insira o artigo corretamente";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
}
   