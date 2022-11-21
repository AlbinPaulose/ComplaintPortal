<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Admin_QueryReply.aspx.cs" Inherits="MiniProject_ComplaintRegisteration.Admin.Admin_QueryReply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
    
    <div class="container">
      <div class="row align-items-stretch justify-content-center no-gutters">
        <div class="col-md-7">
          <div class="form h-100 contact-wrap p-5">
            <h3 class="text-center">Reply Query</h3>
            <form class="mb-5" method="post" id="contactForm" name="contactForm">
                <div class="row">
                <div class="col-md-12 form-group mb-3">
                  <label for="budget" class="col-form-label">Product</label>
                     <asp:TextBox ID="PRoductTextBox1" runat="server" ReadOnly="True" class="form-control"></asp:TextBox>
                </div>
              </div>

                <div class="row mb-5">
                <div class="col-md-12 form-group mb-3">
                  <label for="budget" class="col-form-label">Question</label>
                     <asp:TextBox ID="QuestionTextBox" class="form-control" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                </div>
              </div>

                <div class="row mb-5">
                <div class="col-md-12 form-group mb-3">
                  <label for="budget" class="col-form-label">Reply</label>

                     <asp:TextBox ID="ReplyTextBox" class="form-control" runat="server" ReadOnly="False" TextMode="MultiLine"></asp:TextBox>
                </div>
              </div>

                <div class="row justify-content-center">
                <div class="col-md-5 form-group text-center">
                    <asp:Button ID="Button1" runat="server" Text="Reply" OnClick="Button1_Click" class="btn btn-block btn-primary rounded-0 py-2 px-4" />
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
