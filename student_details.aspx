<%@ Page Title="" Language="C#" MasterPageFile="~/MainAdmin.Master" AutoEventWireup="true" CodeBehind="student_details.aspx.cs" Inherits="ChurchWebPortal.student_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="nav-justified">
        <tr>
            <td style="width: 282px" class="modal-sm">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 279px" class="modal-lg">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 282px;">
                &nbsp;</td>
            <td style="height: 26px; width: 52px;">
                &nbsp;</td>
            <td colspan="3" style="height: 26px">
                <h3>&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" ForeColor="#0066FF" style="font-weight: 700" Text="SUNDAY SCHOOL STUDENT DETAILS" Font-Names="times new roman"></asp:Label>
                </h3>
            </td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 279px" class="modal-lg">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">
                &nbsp;</td>
            <td style="width: 52px">
                &nbsp;</td>
            <td style="width: 279px" class="modal-lg">
                <asp:Label ID="Label2" runat="server" ForeColor="#0066FF" Text="Student Name" Font-Names="times new roman" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname"  runat="server"  CssClass="form-control" Width="200px" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 279px" class="modal-lg">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">
                &nbsp;</td>
            <td style="width: 52px">
                &nbsp;</td>
            <td style="width: 279px" class="modal-lg">
                <asp:Label ID="Label3" runat="server" ForeColor="#0066FF" Text="Date of Birth" Font-Names="times new roman" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdob" runat="server" CssClass="form-control" TextMode="Date" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 279px" class="modal-lg">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">
                &nbsp;</td>
            <td style="width: 52px">
                &nbsp;</td>
            <td style="width: 279px" class="modal-lg">
                <asp:Label ID="Label16" runat="server" ForeColor="#0066FF" Text="Age" Font-Names="times new roman" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtage" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 279px" class="modal-lg">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">
                &nbsp;</td>
            <td style="width: 52px">
                &nbsp;</td>
            <td style="width: 279px" class="modal-lg">
                <asp:Label ID="Label4" runat="server" ForeColor="#0066FF" Text="Standard" Font-Names="times new roman" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstandard" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 279px" class="modal-lg">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">
                &nbsp;</td>
            <td style="width: 52px">
                &nbsp;</td>
            <td style="width: 279px" class="modal-lg">
                <asp:Label ID="Label5" runat="server" ForeColor="#0066FF" Text="Teacher" Font-Names="times new roman" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true" AutoPostBack="true" Height="38px" Width="229px">
                    <asp:ListItem>--Select--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 279px" class="modal-lg">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">
                &nbsp;</td>
            <td style="width: 52px">
                &nbsp;</td>
            <td style="width: 279px" class="modal-lg">
                <asp:Label ID="Label6" runat="server" ForeColor="#0066FF" Text="Half Yearly Examination Mark Obtained" Font-Names="times new roman" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txthalfyr" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 279px" class="modal-lg">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">
                &nbsp;</td>
            <td style="width: 52px">
                &nbsp;</td>
            <td style="width: 279px" class="modal-lg">
                <asp:Label ID="Label7" runat="server" ForeColor="#0066FF" Text="Final Year Examination Mark Obtained" Font-Names="times new roman" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfinalyr" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 279px" class="modal-lg">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 279px" class="modal-lg">&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" ForeColor="#0066FF" Text="SUBMIT" OnClick="btnsubmit_Click" Font-Bold="True" Font-Names="times new roman" Font-Size="Medium" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 279px" class="modal-lg">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 279px" class="modal-lg">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 279px" class="modal-lg">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px" class="modal-sm">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 279px" class="modal-lg">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
