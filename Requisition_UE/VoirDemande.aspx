<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="VoirDemande.aspx.cs" Inherits="Requisition_UE.VoirDemande" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="row">
        <div class="col-lg-2">
        </div>

        <div class="col-lg-8">

            
        <div class="row g-2">
         <div class="col-md">
            <asp:Label ID="lbOrdre" runat="server" Text="A l'ordre de: "></asp:Label>
        </div>
    
        <div class="col-md">
             <asp:Label ID="lbMontant" runat="server" Text="Montant(Gourdes): "></asp:Label>
        </div>
    </div>
   
    
     <div class="row g-2">
         <div class="col-md">
            <asp:Label ID="lbdemande" runat="server" Text="Demande faite par: "></asp:Label>
        </div>
    
        <div class="col-md">
             <asp:Label ID="lbpieces" runat="server" Text="Comformement aux pièces justificatives: "></asp:Label>
        </div>
    </div>


     <div class="row g-2">
         <div class="col-md">
            <asp:Label ID="lbmemo" runat="server" Text="Mémo: "></asp:Label>
        </div>
    
        <div class="col-md">
             <asp:Label ID="lbDate" runat="server" Text="Date: "></asp:Label>
        </div>
    </div>

    <div>
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
    </div>
    <div class="text-center" style="margin-left:90px">
        <asp:Label ID="lbTotal" runat="server" Text="Total: "></asp:Label>
    </div>
    
  
   

    <div class="row g-2">
       <div class="col-md">
            <div>
                <asp:Label ID="lbApprouve" runat="server" Text="Approuvé: "></asp:Label>
            </div>
            <div>
                <asp:RadioButton ID="Approuve" Text="Oui" runat="server" />
            </div>
                <asp:RadioButton ID="Pas_Approuve" Text="Non" runat="server" />
       </div>
        <div class="col-md">
            <asp:Label ID="lbdecision" runat="server" Text="Décision Prise par"></asp:Label>
            <asp:TextBox ID="txtdecision" runat="server"></asp:TextBox>
        </div>
    </div>
        
 <div class="row g-2">
         <div class="col-md">
             <asp:Button ID="btnApply" class="btn btn-outline-primary btn-lg" runat="server" Text="Apply" />
        </div>
    
        <div class="col-md">
           <asp:Button ID="btnCancel" class="btn btn-outline-primary btn-lg" runat="server" Text="Cancel" />  
        </div>
    </div>
        </div>

            <div class="col-lg-2">
            </div>
        </div>

</asp:Content>
