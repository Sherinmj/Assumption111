<%@ Page Title="" Language="C#" MasterPageFile="~/Parish_memb.Master" AutoEventWireup="true" CodeBehind="parishContact.aspx.cs" Inherits="ChurchWebPortal.parishContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 266px">&nbsp;</td>
            <td style="width: 233px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;</td>
            <td style="width: 233px">
                <h3>
                    <asp:Label ID="Label1" runat="server" ForeColor="#0066FF" style="font-weight: 700" Text="Contact Us"></asp:Label>
                </h3>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;</td>
            <td style="width: 233px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Name" ForeColor="#0066FF"></asp:Label>
            </td>
            <td style="width: 233px">
                <asp:TextBox ID="txtname" placeholder="Your Name" runat="server" CssClass="form-control" Height="38px" Width="220px" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;</td>
            <td style="width: 233px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Email ID" ForeColor="#0066FF"></asp:Label>
            </td>
            <td style="width: 233px">
                <asp:TextBox ID="txteid" runat="server" CssClass="form-control" placeholder="Your Email ID" Height="38px" Width="220px" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;</td>
            <td style="width: 233px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Message" ForeColor="#0066FF"></asp:Label>
            </td>
            <td style="width: 233px">
                <asp:TextBox ID="txtmsg" runat="server" CssClass="form-control" TextMode="MultiLine" Height="38px" Width="220px" placeholder="Your Message Here"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;</td>
            <td style="width: 233px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;</td>
            <td style="width: 233px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;</td>
            <td style="width: 233px">
                <asp:Button ID="btnsend" runat="server" Font-Bold="True" ForeColor="#0066FF" Text="SEND" OnClick="btnsend_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;</td>
            <td style="width: 233px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;</td>
            <td style="width: 233px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
