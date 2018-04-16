<%@ Page Title="" Language="C#" MasterPageFile="~/MainAdmin.Master" AutoEventWireup="true" CodeBehind="teacher_details.aspx.cs" Inherits="ChurchWebPortal.teacher_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 366px">&nbsp;</td>
            <td style="width: 177px">&nbsp;</td>
            <td class="modal-sm" style="width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 366px">&nbsp;</td>
            <td style="width: 177px">&nbsp;</td>
            <td class="modal-sm" style="width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 366px">&nbsp;</td>
            <td style="width: 177px">&nbsp;</td>
            <td class="modal-sm" style="width: 323px">
                <h3>
                    <asp:Label ID="Label1" runat="server" ForeColor="#0066FF" style="font-weight: 700" Text="ADD TEACHERS DETAILS" Font-Names="times new roman"></asp:Label>
                </h3>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 366px">&nbsp;</td>
            <td style="width: 177px">&nbsp;</td>
            <td class="modal-sm" style="width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 366px">&nbsp;</td>
            <td style="width: 177px">&nbsp;</td>
            <td class="modal-sm" style="width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 366px">
                &nbsp;</td>
            <td style="width: 177px">
                <asp:Label ID="Label2" runat="server" Text="Teacher Name" ForeColor="#0066FF" Font-Names="times new roman" Font-Size="Medium"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 323px">
                <asp:TextBox ID="txtteacher" runat="server" Height="38px" Width="220px" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 366px">&nbsp;</td>
            <td style="width: 177px">&nbsp;</td>
            <td class="modal-sm" style="width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 366px">
                &nbsp;</td>
            <td style="width: 177px">
                <asp:Label ID="Label3" runat="server" Text="Standard" ForeColor="#0066FF" Font-Names="times new roman" Font-Size="Medium"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 323px">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="38px" Width="220px">
                    <asp:ListItem>--select--</asp:ListItem>
                    <asp:ListItem>I</asp:ListItem>
                    <asp:ListItem>II</asp:ListItem>
                    <asp:ListItem>III</asp:ListItem>
                    <asp:ListItem>IV</asp:ListItem>
                    <asp:ListItem>V</asp:ListItem>
                    <asp:ListItem>VI</asp:ListItem>
                    <asp:ListItem>VII</asp:ListItem>
                    <asp:ListItem>VIII</asp:ListItem>
                    <asp:ListItem>IX</asp:ListItem>
                    <asp:ListItem>X</asp:ListItem>
                    <asp:ListItem>XI</asp:ListItem>
                    <asp:ListItem>XII</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 366px">&nbsp;</td>
            <td style="width: 177px">&nbsp;</td>
            <td class="modal-sm" style="width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 366px; height: 22px;">
                &nbsp;</td>
            <td style="width: 177px; height: 22px;">
                <asp:Label ID="Label5" runat="server" Text="No of Students" ForeColor="#0066FF" Font-Names="times new roman" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 22px; width: 323px">
                <asp:TextBox ID="txtnostud" runat="server" Height="38px" TextMode="Number" Width="220px"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 366px">&nbsp;</td>
            <td style="width: 177px">&nbsp;</td>
            <td class="modal-sm" style="width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 366px">
                &nbsp;</td>
            <td style="width: 177px">
                <asp:Label ID="Label4" runat="server" Text="Joining Date" ForeColor="#0066FF" Font-Names="times new roman" Font-Size="Medium"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 323px">
                <asp:TextBox ID="txtjdate" runat="server" Height="38px" TextMode="Date" Width="220px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 366px">&nbsp;</td>
            <td style="width: 177px"></td>
            <td class="modal-sm" style="width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 366px">&nbsp;</td>
            <td style="width: 177px">&nbsp;</td>
            <td class="modal-sm" style="width: 323px">
                <asp:Button ID="btnsubmit" runat="server" ForeColor="#0066FF" OnClick="btnsubmit_Click" Text="SUBMIT" Font-Bold="True" Font-Names="times new roman" Font-Size="Medium" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 366px">&nbsp;</td>
            <td style="width: 177px">&nbsp;</td>
            <td class="modal-sm" style="width: 323px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 366px">&nbsp;</td>
            <td style="width: 177px">&nbsp;</td>
            <td class="modal-sm" style="width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
