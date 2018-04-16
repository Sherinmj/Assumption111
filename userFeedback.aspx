<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="userFeedback.aspx.cs" Inherits="ChurchWebPortal.userFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td colspan="2">
                <h3>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" ForeColor="#0066FF" style="font-weight: 700" Text="FEEDBACK" Font-Names="Times New Roman"></asp:Label>
                </h3>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">
                &nbsp;</td>
            <td style="width: 279px">
                <asp:Label ID="Label2" runat="server" ForeColor="#0066FF" Text="Date"></asp:Label>
            </td>
            <td style="width: 147px">
                <asp:TextBox ID="txtdate" runat="server" Height="38px" Width="220px" CssClass="form-control"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">
                &nbsp;</td>
            <td style="width: 279px">
                <asp:Label ID="Label3" runat="server" ForeColor="#0066FF" Text="Name"></asp:Label>
            </td>
            <td style="width: 147px">
                <asp:TextBox ID="txtname" runat="server" Height="38px" Width="220px" CssClass="form-control"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">
                &nbsp;</td>
            <td style="width: 279px">
                <asp:Label ID="Label4" runat="server" ForeColor="#0066FF" Text="Email ID"></asp:Label>
            </td>
            <td style="width: 147px">
                <asp:TextBox ID="txtemail" runat="server" Height="38px" Width="220px" CssClass="form-control"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">
                &nbsp;</td>
            <td style="width: 279px">
                <asp:Label ID="Label5" runat="server" ForeColor="#0066FF" Text="Contact Number"></asp:Label>
            </td>
            <td style="width: 147px">
                <asp:TextBox ID="txtcontact" runat="server" Height="38px" Width="220px" CssClass="form-control"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">
                &nbsp;</td>
            <td style="width: 279px">
                <asp:Label ID="Label6" runat="server" ForeColor="#0066FF" Text="Feedback"></asp:Label>
            </td>
            <td style="width: 147px">
                <asp:TextBox ID="txtfeedback" runat="server" Height="38px" TextMode="MultiLine" Width="220px" CssClass="form-control"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td style="width: 147px">
                <asp:Button ID="Button1" runat="server" ForeColor="#0066FF" Height="32px" OnClick="Button1_Click" Text="SUBMIT" Width="80px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px" class="modal-sm">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
