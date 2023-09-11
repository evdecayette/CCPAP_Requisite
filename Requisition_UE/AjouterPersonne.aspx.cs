using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Requisition_UE
{
    public partial class AjouterPersonne : System.Web.UI.Page
    {
        private SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        private SqlCommand cmd;
        public string MinistrySelected;
        private int selectedIndex;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = "";
                lblMessage.Visible = false;

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
            selectedIndex = ddlMinistere.SelectedIndex;


            string query = "SELECT Description FROM Ministries WHERE IdMinistry = @IdMinistry";
            cnn.Open();

            cmd = new SqlCommand(query, cnn);
            cmd.Parameters.AddWithValue("@IdMinistry", MinistrySelected);

            string description = cmd.ExecuteScalar() as string;
            
            lblDescription.Text = description;
            ddlMinistere.Items[selectedIndex].Text = ddlMinistere.SelectedItem.Text;
            cnn.Close();
        }


        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                MinistrySelected = ddlMinistere.SelectedValue;

                cnn.Open();

                string insertQuery = "INSERT INTO Personnes (IdMinistry, Nom, Prenom, Username, Date) SELECT @IdMinistry, @Nom, @Prenom, @Username, @Date WHERE NOT EXISTS (SELECT 1 FROM Personnes WHERE Nom = @Nom AND Prenom = @Prenom AND IdMinistry = @IdMinistry )";

                cmd = new SqlCommand(insertQuery, cnn);

                cmd.Parameters.AddWithValue("@IdMinistry", MinistrySelected);
                cmd.Parameters.AddWithValue("@Nom", txtNom.Text);
                cmd.Parameters.AddWithValue("@Prenom", txtPrenom.Text);
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("G"));


                int rowsAffected = cmd.ExecuteNonQuery();
                cnn.Close();

                if (rowsAffected > 0)
                {
                    lblMessage.Text = "Données Enregistrer avec Succès";
                    lblMessage.ForeColor = System.Drawing.Color.Green;

                }
                else
                {
                    lblMessage.Text = "Désolé, ces données existe déjà!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }


                txtNom.Text = String.Empty;
                txtPrenom.Text = String.Empty;
                txtNom.Text = String.Empty;
                txtUsername.Text = String.Empty;
                lblDescription.Text = String.Empty;
                if (ddlMinistere.Items.Count > 0)
                {
                    ddlMinistere.SelectedValue = ddlMinistere.Items[0].Value;
                }
                

            }
            catch (Exception ex)
            {

                lblMessage.Text = "Problème d'enregistrement: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                lblMessage.Visible = true;
            }


        }

       
    }
}