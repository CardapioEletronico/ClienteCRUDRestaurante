﻿<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="WebCRUDAdminRest.aspx.cs" Inherits="RestauranteWeb.WebCRUDAdminRest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="formCRUDAdminRest" runat="server">
    <div>
    <br /><br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textBoxUsuario" runat="server" PlaceHolder="Usuario" style="margin-top: 0px"></asp:TextBox>
                    <asp:TextBox ID="textBoxSenha" runat="server" PlaceHolder="Senha" style="margin-top: 0px" TextMode="Password"></asp:TextBox>
                    <asp:DropDownList ID="Restaurantes" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
        <asp:Button ID="btnSelect" runat="server" Text="Select" OnClick="btnSelect_Click" />
        <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
        <asp:Table ID="Table1" runat="server" style="margin-left: 0px">
        </asp:Table>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>