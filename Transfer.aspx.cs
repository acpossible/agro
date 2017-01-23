using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls.Adapters ;
using System.Configuration;
using System.Data.SqlClient;

public partial class Transfer : System.Web.UI.Page
{
    string dbConn = ConfigurationManager.ConnectionStrings["MetroDBContext"].ToString();
    string acc;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string txtam = Session["val"].ToString();
            if (txtam == "tony") { LB_Welcome.Text = "Robert Miller"; }
            else if (txtam == "robertstq") { LB_Welcome.Text = "Robert Stromqvist"; }
            else if (txtam == "jamesvik") { LB_Welcome.Text = "James Vikstrom"; }
            else if (txtam == "henrikrich") { LB_Welcome.Text = "Henrik Richards"; }
            else if (txtam == "davewd301") { LB_Welcome.Text = "David J. Wood"; }
            else if (txtam == "eliduarte2016") { LB_Welcome.Text = "Eli Duarte"; }
            else if (txtam == "martinez006") { LB_Welcome.Text = "Martinez Jones"; }
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString);
            SqlConnection con = new SqlConnection(dbConn);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM account", con);

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
    protected void Tras_bt_Click(object sender, EventArgs e)
    {
       // string txt=HttpUtility.HtmlEncode( Amount.Text);
       string txt = Amount.Text;
       
        SqlConnection con = new SqlConnection(dbConn);
        con.Open();
        SqlCommand cmd =
            new SqlCommand("INSERT INTO Client_Details (B_Bank_Name, B_Account_Number, B_Account_Name, Transferred_Amount, UserName) VALUES (@B_Bank_Name, @B_Accountnum, @B_Accountna, @Transferred_Amount, @Remarks)", con);
        cmd.Parameters.AddWithValue("@B_Bank_Name", Bank_Name.Text);
        cmd.Parameters.AddWithValue("@B_Accountnum", Account_Number.Text);
        cmd.Parameters.AddWithValue("@B_Accountna", B_name.Text);
        cmd.Parameters.AddWithValue("@Transferred_Amount", txt);
        cmd.Parameters.AddWithValue("@Remarks", Remarks.Text);
        cmd.ExecuteNonQuery();
        con.Close();

        Session["value"] = txt;
        Response.Redirect("Confirmation.aspx" );
    }
       
    
    
    protected void Bank_Name_TextChanged(object sender, EventArgs e)
    {

    }
}