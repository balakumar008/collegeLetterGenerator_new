using System;
using System.Data;

namespace collegeLetterGenerator_new
{
    public partial class History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadHistory();
            }
        }

        private void LoadHistory()
        {
            DataTable dt = Session["LetterHistory"] as DataTable;

            if (dt != null)
            {
                gvHistory.DataSource = dt;
                gvHistory.DataBind();
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
    }
}