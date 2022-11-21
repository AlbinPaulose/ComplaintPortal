<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Admin_QueryPage.aspx.cs" Inherits="MiniProject_ComplaintRegisteration.Admin.Admin_QueryPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <link href="../Customer/gridview_css.css" rel="stylesheet" />

    <center>
        <h3><u><i>Queries</i></u></h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" EmptyDataText="There are no records to display" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="true" RowStyle-HorizontalAlign="Left" >
            <Columns>
                <asp:BoundField DataField="queryId" HeaderText="Id" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="product_name" HeaderText="Product Name" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="username" HeaderText="username" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="query" HeaderText="Query" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField  DataField="reply" HeaderText="Reply" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="query_date" HeaderText="Date" ItemStyle-HorizontalAlign="Center" />
                <asp:TemplateField HeaderText="Reply">
                    <ItemTemplate>
                        <asp:HyperLink runat="server" id="replyid" NavigateUrl='<%#String.Format("~/Admin/Admin_QueryReply.aspx?qid={0}",Eval("queryid")) %>' Text="reply" ForeColor="#0066FF" Visible='<%# Eval("reply").ToString()==" " ? true : false %>'>

                        </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
               </Columns>
        </asp:GridView>
    </center>
</asp:Content>
