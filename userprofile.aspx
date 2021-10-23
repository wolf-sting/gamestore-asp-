<%@ Page Title="" Language="C#" MasterPageFile="~/Main2.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="NeoArcade.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



         <link href="css/userprofile.css" rel="stylesheet" />

    <img src="css/pic/bg2.jpg" id="bg">

    <div class="container">
        <div class="row1">
            <div class="bod" style="width:60%;">

                <div class="new">
                    <asp:Label ID="Label1" CssClass="tlab" runat="server" Text="Your Profile"></asp:Label>
                    <span style="color:white;"> &emsp;  Account Status -  </span>
                    <asp:Label ID="Label3" runat="server" Text="xxStatusxx" forecolor="white"></asp:Label>
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

                        <div class="lis" style="width: 65%;">
                            <label>Address</label><br />
                            <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="Address"></asp:TextBox>
                        </div>
                    </div>


                    <hr />
                    <span style="color: rgb(231, 64, 162);text-shadow: 0 0 10px #cd1fb6;">Login Credentials</span>

                    <div class="lim">
                        <div class="lis">
                            <label>Username</label><br />
                            <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Username" ReadOnly="true"></asp:TextBox>
                        </div>

                        <div class="lis">
                            <label>Old Password</label><br />
                            <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="Old Password" ReadOnly="true"></asp:TextBox>
                        </div>

                        <div class="lis">
                            <label>New Password</label><br />
                            <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server" placeholder="New Password" ></asp:TextBox>
                        </div>
                    </div>

                    <hr />
                    <asp:Button ID="Button1" CssClass="btnln" runat="server" OnClick="Button1_Click" Text="Update" />


                </div>



            </div>


            <div class="bod" style="width:35%;">

                <div class="new">
                    <asp:Label ID="Label2" CssClass="tlab" runat="server" Text="Your Games"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="&emsp; your gaming info" forecolor="white"></asp:Label>
                </div>
                <hr />

                <div class="lable">
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                </div>
            </div>
        </div>
    </div>




</asp:Content>
