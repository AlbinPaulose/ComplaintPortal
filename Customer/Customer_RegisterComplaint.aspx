<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Customer_RegisterComplaint.aspx.cs" Inherits="MiniProject_ComplaintRegisteration.Customer.Customer_RegisterComplaint" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="content">
    
    <div class="container">
      <div class="row align-items-stretch justify-content-center no-gutters">
        <div class="col-md-7">
          <div class="form h-100 contact-wrap p-5">
            <h3 class="text-center">Add Complaint</h3>
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
                  <label for="message" class="col-form-label">Complaint</label>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" TextMode="MultiLine" cols="30" rows="4" placeholder="Write your message"></asp:TextBox>
                </div>
              </div>
              <div class="row justify-content-center">
                <div class="col-md-5 form-group text-center">
                    <asp:Button ID="Button1" CssClass="btn btn-block btn-primary rounded-0 py-2 px-4" runat="server" Text="Add" OnClick="Button1_Click" />
                  <span class="submitting"></span>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  </div>
</asp:Content>
