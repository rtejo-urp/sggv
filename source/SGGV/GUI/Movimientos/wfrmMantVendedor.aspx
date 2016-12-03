<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="wfrmMantVendedor.aspx.cs" Inherits="Movimientos_wfrmMantVendedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .align-left
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" >
 <tr><td rowspan="4" id="menu" class="style35" >
     &nbsp;</td>
     <td style="text-align: center" id="pnl4" class="style23">
<table style="width: 850px">
<tr><td></td><td class="style2">Mantenimiento de Vendedores</td><td class="style20">
    &nbsp;</td></tr>
</table>
     </td></tr>
 <tr><td class="style36" align="left" >
     &nbsp;</td></tr>
 <tr><td>
 <table style="background-color: #FFFFFF; width: 728px;" border="0" cellpadding="0" 
         cellspacing="0">
 <tr><td></td><td>
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" Text="Vendedor :" 
                                style="color: #546E96; font-size: medium;"></asp:Label>
                        </td><td>
                    &nbsp;&nbsp;</td><td>
                            <asp:TextBox ID="txtNomEmpleado" runat="server" AutoPostBack="True" 
                                Width="193px" CssClass="align-left"></asp:TextBox>
                            </td><td></td><td>
                            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="125px" />
                            <asp:Button 
                                ID="btnagregar" runat="server" Text="Agregar" Width="81px" 
                     CssClass="button" />
                            <asp:Button 
                                ID="btnmodificar" runat="server" Text="Modificar" Width="81px" 
                     CssClass="button" />
                        <asp:Button ID="btneliminar" runat="server" Text="Eliminar" Width="81px" 
                            CssClass="button" />
     </td><td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td></tr>
 </table>
                            </td></tr>
 <tr><td  valign="top">
     <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                        GridLines="Horizontal" Width="840px" style="margin-top: 1px; text-align: center; font-size: x-small; margin-bottom: 0px;" 
                                AllowPaging="True" BackColor="White" 
         BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <RowStyle BackColor="White" ForeColor="#333333" Font-Size="X-Small" />
                        <Columns>
                            <asp:CommandField SelectText="Seleccionar" ShowSelectButton="True" 
                                HeaderText="Selec." ButtonType="Image" 
                                SelectImageUrl="~/img/Enviar.png" >
                            <ControlStyle Height="15px" Width="15px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="IdEmpleado" HeaderText="Id" />
                            <asp:BoundField DataField="ApellidoPaterno" HeaderText="Apellido Pat"  >
                                <HeaderStyle Width="200px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ApellidoMaterno" HeaderText="Apellido Mat" >
                                <HeaderStyle Width="200px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" >
                                <HeaderStyle Width="300px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Direccion" HeaderText="Direccion" >
                                <HeaderStyle Width="300px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Edad" HeaderText="Edad" />
                            <asp:BoundField DataField="EstadoCivil" HeaderText="Estado" />
                            <asp:BoundField DataField="IdEstadoCivil" HeaderText="IdEstadoCivil" 
                                Visible="False" />
                            <asp:BoundField DataField="IdDocumento" HeaderText="IdDocumento" 
                                Visible="False" />
                            <asp:BoundField DataField="Sexo" HeaderText="Sexo" />
                            <asp:BoundField DataField="IdSexo" HeaderText="IdSexo" Visible="False" />
                            <asp:BoundField DataField="IdTipoEmpleado" HeaderText="IdTipoEmpleado" 
                                Visible="False" />
                            <asp:BoundField DataField="TipoEmpleado" HeaderText="TipoEmpleado" />
                            <asp:BoundField DataField="NumDocumento" HeaderText="Documento" />
                            <asp:BoundField DataField="NroEquipo" HeaderText="NroEquipo" />
                            <asp:BoundField DataField="IdEmpleado" HeaderText="IdEmpleado" 
                                Visible="False" />
                        </Columns>
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" 
                            Font-Size="X-Small" />
                    </asp:GridView>
     </td></tr>
 </table>
</asp:Content>

