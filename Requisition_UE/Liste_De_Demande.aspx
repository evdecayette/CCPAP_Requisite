<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Liste_De_Demande.aspx.cs" Inherits="Requisition_UE.Liste_De_Demande" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Liste De Demande</h1>


    <asp:GridView runat="server" ID="GridList_Demande" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
             <asp:TemplateField HeaderText="Demande">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("Demande")%>'/>
                    </ItemTemplate>
                </asp:TemplateField>


            <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("Date_Soumission")%>'/>
                    </ItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="Personne">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("IdPersonne")%>'/>
                    </ItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="Ministere">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("IdMinistry")%>'/>
                    </ItemTemplate>
                </asp:TemplateField>


             <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                    <asp:LinkButton ID="btnViewDetails"  runat="server" class="btn btn-warning"><i class="bi bi-card-list"></i></asp:LinkButton>                    </ItemTemplate>
                </asp:TemplateField>







            <%--<asp:BoundField HeaderText="Demande" DataField="Demande" SortExpression="Demande" />
            <asp:BoundField HeaderText="Date_Soumission" DataField="Date_Soumission" SortExpression="Date_Soumission" />
            <asp:BoundField DataField="Approuvé" HeaderText="Approuvé" SortExpression="Approuvé" />
            <asp:BoundField DataField="Date_approuvé" HeaderText="Date_approuvé" SortExpression="Date_approuvé" />
            <asp:BoundField DataField="Exécuter" HeaderText="Exécuter" SortExpression="Exécuter" />
            <asp:BoundField DataField="Remarque" HeaderText="Remarque" SortExpression="Remarque" />--%>
        </Columns>
    </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" SelectCommand="SELECT [Demande],[IdPersonne],[IdMinistry], [Date Soumission] AS Date_Soumission, [Approuvé], [Date approuvé] AS Date_approuvé, [Exécuter], [Remarque] FROM [Demande]"></asp:SqlDataSource>
     <%--<div>
        <asp:GridView ID="gvListe_Demande" runat="server" CellPadding="4" ForeColor="#333333"  ShowHeaderWhenEmpty="true" GridLines="None">
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
</asp:Content>
