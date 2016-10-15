<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Geolocalizacion.aspx.cs" Inherits="Reportes_Geolocalizacion" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%@ Register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Recorrido de Un Dispositivo</h2>
<asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="True">
        </asp:ScriptManager>
        <table class="style1">
        <tr>
            <td>
                Vendedor:</td>
            <td>
                <asp:DropDownList ID="ddlVendedor" runat="server">
                </asp:DropDownList>
            </td>
            <td>Fecha:
            <asp:TextBox 
                            ID="txtFechaDesde" runat="server" BackColor="#FBFCC7" BorderColor="#CC0066" 
                            BorderStyle="Inset" ForeColor="#003399" Height="15px" Width="90px"></asp:TextBox>
                        <asp:CalendarExtender ID="txtFechaDesde_CalendarExtender" runat="server" 
                            Enabled="True" TargetControlID="txtFechaDesde" 
                    TodaysDateFormat=" d MMMM, yyyy">
                        </asp:CalendarExtender>
                    </td>
            <td>
                <asp:Button ID="btnConsultar" runat="server" Text="Consultar" 
                    onclick="btnConsultar_Click" />
                </td>
        </tr>
        <tr>
            <td colspan="4">
                <cc1:GMap ID="GMap1" runat="server" Width="900px" Height="550px" meta:resourcekey="GMap1Resource1" />
            </td>
        </tr>
        </table>

</asp:Content>

