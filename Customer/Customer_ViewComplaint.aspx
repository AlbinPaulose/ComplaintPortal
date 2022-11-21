<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Customer_ViewComplaint.aspx.cs" Inherits="MiniProject_ComplaintRegisteration.Customer.Customer_ViewComplaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="gridview_css.css" rel="stylesheet" />


    <center><h1>View Complaints</h1></center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="complaintid" HorizontalAlign="Center" EmptyDataText="There are no records to display" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="true" RowStyle-HorizontalAlign="Left">
        <Columns>
            <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="complaintid" HeaderText="Complaint Id" />
            <asp:BoundField DataField="product_name" HeaderText="Product" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="complaint" HeaderText="Complaint" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Date" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="status" HeaderText="status" ItemStyle-HorizontalAlign="Center" />
        </Columns>

    </asp:GridView>
</asp:Content>
