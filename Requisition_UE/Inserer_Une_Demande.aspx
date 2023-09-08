<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Inserer_Une_Demande.aspx.cs" Inherits="Requisition_UE.Inserer_Une_Demande" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        /* Ajouter de l'espace (30px) à gauche de chaque TextBox */
        .textbox-space {
            margin-left: 30px;
            margin: 20px;
        }


        .card {
            margin-left: 30px;
            margin: 20px;
            height: 150px;
        }
    </style>



    <div class="card" style="width: 18rem;">
    <div class="card-body">
    <asp:TextBox ID="txtordre" class="form-control textbox-space" placeholder="Nom du Ministere" Width="400px" runat="server"></asp:TextBox>
    <textarea class="form-control" name="composeContent" id="Textarea1" placeholder="Decrire Ministere" rows ="7"></textarea>
</div>
        </div>


    <!-- Reste de votre code... -->
    <%--<div>
        <asp:GridView ID="gvDescription_Demande" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>--%>
    
    
  
   

  
        
 <div class="row g-2">
         <div class="col-md">
             <asp:Button ID="btnApply" class="btn btn-outline-primary btn-lg" runat="server" Text="Apply" />
        </div>
    
        <div class="col-md">
           <asp:Button ID="btnCancel" class="btn btn-outline-primary btn-lg" runat="server" Text="Cancel" />  
        </div>
    </div>
</asp:Content>
