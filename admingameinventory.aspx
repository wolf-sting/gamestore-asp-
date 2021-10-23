<%@ Page Title="" Language="C#" MasterPageFile="~/Main2.Master" AutoEventWireup="true" CodeBehind="admingameinventory.aspx.cs" Inherits="NeoArcade.admingameinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <link href="css/admingameinventory.css" rel="stylesheet" />

    <img src="css/pic/bg2.jpg" id="bg">

    <div class="container">
        <div class="row1">
            <div class="bod" style="width:45%;">

                <div class="new">
                    <asp:Label ID="Label1" CssClass="tlab" runat="server" Text="Game Details"></asp:Label>
                </div>
                <hr />
                <div class="lable">

                    <div class="lim">
                        <div class="lis">
                            <label>Game ID</label><br />
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="ID"></asp:TextBox>
                        </div>
                        <div class="lis" style="width:60%;">
                            <label>Game Title</label><br />
                            <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="Title"></asp:TextBox>
                        </div> 
                    </div>


                    <div class="lim">
                        <div class="lis">
                            <div class="lis2">
                                <label>Release Date</label><br />
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="dd-mm-yyyy" TextMode="Date"></asp:TextBox>
                            </div>
                            <div class="lis2">
                                <label>Publisher Name</label><br />
                                <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                                    <asp:ListItem Text="select" Value="select" />
                                    <asp:ListItem Text="pub 1" Value="pub 1" />
                                    <asp:ListItem Text="pub 2" Value="pub 2" />
                                    <asp:ListItem Text="pub 3" Value="pub 3" />
                                    <asp:ListItem Text="pub 4" Value="pub 4" />
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="lis">
                            <div class="lis2">
                                <label>Developer Name</label><br />
                            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                <asp:ListItem Text="select" Value="select"/>
                                <asp:ListItem Text="dev 1" Value="dev 1" />
                                <asp:ListItem Text="dev 2" Value="dev 2"/>
                                <asp:ListItem Text="dev 3" Value="dev 3"/>
                                <asp:ListItem Text="dev 4" Value="dev 4"/>
                            </asp:DropDownList>
                            </div>
                            <div class="lis2">
                                <label>Cost</label><br />
                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="₹0000" TextMode="number"></asp:TextBox>
                            </div>
                        </div>
                        <div class="lis">
                            
                                <label>Genre</label><br />
                            <asp:ListBox ID="ListBox1" class="form-control" height="70%" runat="server" SelectionMode="Multiple" Rows="6">
                                <asp:ListItem Text="action" Value="action"/>
                                <asp:ListItem Text="adventure" Value="adventure" />
                                <asp:ListItem Text="casual" Value="casual"/>
                                <asp:ListItem Text="indie" Value="indie"/>
                                <asp:ListItem Text="massively multiplayer" Value="massively multiplayer"/>
                                <asp:ListItem Text="racing" Value="racing"/>
                                <asp:ListItem Text="rpg" Value="rpg"/>
                                <asp:ListItem Text="simultion" Value="simultion"/>
                                <asp:ListItem Text="sports" Value="sports"/>
                                <asp:ListItem Text="strategy" Value="strategy"/>
                            </asp:ListBox>
                            
                        </div>
                    </div>



                   

                    <div class="lim">
                        <div class="lis" style="width: 95%;">
                            <label>Game Description</label><br />
                            <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="Game Description"></asp:TextBox>
                        </div>
                    </div>


  
                    <asp:FileUpload ID="FileUpload1" class="form-control" width="60%" height="4%" runat="server" />
                     <asp:Button ID="Button4" CssClass="btnln" runat="server" Text="Go" OnClick="Button4_Click" />
                    
                    <asp:Button ID="Button1" CssClass="btnln" runat="server" Text="Add" ForeColor="green" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" CssClass="btnln" runat="server" Text="Update" ForeColor="yellow" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" CssClass="btnln" runat="server" Text="Delete" ForeColor="red" OnClick="Button3_Click" />


                </div>



            </div>


            <div class="bod" style="width:50%;">

                <div class="new">
                    <asp:Label ID="Label2" CssClass="tlab" runat="server" Text="Game Inventory List"></asp:Label>
                </div>
                <hr />

                <div class="lable">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:neoarcadeDBConnectionString %>" SelectCommand="SELECT [game_id], [game_title], [genre], [game_description], [game_img_link] FROM [game_master_tbl]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="game_id" DataSourceID="SqlDataSource1" BackColor="DarkSlateGray" Width="90%" BorderColor="DarkSlateGray" ForeColor="White">
                        <Columns>
                            <asp:BoundField DataField="game_id" HeaderText="game_id" ReadOnly="True" SortExpression="game_id" />
                            <asp:BoundField DataField="game_title" HeaderText="game_title" SortExpression="game_title" />
                            <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                            <asp:BoundField DataField="game_description" HeaderText="game_description" SortExpression="game_description" />
                            <asp:BoundField DataField="game_img_link" HeaderText="game_img_link" SortExpression="game_img_link" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>





</asp:Content>
