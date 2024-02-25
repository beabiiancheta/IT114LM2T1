using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(FileUpload.FileName).ToLower();
                if (fileExtension == ".jpg" || fileExtension == ".png")
                {
                    lblmessage.Text = "File uploaded successfully!";
                }
                else
                {
                    lblmessage.Text = "Please upload a JPG or PNG file!";
                }
            }
            else
            {
                lblmessage.Text = "Please select a file to upload!";
            }
        }

    }
}