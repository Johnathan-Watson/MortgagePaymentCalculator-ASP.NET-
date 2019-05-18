<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Assignment_4.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mortgage Calculator</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl1" runat="server" Text="Mortgage Calculator"></asp:Label>
        </div>
        <br />
        <asp:Label ID="lbl2" runat="server" Text="Enter Principal Amount:"></asp:Label>
        <br />
        <asp:TextBox ID="txtPrincipal" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl3" runat="server" Text="Enter Number of Years:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="radList" runat="server" OnSelectedIndexChanged="radList_SelectedIndexChanged">
			<asp:ListItem Text="15 Years" Value="15"></asp:ListItem>
			<asp:ListItem Text="30 Years" Value="30"></asp:ListItem>
			<asp:ListItem Text="Other" Value="null"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:TextBox ID="txtOther" runat="server" OnTextChanged="txtOther_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl4" runat="server" Text="Choose An Interest Rate:"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList" runat="server" OnSelectedIndexChanged="DropDownList_SelectedIndexChanged">
            <asp:ListItem Text="3.92" Value="3.92"></asp:ListItem>
            <asp:ListItem Text="4.25" Value="4.25"></asp:ListItem>
            <asp:ListItem Text="4.49" Value="4.49"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
        <br />
        <br />
        <asp:Label ID="lblMonthlyPayment" runat="server" Text="Monthly Payment:"></asp:Label>
        <br />
        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnClear" runat="server" Text="CLEAR" OnClick="btnClear_Click" />
    </form>
</body>
</html>
