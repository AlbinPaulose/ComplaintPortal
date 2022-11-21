<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Admin_ProductPage.aspx.cs" Inherits="MiniProject_ComplaintRegisteration.Admin.Admin_ProductPage" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Customer/gridview_css.css" rel="stylesheet" />
    <div class="content">
    
    <div class="container">
      <div class="row align-items-stretch justify-content-center no-gutters">
        <div class="col-md-7">
          <div class="form h-100 contact-wrap p-5">
            <h3 class="text-center">Add Products</h3>
            <form class="mb-5" method="post" id="contactForm" name="contactForm">
                <div class="row">
                <div class="col-md-12 form-group mb-3">
                  <label for="budget" class="col-form-label"> Product Name</label>
                  
                    <asp:TextBox ID="ProductName_TextBox" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
                </div>
              </div>

              <div class="row mb-5">
                <div class="col-md-12 form-group mb-3">
                  <label for="message" class="col-form-label">Product Price</label>
                    <asp:TextBox ID="ProductPrice_TextBox" runat="server" CssClass="form-control"></asp:TextBox><br />

                </div>
              </div>
              <div class="row justify-content-center">
                <div class="col-md-5 form-group text-center">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-block btn-primary rounded-0 py-2 px-4" Text="Add" OnClick="Button1_Click"/><br /><br />scroll down to view  product details
                  <span class="submitting"></span>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="productid" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" HorizontalAlign="Center" EmptyDataText="There are no records to display" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="true" RowStyle-HorizontalAlign="Left">
            <Columns>
                 <asp:BoundField DataField="productid" HeaderText="ID" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="product_name" HeaderText="Product Name" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="product_price" HeaderText="Product Price" ItemStyle-HorizontalAlign="Center" />
                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" ItemStyle-HorizontalAlign="Center" ItemStyle-ForeColor="Blue" />
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" ItemStyle-HorizontalAlign="Center" ItemStyle-ForeColor="Blue" />
            </Columns>
        </asp:GridView>
</asp:Content>
