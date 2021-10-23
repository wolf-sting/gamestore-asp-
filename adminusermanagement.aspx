<%@ Page Title="" Language="C#" MasterPageFile="~/Main2.Master" AutoEventWireup="true" CodeBehind="adminusermanagement.aspx.cs" Inherits="NeoArcade.adminusermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <link href="css/adminusermanagement.css" rel="stylesheet" />

    <img src="css/pic/bg2.jpg" id="bg">

    <div class="container">
        <div class="row1">
            <div class="bod" style="width:45%;">

                <div class="new">
                    <asp:Label ID="Label1" CssClass="tlab" runat="server" Text="Member Details"></asp:Label>
                </div>
                <hr />
                <div class="lable">

                    <div class="lim">
                        <div class="lis">
                            <label>User ID</label><br />
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="User ID"></asp:TextBox>
                        </div>
                        <div class="lis">
                            <label>Name</label><br />
                            <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="Name" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div class="lis">
                            <label>Account Status</label><br />
                            <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Account Status" ReadOnly="true"></asp:TextBox>
                        </div>

                        
                    </div>


                    <div class="lim">
                        <div class="lis">
                            <label>Date of Birth</label><br />
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="dd-mm-yyyy" TextMode="Date" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div class="lis">
                            <label>Contact no.</label><br />
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Contact no." TextMode="Number" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div class="lis">
                            <label>Email ID</label><br />
                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Email ID" TextMode="Email" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>


                    <div class="lim">
                        <div class="lis">
                            <label>State</label><br />
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="State" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div class="lis">
                            <label>City</label><br />
                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="City" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div class="lis">
                            <label>Pincode</label><br />
                            <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Pincode" TextMode="Number" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>

                    <div class="lim">
                        <div class="lis" style="width: 95%;">
                            <label>Address</label><br />
                            <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="Address" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>


                    
                    
                
                        
                            <asp:Button ID="Button3" CssClass="btnln" runat="server" Text="Status->Active" OnClick="Button3_Click" ForeColor="green" />
                        
                            <asp:Button ID="Button4" CssClass="btnln" runat="server" Text="Status->Pending" OnClick="Button4_Click" ForeColor="yellow" />
                       
                            <asp:Button ID="Button5" CssClass="btnln" runat="server" Text="Status->DeActive" OnClick="Button5_Click" ForeColor="orange" />
                        
                 
                    
                    <asp:Button ID="Button1" CssClass="btnln" runat="server" Text="Go" OnClick="Button1_Click"/>
                    <asp:Button ID="Button2" CssClass="btnln" runat="server" Text="Delete User Permanently" OnClick="Button2_Click" width="60%" ForeColor="red" />


                </div>



            </div>


            <div class="bod" style="width:50%;">

                <div class="new">
                    <asp:Label ID="Label2" CssClass="tlab" runat="server" Text="Member List"></asp:Label>
                </div>
                <hr />

                <div class="lable">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:neoarcadeDBConnectionString %>" SelectCommand="SELECT [username], [full_name], [account_status], [contact_no], [email], [state], [city] FROM [user_master_tbl]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1" BackColor="DarkSlateGray" Width="90%" BorderColor="DarkSlateGray" ForeColor="White">
                        <Columns>
                            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                            <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                            <asp:BoundField DataField="account_status" HeaderText="account_status" SortExpression="account_status" />
                            <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>




</asp:Content>
