<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ProductsPage.aspx.cs" Inherits="MiniProject_ComplaintRegisteration.Admin.ProductsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <center>
            <table>
                <tr>
                    <th colspan="2">Add Products</th>
                </tr>
                <tr>
                    <th>Product Name</th>
                    <td>
                         <asp:TextBox ID="ProductName_TextBox" runat="server"></asp:TextBox><br /><br />
                    </td>
                </tr>
                <tr>
                    <th>
                        Product Price
                    </th>
                    <td>
                       <asp:TextBox ID="ProductPrice_TextBox" runat="server"></asp:TextBox><br />

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                    </td>
                </tr>

            </table>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="productid">
                <Columns>
                    <asp:BoundField DataField="productid" HeaderText="ID" />
                    <asp:BoundField DataField="product-name" HeaderText="Product Name" />
                    <asp:BoundField DataField="product_price" HeaderText="Product Price" />
                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </center>
    </div>

</asp:Content>
