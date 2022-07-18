using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ExCatalogoFinal_joaoLeigo
{
    public partial class contactos : System.Web.UI.Page
    {
        SqlConnection Contact = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\LojaFinal.mdf;Integrated Security=True");

     
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text != "Null" && txtNome.Text != "Null" && txtMsg.Text != "Null" && txtContact.Text != "Null") {
            Contact.Open();

            SqlCommand cmd = Contact.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Insert INTO contacto VALUES('" + txtNome.Text + "', '" + txtMsg.Text + "', '" + txtContact.Text + "', '" + txtEmail.Text + "')";

            cmd.ExecuteNonQuery();
            Contact.Close();

            txtNome.Text = "";
            txtContact.Text = "";
            txtEmail.Text = "";
            txtMsg.Text = "";

            Label1.Text = "Obrigado pela sua mensagem, entraremos em contacto logo que possível";
            Label1.ForeColor = System.Drawing.Color.Green;
        }
            else {
                Label1.Text = "Não foi possivel enviar a sua mensagem, tente mais tarde";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        } 
    }
}