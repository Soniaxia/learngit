<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <br />
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
            
            
            style="z-index: 1; left: 212px; top: 28px; position: absolute; height: 233px; width: 472px; font-size: x-large; font-family: 华文行楷; margin-top: 0px; background-color: #CCFF99; color: #003366;">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" />
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>


</asp:Content>

