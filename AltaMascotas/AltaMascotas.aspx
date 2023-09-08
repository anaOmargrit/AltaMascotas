<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaMascotas.aspx.cs" Inherits="AltaMascotas.AltaMascotas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label_Nombre" runat="server" Text="Nombre: "></asp:Label>
            <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label_Especie" runat="server" Text="Especie: "></asp:Label>
            <br />
            <asp:RadioButtonList ID="especie" runat="server" OnSelectedIndexChanged="cargaRaza" AutoPostBack="True">
                <asp:ListItem>Perro</asp:ListItem>
                <asp:ListItem>Gato</asp:ListItem>
            </asp:RadioButtonList>

            <br />

            <asp:Label ID="Label_Responsable" runat="server" Text="Persona responsable:"></asp:Label>
            <asp:TextBox ID="responsable" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label_Raza" runat="server" Text="Raza: "></asp:Label>
            <br />
            <asp:ListBox ID="raza" runat="server" style="margin-right: 72px" Width="179px">
                <asp:ListItem Value="0">Elegir la especie...</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            <asp:Button ID="Btn_Agregar" runat="server" Text="Agregar" OnClick="Agregar" />
            <br />
            <br />
            <asp:Label ID="Label_Datos" runat="server" Text="Datos ingresados: "></asp:Label>
            <asp:Label ID="Datos" runat="server" Text=""></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
