using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Requisition_UE
{
    public partial class Forme_Demande : System.Web.UI.Page
    {
        private SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        private SqlCommand cmd;
        public string MinistrySelected;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string query = "SELECT IdMinistry, Ministry FROM Ministries";

                cmd = new SqlCommand(query, cnn);
                cnn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                ddlMinistere.DataSource = reader;
                ddlMinistere.DataTextField = "Ministry";
                ddlMinistere.DataValueField = "IdMinistry";
                ddlMinistere.DataBind();
                reader.Close();
            }


        }

        protected void ddlMinistere_SelectedIndexChanged(object sender, EventArgs e)
        {
            MinistrySelected = ddlMinistere.SelectedValue;

            string PageUrl = "Forme_De_Demande.aspx?MinistryId=" + MinistrySelected;
            Response.Redirect(PageUrl);
        }
    }
}