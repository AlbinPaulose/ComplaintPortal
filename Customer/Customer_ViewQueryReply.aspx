<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Customer_ViewQueryReply.aspx.cs" Inherits="MiniProject_ComplaintRegisteration.Customer.Customer_ViewQueryReply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
    
    <div class="container">
      <div class="row align-items-stretch justify-content-center no-gutters">
        <div class="col-md-7">
          <div class="form h-100 contact-wrap p-5">
            <h3 class="text-center">Reply Details</h3>
            <form class="mb-5" method="post" id="contactForm" name="contactForm">
                <div class="row">
                <div class="col-md-12 form-group mb-3">
                  <label for="budget" class="col-form-label">Product</label>
                    <asp:TextBox ID="PRoductTextBox1" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                </div>
              </div>

              <div class="row mb-5">
                <div class="col-md-12 form-group mb-3">
                  <label for="message" class="col-form-label">Question</label>
                    <asp:TextBox ID="QuestionTextBox"  CssClass="form-control" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                </div>
              </div>
              <div class="row mb-5">
                <div class="col-md-12 form-group mb-3">
                  <label for="budget" class="col-form-label">Reply</label>
                    <asp:TextBox ID="ReplyTextBox" CssClass="form-control" runat="server" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                </div>
              </div>
              
            </form>
          </div>
        </div>
      </div>
    </div>

  </div>
</asp:Content>
