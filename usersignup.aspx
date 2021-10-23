<%@ Page Title="" Language="C#" MasterPageFile="~/Main2.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="NeoArcade.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <link href="css/usersignup.css" rel="stylesheet" />

    <img src="css/pic/bg2.jpg" id="bg">


    <div class="bod">

        <div class="new">
            <asp:Label ID="Label1" CssClass="tlab" runat="server" Text="USER REGISTRATION"></asp:Label>
        </div>
        <hr />
        <div class="lable">

            <div class="lim">
                <div class="lis">
                    <label>Name</label><br />
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Name"></asp:TextBox>
                </div>

                <div class="lis">
                    <label>Date of Birth</label><br />
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="dd-mm-yyyy" TextMode="Date"></asp:TextBox>
                </div>

                <div class="lis">
                    <label>Contact no.</label><br />
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Contact no." TextMode="Number"></asp:TextBox>
                </div>
            </div>


            <div class="lim">
                <div class="lis">
                    <label>Email ID</label><br />
                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                </div>

                <div class="lis">
                    <label>State</label><br />
                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="State"></asp:TextBox>
                </div>

                <div class="lis">
                    <label>City</label><br />
                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="City"></asp:TextBox>
                </div>
            </div>


            <div class="lim">
                <div class="lis">
                    <label>Pincode</label><br />
                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                </div>

                <div class="lis" style="width:65%;">
                    <label>Address</label><br />
                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="Address"></asp:TextBox>
                </div>
            </div>


            <hr />
            <span>Login Credentials</span>

            <div class="lim">
                <div class="lis">
                    <label>Username</label><br />
                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>
                </div>

                <div class="lis">
                    <label>Password</label><br />
                    <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                </div>
            </div>

            <hr />
            <asp:Button ID="Button1" CssClass="btnln" runat="server" Text="Create Account" OnClick="Button1_Click" />


        </div>

    </div>



</asp:Content>
