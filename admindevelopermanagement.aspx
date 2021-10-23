<%@ Page Title="" Language="C#" MasterPageFile="~/Main2.Master" AutoEventWireup="true" CodeBehind="admindevelopermanagement.aspx.cs" Inherits="NeoArcade.admindevelopermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <link href="css/admindevelopermanagement.css" rel="stylesheet" />

    <img src="css/pic/bg2.jpg" id="bg">

    <div class="container">
        <div class="row1">
            <div class="bod">

                <div class="new">
                    <asp:Label ID="Label1" CssClass="tlab" runat="server" Text="Developer Details"></asp:Label>
                </div>
                <br />
                <div class="lable">

                    <div class="lim">
                        <div class="lis">
                            <label>Developer ID</label><br />
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Developer ID"></asp:TextBox>
                        </div>
                        <br />
                        <div class="lis">
                            <label>Developer Name</label><br />
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Developer Name"></asp:TextBox>
                        </div>

                    </div>


                    


                    <asp:Button ID="Button4" CssClass="btnln" runat="server" Text="Go" OnClick="Button4_Click" />
                    <asp:Button ID="Button1" CssClass="btnln" runat="server" Text="Add" OnClick="Button1_Click" forecolor="Green" />
                    <br />
                    <asp:Button ID="Button2" CssClass="btnln" runat="server" Text="Update" OnClick="Button2_Click" forecolor="yellow" />
                    <asp:Button ID="Button3" CssClass="btnln" runat="server" Text="Delete" OnClick="Button3_Click" ForeColor="red" />


                </div>



            </div>


            <div class="bod">

                <div class="new">
                    <asp:Label ID="Label2" CssClass="tlab" runat="server" Text="Developer List"></asp:Label>
                </div>
                <hr />

                <div class="lable">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:neoarcadeDBConnectionString %>" SelectCommand="SELECT * FROM [developer_master_tbl]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="developer_id" DataSourceID="SqlDataSource1" BackColor="DarkSlateGray" Width="90%" BorderColor="DarkSlateGray" ForeColor="White">
                        <Columns>
                            <asp:BoundField DataField="developer_id" HeaderText="developer_id" ReadOnly="True" SortExpression="developer_id" />
                            <asp:BoundField DataField="developer_name" HeaderText="developer_name" SortExpression="developer_name" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
