using System;
using System.Data;

namespace collegeLetterGenerator_new
{
    public partial class GenerateLetter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string registerNo = txtRegisterNo.Text.Trim();
            string department = txtDepartment.Text.Trim();
            string year = ddlYear.SelectedItem.Text;
            string letterType = ddlLetterType.SelectedItem.Text;
            string toPerson = ddlTo.SelectedItem.Text;
            string reason = txtReason.Text.Trim();
            DataTable dt = Session["LetterHistory"] as DataTable;

            if (dt == null)
            {
                dt = new DataTable();

                dt.Columns.Add("StudentName");
                dt.Columns.Add("RegisterNo");
                dt.Columns.Add("Department");
                dt.Columns.Add("LetterType");
                dt.Columns.Add("Date");
            }

            DataRow row = dt.NewRow();

            row["StudentName"] = name;
            row["RegisterNo"] = registerNo;
            row["Department"] = department;
            row["LetterType"] = letterType;
            row["Date"] = DateTime.Now.ToString("dd-MM-yyyy");

            dt.Rows.Add(row);

            row["LetterType"] = letterType;
            row["Date"] = DateTime.Now.ToString("dd-MM-yyyy");

    

            // இதுக்குப் பிறகு நேராக Response.Clear();
            Response.Clear();

            Response.Write("<html>");
            Response.Clear();

            Response.Write("<html>");
            Response.Write("<head>");

            Response.Write("<title>College Permission Letter</title>");

            Response.Write("<style>");

            Response.Write("body{font-family:Arial;padding:50px;background:#fff;}");
            Response.Write(".letter{max-width:800px;margin:auto;padding:40px;}");
            Response.Write("h1{text-align:center;}");
            Response.Write(".right{text-align:right;}");
            Response.Write("p{font-size:16px;line-height:1.6;}");

            Response.Write("</style>");

            Response.Write("</head>");
            Response.Write("<body>");

            Response.Write("<div class='letter'>");

            // Title
            Response.Write("<h1>COLLEGE"+letterType.ToUpper()+"</h1>");

            Response.Write("<hr/>");

            // Date
            Response.Write("<p class='right'>Date: "
                + DateTime.Now.ToString("dd-MM-yyyy")
                + "</p>");

            // FROM
            Response.Write("<p>");
            Response.Write("From,<br>");
            Response.Write("<b>" + name + "</b><br>");
            Response.Write(registerNo + "<br>");
            Response.Write("St. Joseph's College");
            Response.Write("</p>");

            // TO
            Response.Write("<p>");
            Response.Write("To,<br>");
            Response.Write("The <b>" + toPerson + "</b>,<br>");
            Response.Write("St. Joseph's College");
            Response.Write("</p>");

            // Subject
            Response.Write("<p>");
            Response.Write("<b>Subject: " + letterType + "</b>");
            Response.Write("</p>");

            // Greeting
            Response.Write("<p>");
            Response.Write("Respected Sir/Madam,");
            Response.Write("</p>");

            // Student details
            Response.Write("<p>");

            Response.Write("I am <b>" + name + "</b>, ");
            Response.Write("Register Number <b>" + registerNo + "</b>, ");
            Response.Write("studying in <b>" + year + "</b> ");
            Response.Write("in the Department of <b>"
                + department
                + "</b>.");

            Response.Write("</p>");

            // Request
            Response.Write("<p>");

            Response.Write("I kindly request you to grant me permission ");
            Response.Write("for the following reason:");

            Response.Write("</p>");

            // Reason
            Response.Write("<p><b>");
            Response.Write(reason);
            Response.Write("</b></p>");

            // Closing
            Response.Write("<p>");

            Response.Write("Therefore, I kindly request you to consider ");
            Response.Write("my request and grant me permission.");

            Response.Write("</p>");

            Response.Write("<p>Thank you.</p>");

            // Signature
            Response.Write("<br/>");

            Response.Write("<p>");
            Response.Write("Yours faithfully,<br><br>");
            Response.Write("<b>" + name + "</b><br>");
            Response.Write(registerNo);
            Response.Write("</p>");

            Response.Write("</div>");

            Response.Write("<div style='text-align:center;margin-top:30px;'>");
            Response.Write("<button onclick='window.print()' style='padding:12px 25px;font-size:16px;cursor:pointer;'>Print Letter</button>");
            Response.Write("</div>");
            Response.Write("<div style='text-align:center;margin-top:15px;'>");
            Response.Write("<a href='Dashboard.aspx' style='padding:12px 25px;background:#555;color:white;text-decoration:none;border-radius:5px;'>Back to Home</a>");
            Response.Write("</div>");
            Response.Write("</body>");
            Response.Write("</html>");

            Response.End();
        }
    }
}