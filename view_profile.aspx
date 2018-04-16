<%@ Page Title="" Language="C#" MasterPageFile="~/Parish_memb.Master" AutoEventWireup="true" CodeBehind="view_profile.aspx.cs" Inherits="ChurchWebPortal.view_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table class="nav-justified">
        <tr>
            <td style="height: 20px; width: 133px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 133px">&nbsp;</td>
            <td>
                <h3>
                    <asp:Label ID="Label1" runat="server" ForeColor="#0066FF" style="font-weight: 700" Text="PROFILE"></asp:Label>
                </h3>
            </td>
        </tr>
        <tr>
            <td style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 133px">
                <asp:Label ID="Label9" runat="server" Text="Family ID"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblfamilyid" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 133px">
                <asp:Label ID="Label2" runat="server" Text="Family Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblfamilyname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 133px">
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbladdress" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 133px">
                <asp:Label ID="Label4" runat="server" Text="Joining Date"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbljoiningdate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 133px">
                <asp:Label ID="Label5" runat="server" Text="E-Mail ID"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblemail" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 133px">
                <asp:Label ID="Label6" runat="server" Text="Contact Number"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblcontact" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 133px">
                <asp:Label ID="Label7" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblusename" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 133px">
                <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblpassswd" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp; &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="Members Name">
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date of Birth">
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("dob") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Relation to the Family">
                        <ItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("relation") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>
