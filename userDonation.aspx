<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="userDonation.aspx.cs" Inherits="ChurchWebPortal.userDonation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td colspan="2">
                <h3>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="DONATION CHART" Font-Names="Times New Roman" ForeColor="#0066FF"></asp:Label>
                </h3>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">
                &nbsp;</td>
            <td style="width: 202px">
                <asp:Label ID="Label2" runat="server" Text="Name" Font-Names="Times New Roman" ForeColor="#0066FF"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">
                &nbsp;</td>
            <td style="width: 202px">
                <asp:Label ID="Label3" runat="server" Text="E-Mail ID" Font-Names="Times New Roman" ForeColor="#0066FF"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">
                &nbsp;</td>
            <td style="width: 202px">
                <asp:Label ID="Label4" runat="server" Text="Phone Number" Font-Names="Times New Roman" ForeColor="#0066FF"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtphone" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">
                &nbsp;</td>
            <td style="width: 202px">
                <asp:Label ID="Label5" runat="server" Text="Amount" Font-Names="Times New Roman" ForeColor="#0066FF"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtamt" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">
                &nbsp;</td>
            <td style="width: 202px">
                <asp:Label ID="Label6" runat="server" Text="Purpose" Font-Names="Times New Roman" ForeColor="#0066FF"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpurpose" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="SUBMIT" ForeColor="#0066FF" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 202px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
