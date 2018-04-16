<%@ Page Title="" Language="C#" MasterPageFile="~/Parish_memb.Master" AutoEventWireup="true" CodeBehind="view_studentsParishMemb.aspx.cs" Inherits="ChurchWebPortal.view_studentsParishMemb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="nav-justified">
    <tr>
        <td style="width: 243px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 243px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 243px">&nbsp;</td>
        <td>
            <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Names="times new roman" ForeColor="#0066FF" Text="SUNDAY SCHOOL STUDENT DETAILS"></asp:Label>
            </h3>
        </td>
    </tr>
    <tr>
        <td style="width: 243px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 243px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 243px">&nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Font-Names="times new roman" Font-Size="Medium" Width="684px">
                <Columns>
                    <asp:TemplateField HeaderText="Student Name">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Student_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date of Birth">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("dob") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Age">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Standard">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("std") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Teacher">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("teacher") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Half Year Mark">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("halfyr_mark") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Final Year Mark">
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("finalyr_mark") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td style="width: 243px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 243px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 243px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 243px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 243px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 243px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 243px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>
