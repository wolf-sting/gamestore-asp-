<%@ Page Title="" Language="C#" MasterPageFile="~/Main2.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="NeoArcade.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <link href="css/adminlogin.css" rel="stylesheet" />

    <img src="css/pic/bg2.jpg" id="bg">


    <div class="bod">

        <div class="new">
            <asp:Label ID="Label1" CssClass="tlab" runat="server" Text="ADMIN LOGIN"></asp:Label>
        </div>

        <div class="lable">
            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>

            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Password" Textmode="Password"></asp:TextBox>

            <asp:Button ID="Button1" CssClass="btnln" runat="server" Text="LOG IN" OnClick="Button1_Click" />

            
        </div>

    </div>




</asp:Content>
