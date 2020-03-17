<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SessionApplication.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 146px;
            height: 324px;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        <asp:Button ID="btncreate" BackColor="GreenYellow" runat="server" Text="Create Application" OnClick="btncreate_Click" />
        <br />
        <br />
        <asp:Button ID="btnsearch"  BackColor="GreenYellow" runat="server" Text="Search Application" OnClick="btnsearch_Click" />
    </div>
</asp:Content>
