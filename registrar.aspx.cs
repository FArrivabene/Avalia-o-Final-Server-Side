using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lusomundo
{
  public partial class registrar : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_registar_Click(object sender, EventArgs e)
    {
      if(tb_passUser.ToString().Length < 8)
      {
        lbl_msgErroPass.Text = "Palavra passe não contém 8 caracteres!";
      }
      else
      {
        Session["nome"] = $"{tb_nomeUser.Text}";
        Session["password"] = $"{tb_passUser.Text}";
        Session["logadoRegisto"] = "sim";

        Response.Redirect("home.aspx");
      }      
    }
  }
}