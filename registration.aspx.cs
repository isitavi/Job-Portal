using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void phoneno_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if(ImageUploader.HasFile){
            HttpPostedFile postedFile = ImageUploader.PostedFile;
            string fileName = Path.GetFileName(postedFile.FileName);
            String fileExtension = Path.GetExtension(fileName);

            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png" ||
                fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".bmp")
            {
                Stream stream= postedFile.InputStream;
                BinaryReader reader = new BinaryReader(stream);
                byte[] byteimage=reader.ReadBytes((int)stream.Length);

                string strbase64 = Convert.ToBase64String(byteimage);

                Image.ImageUrl = "data:Image/png;base64,"+strbase64;
            }
            else { 
                
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        calendar.Visible = true;
    }
    protected void calendar_SelectionChanged(object sender, EventArgs e)
    {
        caltext.Text = calendar.SelectedDate.ToShortDateString();
        calendar.Visible = false;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["jobdb"].ToString());
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "insert into projectdb(name,fname,mname,address,postcode,phoneno,email,dob,nationality,religion,laguage,maritalstatus,vins,dept,cgpa,passyear,colins,cgroup,colgpa,colses,colpass,scins,scgroup,scses,scpass,scgpa,workexp,workyears,pub,pubno,interest,pass,repass,country) values('" + name.Text + "','" + fname.Text + "','" + mname.Text + "','" + address.Text + "','" + postcode.Text + "','" + phoneno.Text + "','" + email.Text + "','" + caltext.Text + "','" + national.Text + "','" + religion.Text + "','" + lang.Text + "','" + marital.Text + "','" + uni.Text + "','" + deptname.Text + "','" + cgpa.Text + "','" + pass.Text + "','" + colins.Text + "','" + cgroup.Text + "','" + colres.Text + "','" + colses.Text + "','" + colpass.Text + "','" + sins.Text + "','" + scgroup.Text + "','" + scses.Text + "','" + scpass.Text + "','" + scgpa.Text + "','" + workexp.Text + "','" + workyear.Text + "','" + pub.Text + "','" + pubno.Text + "','" + interest.Text + "','" + pass.Text + "','"
        +repass.Text+"','"+country.Text+"')";
        com.ExecuteNonQuery();
        con.Close();
        Response.Write("registered sucessfully");
    }
}