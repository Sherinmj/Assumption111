<%@ Page Title="" Language="C#" MasterPageFile="~/MainAdmin.Master" AutoEventWireup="true" CodeBehind="search_memb.aspx.cs" Inherits="ChurchWebPortal.search_memb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 190px">&nbsp;</td>
            <%--<td style="width: 126px">&nbsp;</td>--%>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>
                <h3>
                    <asp:Label ID="Label1" runat="server" ForeColor="#0066FF" style="font-weight: 700" Text="SEARCH FAMILY" Font-Names="times new roman"></asp:Label>
                </h3>
            </td>
        </tr>
        <tr>
            <td style="width: 190px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px">&nbsp;</td>
            <td style="width: 126px">
                <asp:Label ID="Label2" runat="server" Text="Family Name" Font-Names="times new roman" Font-Size="Medium" ForeColor="#0066FF"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="False">
                    <asp:ListItem>--select--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 190px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>
                <asp:Button ID="btnsearch" runat="server" OnClick="btnsearch_Click" Text="SEARCH FAMILY" Width="135px" Font-Bold="True" Font-Names="times new roman" Font-Size="Medium" ForeColor="#0066FF" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td style="width: 190px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Font-Names="times new roman" Font-Size="Medium">
                    <Columns>
                        <asp:TemplateField HeaderText="Family ID">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("family_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Family Name">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("family_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Joining Date">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("joining_date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Contact">
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("contact") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Username">
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Password">
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 190px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
