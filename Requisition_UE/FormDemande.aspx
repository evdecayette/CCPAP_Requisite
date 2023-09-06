<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FormDemande.aspx.cs" Inherits="Requisition_UE.FormDemande" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    <div class="input-group input-group-sm mb-3">
    <span class="input-group-text" id="inputGroup-sizing-sm">A l'ordre de:</span>
    <asp:TextBox ID="txtordre" runat="server"></asp:TextBox>

    </div>

    <div class="input-group input-group-sm mb-3">
    <span class="input-group-text" id="inputGroup-sizing-sm">Montant: Gourdes</span>
    <asp:TextBox ID="TextMontant" runat="server"></asp:TextBox>
    </div>

    <div class="input-group input-group-sm mb-3">
    <span class="input-group-text" id="inputGroup-sizing-sm">Demande Faite Par:</span>
    <asp:TextBox ID="TextDemande" runat="server"></asp:TextBox>
    </div>

    <div class="input-group input-group-sm mb-3">
    <span class="input-group-text" id="inputGroup-sizing-sm">Comformement au pieces justificatives</span>
    </div>


    <div class="input-group input-group-sm mb-3">
    <span class="input-group-text" id="inputGroup-sizing-sm">Memo:</span>
    <asp:TextBox ID="TextMemo" runat="server"></asp:TextBox>

    </div>

    <div class="input-group input-group-sm mb-3">
    <span class="input-group-text" id="inputGroup-sizing-sm">Date:</span>
    <asp:TextBox ID="TextDate" runat="server"></asp:TextBox>
    </div>

</asp:Content>
