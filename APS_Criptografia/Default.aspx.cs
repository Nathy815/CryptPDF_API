using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace APS_Criptografia
{
    public partial class _Default : Page
    {
        private static string _secret = "NATHYANDRAFABESTSTUDENTS";
        private static string _iv = "MERECEMOSNOTADEZ";

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Form.Attributes.Add("enctype", "multipart/form-data");
        }

        protected void btnDescriptografar_Click(object sender, EventArgs e)
        {
            using (var aes = Aes.Create())
            {
                aes.KeySize = 128;
                aes.BlockSize = 128;
                aes.Padding = PaddingMode.Zeros;

                aes.Key = Encoding.UTF8.GetBytes(_secret);
                aes.IV = Encoding.UTF8.GetBytes(_iv);

                using (var decryptor = aes.CreateDecryptor(aes.Key, aes.IV))
                {
                    var data = Encoding.UTF8.GetBytes(txtDescriptografia.Text.ToArray());

                    if (data != null)
                    {
                        using (var ms = new MemoryStream())
                        {
                            using (var cryptoStream = new CryptoStream(ms, decryptor, CryptoStreamMode.Write))
                            {
                                cryptoStream.Write(data, 0, data.Length);
                                cryptoStream.FlushFinalBlock();

                                txtCriptografia.Text = Encoding.Default.GetString(ms.ToArray());

                                cryptoStream.Clear();
                                cryptoStream.Close();
                            }

                            ms.Close();
                        }
                    }
                }
            }
        }

        protected void btnCriptografar_Click(object sender, EventArgs e)
        {
            using (var aes = Aes.Create())
            {
                aes.KeySize = 128;
                aes.BlockSize = 128;
                aes.Padding = PaddingMode.Zeros;

                aes.Key = Encoding.ASCII.GetBytes(_secret);
                aes.IV = Encoding.ASCII.GetBytes(_iv);

                using (var encryptor = aes.CreateEncryptor(aes.Key, aes.IV))
                {
                    byte[] data = null;
                    using (var msf = new MemoryStream())
                    {
                        uplCriptografar.FileContent.CopyTo(msf);
                        data = msf.ToArray();
                        msf.Close();
                    }

                    if (data != null)
                    {
                        using (var ms = new MemoryStream())
                        {
                            using (var cryptoStream = new CryptoStream(ms, encryptor, CryptoStreamMode.Write))
                            {
                                cryptoStream.Write(data, 0, data.Length);
                                cryptoStream.FlushFinalBlock();

                                txtCriptografia.Text = Encoding.Default.GetString(ms.ToArray());

                                cryptoStream.Clear();
                                cryptoStream.Close();
                            }

                            ms.Close();
                        }
                    }
                }
            }
        }

        private void Alert(string message)
        {
            var script = string.Format("alert({0});", new JavaScriptSerializer().Serialize(message.ToString()));
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", script, true);
        }
    }
}