<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JsonRead.aspx.cs" Inherits="ReadAndWriteJson_ASP.JsonRead" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" BackColor="#FFFBD6" runat="server" Orientation="Horizontal" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <Items>
                <asp:MenuItem Text="Page Save" NavigateUrl="~/JsonSave.aspx" Value="JsonSave"></asp:MenuItem>
                <asp:MenuItem Text="Page Load" NavigateUrl="~/JsonRead.aspx" Value="JsonRead"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#FFCC66" />
        </asp:Menu>
        <br /><br />
        <div>
            <asp:BulletedList ID="BulletedListReadJson" runat="server"></asp:BulletedList>
            <asp:Button ID="btnLoadJson" runat="server" Text="Load Json" OnClick="btnLoadJson_Click" />
        </div>
    </form>
</body>
</html>
