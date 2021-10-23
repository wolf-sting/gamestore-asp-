<%@ Page Title="" Language="C#" MasterPageFile="~/Main2.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="NeoArcade.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <link href="css/userlogin.css" rel="stylesheet" />

    <img src="css/pic/bg2.jpg" id="bg">


    <div class="bod">

        <div class="new">
            <asp:Label ID="Label1" CssClass="tlab" runat="server" Text="USER LOGIN"></asp:Label>
        </div>

        <div class="lable">
            <label style="color:aliceblue;font-size: 20px;">Username</label><br />
            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>
            <label style="color:aliceblue;font-size: 20px;">Password</label><br />
            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Password" Textmode="Password"></asp:TextBox>

            <asp:Button ID="Button1" CssClass="btnln" runat="server" Text="SIGN IN" OnClick="Button1_Click" />

            <asp:Button ID="Button2" CssClass="btnln" runat="server" Text="SIGN UP" OnClick="Button2_Click" />

        </div>

    </div>


</asp:Content>
