<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Requisition_UE.Forme_Demande" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="form-floating" style="width:25%" >
          <select class="form-select" id="floatingSelect" aria-label="Choisissez un Ministère">
            <option selected>Choisissez un Ministère</option>
            <option value="1">One</option>
            <option value="2">Two</option>
            <option value="3">Three</option>
          </select>
          <label for="floatingSelect"></label>
        </div>
    
</asp:Content>
