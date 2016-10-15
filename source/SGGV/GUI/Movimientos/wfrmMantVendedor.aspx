<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="wfrmMantVendedor.aspx.cs" Inherits="Movimientos_wfrmMantVendedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
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
     <table style="height: 262px; width: 641px">
     <tr><td id="Empleado1">
<table border="0" cellpadding="0" cellspacing="0" >
 <tr><td>&nbsp; &nbsp;</td><td>
                    <asp:Label ID="Label26" runat="server" Font-Bold="True" Text="Codigo:" 
                                style="color: #546E96; font-size: small;"></asp:Label>
                        </td><td>
                    <asp:Label ID="lblcodigo" runat="server" Font-Bold="True" Visible="False" 
                                style="color: #3366CC"></asp:Label>
                        </td><td>&nbsp;&nbsp;</td></tr>
 <tr><td>&nbsp;</td><td>
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Apellido Paterno:" 
                                style="color: #546E96;" CssClass="style10"></asp:Label>
                        </td><td>
                    <asp:TextBox ID="txtApePat" runat="server" Width="160px"></asp:TextBox>
                            </td><td>
                            <asp:RequiredFieldValidator ID="reqApellido" runat="server" 
                                ControlToValidate="txtApePat" ErrorMessage="Se Requiere Su Apellido Paterno">*</asp:RequiredFieldValidator>
                        </td></tr>
 <tr><td></td><td>
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Apellido Materno:" 
                                style="color: #546E96;" CssClass="style10"></asp:Label>
                        </td><td>
                    <asp:TextBox ID="txtApeMat" runat="server" Width="160px"></asp:TextBox>
                            </td><td>
                            <asp:RequiredFieldValidator ID="ReqApeMat" runat="server" 
                                ControlToValidate="txtApeMat" ErrorMessage="Ingrese Su Apellido Materno">*</asp:RequiredFieldValidator>
                        </td></tr>
 <tr><td>&nbsp;</td><td>
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="Nombre:" 
                                style="color: #546E96;" CssClass="style10"></asp:Label>
                        </td><td>
                    <asp:TextBox ID="txtNombre" runat="server" Width="160px"></asp:TextBox>
                            </td><td>
                            <asp:RequiredFieldValidator ID="ReqNombre" runat="server" 
                                ControlToValidate="txtNombre" ErrorMessage="Ingrese su Nombre">*</asp:RequiredFieldValidator>
                        </td></tr>
 </table>
         </td><td id="Empleado2">
     <table border="0" cellpadding="0" cellspacing="0">
 <tr><td></td><td>
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Direccion:" 
                                style="color: #546E96;" CssClass="style10"></asp:Label>
                        </td><td>
                    <asp:TextBox ID="txtDireccion" runat="server" Width="190px"></asp:TextBox>
                        </td></tr>
 <tr><td>&nbsp;&nbsp; &nbsp;</td><td>
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Edad:" style="color: #546E96;" CssClass="style10"></asp:Label>
                        </td><td>
                    <asp:TextBox ID="txtEdad" runat="server" Width="105px"></asp:TextBox>
                            <asp:CompareValidator ID="valEdad" runat="server" ControlToValidate="txtEdad" 
                                Display="Dynamic" ErrorMessage="Debe ser Numero" Operator="DataTypeCheck" 
                                Type="Integer">*</asp:CompareValidator>
                        </td></tr>
 <tr><td>&nbsp;</td><td>
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="Estado Civil:" 
                                style="color: #546E96; font-size: small;"></asp:Label>
                        </td><td>
                            <asp:DropDownList ID="cboEstadoCivil" runat="server" 
                                Width="152px">
                                <asp:ListItem Value="EstadoCivil">Seleccione Estado Civil</asp:ListItem>
                                <asp:ListItem>Soltero</asp:ListItem>
                                <asp:ListItem>Casado</asp:ListItem>
                            </asp:DropDownList>
                        </td></tr>
 <tr><td>&nbsp;</td><td>
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="Sexo:" 
                                style="color: #546E96; font-size: small;"></asp:Label>
                        </td><td>
                            <asp:DropDownList ID="cboSexo" runat="server" Width="152px">
                                <asp:ListItem Value="Sexo">Seleccione Sexo</asp:ListItem>
                                <asp:ListItem>Masculino</asp:ListItem>
                                <asp:ListItem>Femenino</asp:ListItem>
                            </asp:DropDownList>
                        </td></tr>
 </table>
         </td></tr>
<tr><td id="Empleado3">
 <table border="0" cellpadding="0" cellspacing="0" >
 <tr><td>&nbsp;</td><td>
                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Text="Nº Documento :" 
                                style="color: #546E96; font-size: small;"></asp:Label>
                    </td><td>
                    <asp:TextBox ID="txtDocumento" runat="server" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ReqDni" runat="server" 
                                ControlToValidate="txtDocumento" ErrorMessage="Debe Ingresar su DNI">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regExpresion" runat="server" 
                                ControlToValidate="txtDocumento" ErrorMessage="Su DNI Requiere 8 digitos." 
                                ValidationExpression="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]">*</asp:RegularExpressionValidator>
                            </td></tr>
 <tr><td></td><td>
                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Text="N° IMEI:" 
                                style="color: #546E96; font-size: small;"></asp:Label>
                            </td><td>
                    <asp:TextBox ID="txtIMEI" runat="server" Width="170px"></asp:TextBox>
                        </td></tr>
 <tr><td></td><td>
                    <asp:Label ID="Label24" runat="server" Font-Bold="True" Text="Nº  de Equipo:" 
                                style="color: #546E96; font-size: small;"></asp:Label>
                    </td><td>
                    <asp:TextBox ID="txtEquipo" runat="server" Width="170px"></asp:TextBox>
                    </td></tr>
 </table>
         </td><td id="Empleado4">
         <table border="0" cellpadding="0" cellspacing="0">
         <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td><td>
                    <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" Width="81px" 
                        CssClass="button" /></td><td><asp:Button 
                                ID="btnagregar" runat="server" Text="Agregar" Width="81px" 
                     CssClass="button" />
                        </td></tr>
         <tr><td></td><td>
                        <asp:Button ID="btneliminar" runat="server" Text="Eliminar" Width="81px" 
                            CssClass="button" /></td><td><asp:Button 
                                ID="btnmodificar" runat="server" Text="Modificar" Width="81px" 
                     CssClass="button" />
             </td></tr>
         </table>
         </td></tr>
     </table>
     </td></tr>
 <tr><td>
 <table style="background-color: #FFFFFF; width: 698px;" border="0" cellpadding="0" 
         cellspacing="0">
 <tr><td></td><td>
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" Text="Vendedor :" 
                                style="color: #546E96; font-size: medium;"></asp:Label>
                        </td><td>
                    &nbsp;&nbsp;</td><td>
                            <asp:TextBox ID="txtNomEmpleado" runat="server" AutoPostBack="True" 
                                Width="376px" CssClass="align-left"></asp:TextBox>
                            </td><td></td><td>
                            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="125px" />
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

