using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppl_300722
{
    public partial class WebForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-TQQIGB6\\SQLEXPRESS; database=WebAppli300722; initial catalog= WebAppli300722; integrated security=true;");
        protected void Page_Load(object sender, EventArgs e)
        {
            Display();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (btnsubmit.Text == "Submit")
            {
                con.Open();
                SqlCommand com = new SqlCommand("insert into   Usertbl(Name,Age,Gender,Email,Phone,Address)values('" + TextName.Text + "','" + TextAge.Text + "','" + TextGen.Text + "','" + TextEmail.Text + "','" + TextPhone.Text + "','" + TextAdderss.Text + "')", con);
                com.ExecuteNonQuery();
                con.Close();
                Display();
                Clear();
            }
            else if (btnsubmit.Text == "Update")
            {
                con.Open();
                SqlCommand com = new SqlCommand("update Usertbl set Name='"+ TextName.Text + "',Age='" + TextAge.Text + "',Gender='" + TextGen.Text + "',Email ='" + TextEmail.Text + "',Phone ='" + TextPhone.Text + "',Address ='" + TextAdderss.Text + "' where Id= '" + ViewState["abc"] + "'", con);
                com.ExecuteNonQuery();
                con.Close();
                Display();
                Clear();
            }

        }
        public void Display()
        {

            con.Open();
            SqlCommand com = new SqlCommand("select * from  Usertbl", con);
            SqlDataAdapter sda = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            grd.DataSource = dt;
            grd.DataBind();

        }
        public void Clear()
        {
            TextName.Text = "";
            TextAge.Text = "";
            TextGen.Text = "";
            TextEmail.Text = "";
            TextPhone.Text = "";
            TextAdderss.Text = "";
            btnsubmit.Text = "Submit";
        }

        protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ABC")
            {
                con.Open();
                SqlCommand com = new SqlCommand("delete from  Usertbl where Id='" + e.CommandArgument + "'", con);
                com.ExecuteNonQuery();
                con.Close();
                Display();
            }
            else if (e.CommandName == "XYZ")
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from  Usertbl where Id='" + e.CommandArgument + "'", con);
                SqlDataAdapter aa = new SqlDataAdapter(com);
                DataTable da = new DataTable();
                aa.Fill(da);
                // com.ExecuteNonQuery();
                con.Close();
                TextName.Text = da.Rows[0][1].ToString();
                TextAge.Text = da.Rows[0][2].ToString();
                TextGen.Text = da.Rows[0][3].ToString();
                TextEmail.Text = da.Rows[0][4].ToString();
                TextPhone.Text = da.Rows[0][5].ToString();
                TextAdderss.Text = da.Rows[0][6].ToString();
                btnsubmit.Text = "Update";
                ViewState["abc"] = e.CommandArgument;
            }
        }
    }
}