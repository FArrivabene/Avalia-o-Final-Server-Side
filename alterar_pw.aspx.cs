using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Security.Cryptography;

namespace Lusomundo
{
  public partial class alterar_pw : System.Web.UI.Page
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
      if (tb_oldPass.Text == $"{Session["password"].ToString()}")
      {

      Regex maisculas = new Regex("[A-Z]");
      Regex minusculas = new Regex("[a-z]");
      Regex numeros = new Regex("[0-9]");
      Regex especiais = new Regex("[^A-Za-z0-9]");
      Regex plica = new Regex("'");

      bool forte = true;

      if (tb_newPass.Text.Length < 6)
      {
        forte = false;
      }
      else if (maisculas.Matches(tb_newPass.Text).Count == 0)
      {
        forte = false;
      }
      else if (minusculas.Matches(tb_newPass.Text).Count == 0)
      {
        forte = false;
      }
      else if (numeros.Matches(tb_newPass.Text).Count == 0)
      {
        forte = false;
      }
      else if (especiais.Matches(tb_newPass.Text).Count == 0)
      {
        forte = false;
      }
      else if (plica.Matches(tb_newPass.Text).Count > 0)
      {
        forte = false;
      }
      if(forte == true)
        {
          lbl_mensagem.Text = "Palavra passe forte.";
          lbl_ecriptado.Text = EncryptString(tb_newPass.Text);
        }
      }
      else
      {
        lbl_mensagem.Text = "Palavra passe fraca ou password antiga errada.";
      }
    }

    public static string EncryptString(string Message)
    {
      string Passphrase = "cinel";
      byte[] Results;
      System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();

      // Step 1. We hash the passphrase using MD5
      // We use the MD5 hash generator as the result is a 128 bit byte array
      // which is a valid length for the TripleDES encoder we use below

      MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();
      byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(Passphrase));

      // Step 2. Create a new TripleDESCryptoServiceProvider object
      TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();

      // Step 3. Setup the encoder
      TDESAlgorithm.Key = TDESKey;
      TDESAlgorithm.Mode = CipherMode.ECB;
      TDESAlgorithm.Padding = PaddingMode.PKCS7;

      // Step 4. Convert the input string to a byte[]
      byte[] DataToEncrypt = UTF8.GetBytes(Message);

      // Step 5. Attempt to encrypt the string
      try
      {
        ICryptoTransform Encryptor = TDESAlgorithm.CreateEncryptor();
        Results = Encryptor.TransformFinalBlock(DataToEncrypt, 0, DataToEncrypt.Length);
      }
      finally
      {
        // Clear the TripleDes and Hashprovider services of any sensitive information
        TDESAlgorithm.Clear();
        HashProvider.Clear();
      }

      // Step 6. Return the encrypted string as a base64 encoded string

      string enc = Convert.ToBase64String(Results);
      enc = enc.Replace("+", "KKK");
      enc = enc.Replace("/", "JJJ");
      enc = enc.Replace("\\", "III");
      return enc;
    }
  }
}