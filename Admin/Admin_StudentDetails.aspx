<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Admin_StudentDetails.aspx.cs" Inherits="MiniProject_ComplaintRegisteration.Admin.Admin_StudentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Customer/gridview_css.css" rel="stylesheet" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="userid" HorizontalAlign="Center" OnRowDeleting="GridView1_RowDeleting" EmptyDataText="There are no records to display" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="true" RowStyle-HorizontalAlign="Left" >
    <Columns>
        <asp:BoundField DataField="userid" HeaderText="User Id" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="username" HeaderText="Username" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="email" HeaderText="Email" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="name" HeaderText="Name" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="gender" HeaderText="Gender" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="dob" HeaderText="DOB" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="role" HeaderText="Role" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="status" HeaderText="status" ItemStyle-HorizontalAlign="Center"  />
        <asp:CommandField ButtonType="Link"  DeleteText="Confirm" HeaderText="Confirm" ShowDeleteButton="True" ItemStyle-ForeColor="Blue" />
    </Columns>

    </asp:GridView>
</asp:Content>
