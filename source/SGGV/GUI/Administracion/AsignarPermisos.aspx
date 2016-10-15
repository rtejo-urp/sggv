<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AsignarPermisos.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 600px;
        }
        .style4
        {
            text-align: center;
        }
        .style7
        {
            width: 147px;
            text-align: center;
        }
        .style9
        {
            width: 37px;
        }
        .style10
        {
            width: 253px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<h2>Asignacion de Permisos</h2>
    <table class="style1">
        <tr>
            <td class="style4" colspan="3">
                Usuario:
                <asp:DropDownList ID="ddlUsuario" runat="server" AutoPostBack="True" 
                    Height="24px" onselectedindexchanged="ddlUsuario_SelectedIndexChanged" 
                    Width="187px">
                </asp:DropDownList>
                <asp:Button ID="btnRefrescar" runat="server" onclick="btnRefrescar_Click" 
                    Text="Refrescar" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                Permisos no Asignados</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style10" style="text-align: center">
                Permisos Asignados</td>
        </tr>
        <tr>
            <td class="style7" rowspan="4">
                <asp:ListBox ID="lstNoAsignado" runat="server" Height="105px" Width="296px">
                </asp:ListBox>
            </td>
            <td class="style9">
                <asp:Button ID="btnAgregarUno" runat="server" onclick="btnAgregarUno_Click" 
                    Text="&gt;" Width="37px" />
            </td>
            <td class="style10" rowspan="4">
                <asp:ListBox ID="lstAsignado" runat="server" Height="105px" Width="296px">
                </asp:ListBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Button ID="btnEliminarUno" runat="server" onclick="btnEliminarUno_Click" 
                    Text="&lt;" Width="37px" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Button ID="btnAgregarTodos" runat="server" onclick="btnAgregarTodos_Click" 
                    Text="&gt;&gt;" Width="37px" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Button ID="btnEliminarTodos" runat="server" 
                    onclick="btnEliminarTodos_Click" Text="&lt;&lt;" Width="37px" />
            </td>
        </tr>
    </table>
</asp:Content>

