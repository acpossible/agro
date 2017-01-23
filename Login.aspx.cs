using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            string user = Request.Form["USER_NAME"];
            string pass = Request.Form["PASSWORD"];
            if (user == "tony" && pass == "tony" || user == "robertstq" && pass == "stromqvist01" || user == "jamesvik" && pass == "scorpio074" || user == "henrikrich" && pass == "valerie1997" || user == "davewd301" && pass == "SaraGemini9" || user == "eliduarte2016" && pass == "1verysoon" || user == "martinez006" && pass == "national1")
            {
                Session["val"] = user;
                Response.Redirect("Personal.aspx");

            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('This Account is Temporarily Disabled. Please contact our customer support for help.')</script>");
            }
        }
}