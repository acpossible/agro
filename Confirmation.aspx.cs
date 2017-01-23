using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


public partial class Confirmation : System.Web.UI.Page
{
    string dbConn = ConfigurationManager.ConnectionStrings["MetroDBContext"].ToString();
    string acc, txtam; double  bal;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string txtam1 = Session["val"].ToString();
            if (txtam1 == "tony") { LB_Welcome.Text = "Robert Miller"; }
            else if (txtam1 == "robertstq") { LB_Welcome.Text = "Robert Stromqvist"; }
            else if (txtam1 == "jamesvik") { LB_Welcome.Text = "James Vikstrom"; }
            else if (txtam1 == "henrikrich") { LB_Welcome.Text = "Henrik Richards"; }
            else if (txtam1 == "davewd301") { LB_Welcome.Text = "David J. Wood"; }
            else if (txtam1 == "eliduarte2016") { LB_Welcome.Text = "Eli Duarte"; }
            else if (txtam1 == "martinez006") { LB_Welcome.Text = "Martinez Jones"; }
            //txtam = Request.Params ["val"].ToString ();
            SqlConnection co = new SqlConnection(dbConn);
            co.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM account", co);

            SqlDataReader oReader = cmd.ExecuteReader();
            oReader.Read();

            acc = Convert.ToDecimal(oReader["balance"]).ToString("#,#.00#");
            Label1.Text = acc;
        }
        catch (Exception EX)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Auth_bt_Click(object sender, EventArgs e)
    {
        try
        {
            Auth_name.Text = "";
            string user = Request.Form["Auth_name"];
            int a = Convert.ToInt32(user);
            if (a == 274093 || a == 875424 || a == 471528 || a == 897510 || a == 015735)
            {

                txtam = Session["value"].ToString();
                bal = Convert.ToDouble(Label1.Text);
                double am = Convert.ToDouble(txtam);
                double tal = bal - am;
                SqlConnection con = new SqlConnection(dbConn);
                con.Open();
                SqlCommand cm = new SqlCommand("UPDATE account SET balance =@bala, Recent_Amount=@recent", con);
                cm.Parameters.AddWithValue("@bala", tal);
                cm.Parameters.AddWithValue("@recent", am);

                cm.ExecuteNonQuery();

                con.Close();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Metro Bank Transfer Successful! Please save reference code on recent transaction page'); window.location= 'Personal.aspx'</script>");
                //Response.Redirect("Personal.aspx"  );

            }

            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Incorrect Code')</script>");
                // Response.Redirect("Confirmation.aspx");
            }
        }
        catch (Exception EX)
        {
            Response.Redirect("Login.aspx");
        }
    }
}