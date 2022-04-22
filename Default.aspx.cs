using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetStudentList();
        }
    }
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-95NFCFR9\SQLEXPRESS;Initial Catalog=crudDB;Integrated Security=True");
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        int s_id = int.Parse(TextBox1.Text);
        string s_name = TextBox2.Text, s_regno = TextBox3.Text, s_department = DropDownList1.SelectedValue, s_batch = TextBox4.Text, s_gender = RadioButtonList1.SelectedValue;
        con.Open();
        SqlCommand cmd = new SqlCommand("exec Student '"+s_id+ "','" + s_name + "','" + s_regno + "','" + s_department + "','" + s_batch + "','" + s_gender + "' ",con);
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Saved');", true);
        GetStudentList();

    }

    void GetStudentList()
    {
        SqlCommand cmd = new SqlCommand("exec StudentList", con);
        SqlDataAdapter sd = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
       
    }



    protected void ButtonEdit_Click(object sender, EventArgs e)
    {
        int s_id = int.Parse(TextBox1.Text);
        string s_name = TextBox2.Text, s_regno = TextBox3.Text, s_department = DropDownList1.SelectedValue, s_batch = TextBox4.Text, s_gender = RadioButtonList1.SelectedValue;
        con.Open();
        SqlCommand cmd = new SqlCommand("exec Edit '" + s_id + "','" + s_name + "','" + s_regno + "','" + s_department + "','" + s_batch + "','" + s_gender + "' ", con);
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
        GetStudentList();
    }

    protected void ButtonDelete_Click(object sender, EventArgs e)
    {
        int s_id = int.Parse(TextBox1.Text);
        con.Open();
        SqlCommand cmd = new SqlCommand("exec StudentDelete '" + s_id + "' ",con);
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
        GetStudentList();
    }
}
