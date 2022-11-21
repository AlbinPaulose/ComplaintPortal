<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Customer_QueryPage.aspx.cs" Inherits="MiniProject_ComplaintRegisteration.Customer.Customer_QueryPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="gridview_css.css" rel="stylesheet" />
   <div class="content">
    
    <div class="container">
      <div class="row align-items-stretch justify-content-center no-gutters">
        <div class="col-md-7">
          <div class="form h-100 contact-wrap p-5">
            <h3 class="text-center">Ask any Question?</h3>
            <form class="mb-5" method="post" id="contactForm" name="contactForm">
                <div class="row">
                <div class="col-md-12 form-group mb-3">
                  <label for="budget" class="col-form-label">Select Product</label><br />

                  <asp:DropDownList style="width:550px;border-radius:0;"  ID="DropDownList1" runat="server" AutoPostBack="True">
                      <asp:ListItem>Select any product</asp:ListItem>
                  </asp:DropDownList>
                </div>
              </div>

              <div class="row mb-5">
                <div class="col-md-12 form-group mb-3">
                  <label for="message" class="col-form-label">Query?</label>
                    <asp:TextBox ID="QuestionTextBox" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
              </div>
              <div class="row justify-content-center">
                <div class="col-md-5 form-group text-center">
                    <asp:Button ID="Button1" CssClass="btn btn-block btn-primary rounded-0 py-2 px-4" runat="server" Text="OK" OnClick="Button1_Click" /><br /><br />scroll down to view details
                  <span class="submitting">scroll down</span>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
 </div>
    <center>
        <h3><b><u> Previous details</u></b></h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" EmptyDataText="There are no records to display" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="true" RowStyle-HorizontalAlign="Left">
            <Columns>
                <asp:BoundField  DataField="queryId" HeaderText="Query Id" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="product_name" HeaderText="Product Name" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="query" HeaderText="Query" ItemStyle-HorizontalAlign="Center" />
               
                <asp:BoundField DataField="query_date" HeaderText="Date" ItemStyle-HorizontalAlign="Center" />
                <asp:HyperLinkField DataNavigateUrlFields="queryId"  DataNavigateUrlFormatString="Customer_ViewQueryReply.aspx?qid={0}" HeaderText="Details" Text="view details" ControlStyle-ForeColor="Blue" ItemStyle-HorizontalAlign="Center" />
            </Columns>
        </asp:GridView>
    </center>
</asp:Content>
