<%@ Page Title="" Language="C#" MasterPageFile="~/Parish_memb.Master" AutoEventWireup="true" CodeBehind="payment_parishmemb.aspx.cs" Inherits="ChurchWebPortal.payment_parishmemb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" colspan="2">
                <h3>&nbsp;</h3>
                <h3>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="ONLINE DONATION"></asp:Label>
                </h3>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" colspan="2">&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="Larger" Text="To donate online please fill the form below"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">
                <asp:Label ID="Label3" runat="server" Text="Full Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Your Name"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">
                <asp:Label ID="Label4" runat="server" Text="Full Postal Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" placeholder="Your Address"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">
                <asp:Label ID="Label5" runat="server" Text="Pincode"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control" placeholder="Pincode"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">
                <asp:Label ID="Label6" runat="server" Text="E-Mail ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Email ID"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">
                <asp:Label ID="Label7" runat="server" Text="Mobile No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmobno" runat="server" CssClass="form-control" placeholder="Mobile Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">
                <asp:Label ID="Label8" runat="server" Text="Donor Pan"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpan" runat="server" CssClass="form-control" placeholder="Pan number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">
                <asp:Label ID="Label9" runat="server" Text="Donation Details"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--select--</asp:ListItem>
                    <asp:ListItem>Qurbana</asp:ListItem>
                    <asp:ListItem>Nercha</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">
                <asp:Label ID="Label10" runat="server" Text="Amount of Donation"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtamt" runat="server" CssClass="form-control" placeholder="Amount"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td class="modal-sm" style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
