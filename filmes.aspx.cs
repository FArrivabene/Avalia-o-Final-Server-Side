using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lusomundo
{
  public partial class filmes : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      if (Session["logadoRegisto"] == null)
      {
        Response.Redirect("home.aspx");
      }
    }

    protected void btn_alterarPass_Click(object sender, EventArgs e)
    {
      Response.Redirect("alterar_pw.aspx");
    }
  }
}