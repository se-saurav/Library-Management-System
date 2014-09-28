<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="LMS.NET_4._0._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
                <div>
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home"/>
                        <asp:MenuItem NavigateUrl="~/About.aspx" Text="About"/>
                    </Items>
                </asp:Menu>
                </div>
                <div style="border:1px solid Gray; padding:0% 30% 0% 30% 0%; width:100%;  min-width:400px;">
                <table style="text-align:right;">
                <tr><td><h1>Please Log-In To Continue</h1></td></tr>
                <tr><td>User ID :</td><td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>
                <tr><td>Password :</td><td>
                    <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox></td></tr>
                <tr><td> </td><td style="text-align:left;"><input id="ckboxrem" type="checkbox" /> Remember Me</td></tr>
                <tr><td> </td><td>
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></td></tr>
                </table>
                </div>
</asp:Content>