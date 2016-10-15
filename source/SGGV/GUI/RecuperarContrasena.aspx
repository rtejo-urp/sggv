<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RecuperarContrasena.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Recuperación de Contraseña</h2>
    
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#F7F6F3" 
            BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
            Font-Names="Verdana" Font-Size="0.8em" 
        onsendingmail="PasswordRecovery1_SendingMail">
            <SubmitButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#284775" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <MailDefinition BodyFileName="~/Account/EMail.txt" 
                From="desarrollo@golosinastrome.com" Subject="Recuperacion de contraseña ">
            </MailDefinition>
            <SuccessTextStyle Font-Bold="True" ForeColor="#5D7B9D" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:PasswordRecovery>
    
</asp:Content>

