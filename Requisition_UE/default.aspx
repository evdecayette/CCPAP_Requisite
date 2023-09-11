<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Requisition_UE.Forme_Demande" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="col-md-6">
          <h5>Choisissez un Ministère</h5>
          <asp:DropDownList ID="ddlMinistere" runat="server" class="form-select" AutoPostBack="true" OnSelectedIndexChanged="ddlMinistere_SelectedIndexChanged"></asp:DropDownList>      
        </div>

</asp:Content>
