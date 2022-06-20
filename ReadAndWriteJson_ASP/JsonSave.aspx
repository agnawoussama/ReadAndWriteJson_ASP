<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JsonSave.aspx.cs" Inherits="ReadAndWriteJson_ASP.JSON" %>

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
            <asp:Label ID="Label1" runat="server" Text="CIN"></asp:Label>
            <asp:TextBox ID="txtbxCin" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqfv1" ControlToValidate="txtbxCin" runat="server" ForeColor="Red" ErrorMessage="Cin Obligatoire"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Nom"></asp:Label>
            <asp:TextBox ID="txtbxName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqfv2" ControlToValidate="txtbxName" runat="server" ForeColor="Red" ErrorMessage="Name Obligatoire"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
            <asp:TextBox ID="txtbxAge" TextMode="Number" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqfv3" ControlToValidate="txtbxAge" runat="server" ForeColor="Red" ErrorMessage="Age Obligatoire"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="btnAdd" runat="server" Text="Ajouter" OnClick="btnAdd_Click" />
            <asp:Button ID="btnSaveJson" causesvalidation="false" runat="server" Text="Save Json" OnClick="btnSaveJson_Click"  />
            <br /><br />
            <asp:BulletedList ID="BulletedListObjects" runat="server"></asp:BulletedList>
        </div>
    </form>
</body>
</html>
