<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FormDemande.aspx.cs" Inherits="Requisition_UE.FormDemande" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /* Ajouter de l'espace (30px) à gauche de chaque TextBox */
        .textbox-space {
            margin-left: 30px;
            margin: 20px;
        }
    </style>

    <asp:TextBox ID="txtordre" class="form-control textbox-space" placeholder="A l'ordre de" Width="400px" runat="server"></asp:TextBox>

    <asp:TextBox ID="TextMontant" class="form-control textbox-space" placeholder="Montant(Gourdes): " Width="400px" runat="server"></asp:TextBox>

    <asp:TextBox ID="TextDemande" class="form-control textbox-space" placeholder="Demande Faite Par: " Width="400px" runat="server"></asp:TextBox>

    <div class="input-group input-group-sm mb-3">
        <span class="input-group-text" id="inputGroup-sizing-sm">Comformement au pièces justificatives</span>
    </div>

    <asp:TextBox ID="TextMemo" class="form-control textbox-space" placeholder="Memo: " Width="400px" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextDate" class="form-control textbox-space" placeholder="Date: " Width="400px" runat="server"></asp:TextBox>
    <%--<asp:PlaceHolder ID="CalendarPlaceholder" runat="server"></asp:PlaceHolder>--%>


    <!-- Reste de votre code... -->
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
    <div>
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
           
            <asp:TextBox ID="txtdecision" class="form-control " placeholder="Décision Prise par" runat="server"></asp:TextBox>

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

</asp:Content>
