<%@ Page Title="" Language="C#" MasterPageFile="~/Main2.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="NeoArcade.adminpublishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <link href="css/adminpublishermanagement.css" rel="stylesheet" />

    <img src="css/pic/bg2.jpg" id="bg">

    <div class="container">
        <div class="row1">
            <div class="bod">

                <div class="new">
                    <asp:Label ID="Label1" CssClass="tlab" runat="server" Text="Publisher  Details"></asp:Label>
                </div>
                <br />
                <div class="lable">

                    <div class="lim">
                        <div class="lis">
                            <label>Publisher ID</label><br />
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Publisher ID"></asp:TextBox>
                        </div>
                        <br />
                        <div class="lis">
                            <label>Publisher Name</label><br />
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Publisher Name"></asp:TextBox>
                        </div>

                    </div>


                    


                    <asp:Button ID="Button4" CssClass="btnln" runat="server" Text="Go" OnClick="Button4_Click" />
                    <asp:Button ID="Button1" CssClass="btnln" runat="server" Text="Add" OnClick="Button1_Click" forecolor="Green"/>
                    <br />
                    <asp:Button ID="Button2" CssClass="btnln" runat="server" Text="Update" OnClick="Button2_Click" forecolor="yellow"/>
                    <asp:Button ID="Button3" CssClass="btnln" runat="server" Text="Delete" OnClick="Button3_Click" forecolor="red"/>


                </div>



            </div>


            <div class="bod">

                <div class="new">
                    <asp:Label ID="Label2" CssClass="tlab" runat="server" Text="Publisher List"></asp:Label>
                </div>
                <hr />

                <div class="lable">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:neoarcadeDBConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1"  BackColor="DarkSlateGray" Width="90%" BorderColor="DarkSlateGray" ForeColor="White">
                        <Columns>
                            <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                            <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
