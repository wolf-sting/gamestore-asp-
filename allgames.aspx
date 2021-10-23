<%@ Page Title="" Language="C#" MasterPageFile="~/Main2.Master" AutoEventWireup="true" CodeBehind="allgames.aspx.cs" Inherits="NeoArcade.allgames" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        footer{
            position:relative !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="css/allgames.css" rel="stylesheet" />

    <img src="css/pic/bg2.jpg" id="bg">



    <div class="contab">
        <h1 id="hadtl">All Games.</h1>
        <div class="conrow">
            <div class="concol">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:neoarcadeDBConnectionString %>" SelectCommand="SELECT * FROM [game_master_tbl]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="game_id" DataSourceID="SqlDataSource1" CssClass="tblew">
                    <Columns>
                        <asp:BoundField DataField="game_id" HeaderText="game_id" ReadOnly="True" SortExpression="game_id" />
                        
                        <asp:TemplateField>
                            <ItemTemplate>
                                <div class="contab2">
                                    <div class="conrow2">
                                        <div class="concol2" style="width:40%;">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("game_img_link") %>' Width="460" Height="215" />
                                        </div>

                                        <div class="concol2" style="width:60%;">
                                            <div class="conrow3">
                                                <div class="concol3" style="font-size:larger">
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("game_title") %>'></asp:Label>
                                                </div>
                                            </div>
                                            <div class="conrow3">
                                                <div class="concol3">

                                                    Genre - <asp:Label ID="Label2" runat="server" Text='<%# Eval("genre") %>'></asp:Label>

                                                </div>
                                            </div>
                                            <div class="conrow3">
                                                <div class="concol3">
                                                    Developer - <asp:Label ID="Label3" runat="server" Text='<%# Eval("developer_name") %>'></asp:Label>
                                                    &emsp;|&emsp; Publisher - <asp:Label ID="Label4" runat="server" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                </div>
                                            </div>
                                            <div class="conrow3">
                                                <div class="concol3">
                                                    Release Date - <asp:Label ID="Label5" runat="server" Text='<%# Eval("release_date") %>'></asp:Label>
                                                    &emsp;|&emsp; Cost - &#8377;<asp:Label ID="Label6" runat="server" Text='<%# Eval("game_cost") %>'></asp:Label>
                                                </div>
                                            </div>
                                            <div class="conrow3">
                                                <div class="concol3">
                                                    Description - <asp:Label ID="Label7" runat="server" Text='<%# Eval("game_description") %>'></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>


</asp:Content>
