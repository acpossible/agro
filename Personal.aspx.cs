using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;

public partial class Personal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string acc, rec;
            string txtam = Session["val"].ToString();
            if (txtam == "tony") { LB_Welcome.Text = "Robert Miller"; }
            else if (txtam == "robertstq") { LB_Welcome.Text = "Robert Stromqvist"; }
            else if (txtam == "jamesvik") { LB_Welcome.Text = "James Vikstrom"; }
            else if (txtam == "henrikrich") { LB_Welcome.Text = "Henrik .B. Richards"; }
            else if (txtam == "davewd301") { LB_Welcome.Text = "David J. Wood"; }
            else if (txtam == "eliduarte2016") { LB_Welcome.Text = "Eli Duarte"; }
            else if (txtam == "martinez006") { LB_Welcome.Text = "Martinez Jones"; }
            string dbConn = ConfigurationManager.ConnectionStrings["MetroDBContext"].ToString();
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString);
            SqlConnection con = new SqlConnection(dbConn);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM account", con);

            SqlDataReader oReader = cmd.ExecuteReader();
            oReader.Read();
            Label1.Text = "";
            acc = Convert.ToDecimal(oReader[0]).ToString("#,#.00#");
            rec = Convert.ToDecimal(oReader[1]).ToString("#,#.00#");
            Label1.Text = acc; Label2.Text = acc; Recnt.Text = rec; //B_Bal.Text = acc;

            while (oReader.Read())
            {

                //matchingPerson.lastName = oReader["LastName"].ToString();                       
            }

            con.Close();
        }
        catch (Exception EX)
        {
            Response.Redirect("Login.aspx");
        }
    }
}