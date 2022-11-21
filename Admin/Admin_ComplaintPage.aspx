<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Admin_ComplaintPage.aspx.cs" Inherits="MiniProject_ComplaintRegisteration.Admin.Admin_ComplaintPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="../Customer/gridview_css.css" rel="stylesheet" />

    <center>
        <h3><u><i>Complaints</i></u></h3>
        <table>
            <tr>
                <th>Complaints from</th>
                <td></td>
                <td>
                    <asp:DropDownList ID="FromDate" runat="server"></asp:DropDownList>

                </td>
                <td>
                    <asp:DropDownList ID="FromMonth" runat="server"></asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="FromYear" runat="server"></asp:DropDownList>
                </td>
                <td></td>
                <th>To</th>
                <td></td>
                <td>
                    <asp:DropDownList ID="ToDate" runat="server"></asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ToMonth" runat="server"></asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ToYear" runat="server"></asp:DropDownList>
                </td>
                <td></td>
                <th>
                    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" CssClass="btn btn-block btn-primary rounded-0 py-2 px-4" />
                </th>
            </tr>
        </table>
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="complaintid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" HorizontalAlign="Center" EmptyDataText="There are no records to display" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="true" RowStyle-HorizontalAlign="Left">
            <Columns>
                <asp:BoundField DataField="complaintid" HeaderText="Complaint Id" ReadOnly="True" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="product_name" HeaderText="Product" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="username" HeaderText="User" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="complaint" HeaderText="Complaint" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Date" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="status" HeaderText="Status" ItemStyle-HorizontalAlign="Center" />
                <asp:TemplateField HeaderText="Change Status">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  >
                            <asp:ListItem>Select </asp:ListItem>
                            <asp:ListItem>Processed</asp:ListItem>
                            <asp:ListItem>Not Processed</asp:ListItem>
                            <asp:ListItem>Cancel</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </center>
</asp:Content>
