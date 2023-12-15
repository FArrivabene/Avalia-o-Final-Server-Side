using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lusomundo
{
  public partial class home : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      if (Session["logadoRegisto"] == null)
      {
        Response.Redirect("registrar.aspx");
      }
    }

    protected void signInEnter_Click(object sender, EventArgs e)
    {
      if (email2.Text == $"{Session["nome"].ToString()}" && password2.Text == $"{Session["password"].ToString()}")
      {
        Session["logadoLogin"] = "sim";
        Response.Redirect("filmes.aspx");
      }
      else
      {
        Response.Redirect("home.aspx");
      }
    }

    protected void signUp_Click(object sender, EventArgs e)
    {
      Response.Redirect("registrar.aspx");
    }
  }
}