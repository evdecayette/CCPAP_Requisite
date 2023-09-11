<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AjouterPersonne.aspx.cs" Inherits="Requisition_UE.AjouterPersonne" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">

        <div class="col-lg-2">
        </div>

         <div class="col-lg-8">
            <div class="card text-center">
            <div class="card-header">
                 <h5 class="card-title">Ajouter Une Personne</h5>
            </div>
            <div class="card-body">
            
            <div class="row g-3">
              <div class="col-md-6">
                  <asp:TextBox ID="txtNom" runat="server" class="form-control" placeholder="Nom"></asp:TextBox>
              </div>

              <div class="col-md-6">
                <asp:TextBox ID="txtPrenom" runat="server" class="form-control" placeholder="Prénom"></asp:TextBox>
              </div>

              <div class="col-md-6">
                <asp:TextBox ID="txtUsername" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
              </div>

              <div class="col-md-6">
                  <asp:DropDownList ID="ddlMinistere" runat="server" class="form-select" AutoPostBack="true" OnSelectedIndexChanged="ddlMinistere_SelectedIndexChanged"></asp:DropDownList>
              </div>

               <div class="col-md-6">
                 <asp:Label ID="lblDescription" runat="server" Text=""></asp:Label>
              </div>
            
              <div class="col-12 mb-3">
                 <asp:Button ID="btnsubmit" class="btn btn-outline-primary" runat="server" Text="Enregistrer" OnClick="btnsubmit_Click" />
              </div>

            </div>
            <div class="card-footer text-body-secondary">
                 <asp:Label ID="lblMessage" runat="server" Visible="false" Text=""></asp:Label>
            </div>
         </div>

        </div>
         </div>

         <div class="col-lg-2">
        </div>
        </div>

</asp:Content>
