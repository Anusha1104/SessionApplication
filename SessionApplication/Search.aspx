<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="SessionApplication.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

User Search
    <br />
Use any combination of fields below to search through all customers
  <table>
     
  <tr>
      <td>
          <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
      <td>
          <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
  </tr>
      
      <tr>
          <td>
              <asp:TextBox ID="txtfname" runat="server"></asp:TextBox></td>
          <td>
              <asp:TextBox ID="txtlname" runat="server"></asp:TextBox></td>
      </tr>

      <tr>
          <td>DOB</td>
        
      </tr>

      <tr>
          <td>
              <asp:TextBox ID="dtdob" runat="server" TextMode="Date"></asp:TextBox></td>
      </tr>
  
      <tr>
          <td>
              <asp:Label ID="Label3" runat="server" Text="Application Id"></asp:Label></td>
          <td>
              <asp:Label ID="Label4" runat="server" Text="Application Status"></asp:Label></td>
      </tr>

      <tr>
          <td>
              <asp:TextBox ID="txtappid" runat="server"></asp:TextBox>
          </td>
          <td>
              <asp:DropDownList ID="DropDownList1" runat="server">
                  <asp:ListItem>Approved</asp:ListItem>
              </asp:DropDownList></td>
      </tr>

      <tr>
          <td>
              <asp:Button ID="btnsearch" BackColor="GreenYellow" runat="server" Text="Search" OnClick="btnsearch_Click" /></td>
      </tr>
  </table>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5"></asp:GridView>
</asp:Content>
