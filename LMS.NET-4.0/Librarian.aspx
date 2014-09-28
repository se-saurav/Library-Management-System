<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Librarian.aspx.cs" Inherits="LMS.NET_4._0.Librarian" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        function swmode()
        {
            document.getElementById('divbooks').style.display = "none";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width:100%; height:438px;background-color:white; border-bottom:2px solid gray;">
        <div>
            <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Librarian.aspx?mode=addbook" Text="ADD BOOK"/>
                        <asp:MenuItem NavigateUrl="~/Librarian.aspx?mode=addstudent" Text="ADD STUDENT"/>
                        <asp:MenuItem NavigateUrl="~/Librarian.aspx?mode=addfaculty" Text="ADD FACULTY"/>
                        <asp:MenuItem NavigateUrl="~/Librarian.aspx?mode=searchbook" Text="SEARCH BOOKS"/>
                        <asp:MenuItem NavigateUrl="~/Librarian.aspx?mode=searchstudent" Text="SEARCH STUDENTS"/>
                    </Items>
                </asp:Menu>
        </div>
        <br />
        <div id="divwlcm" runat="server" style="display:block;">Welcome Librarian</div>
        <div id="divaddbook" runat="server" style="display:none; border:2px solid black; ">
            <table>
                <tr><td>Book Code No. : </td><td><asp:TextBox CssClass="txt" ID="TextBox1" runat="server"></asp:TextBox></td></tr>
                <tr><td>Name of book : </td><td><asp:TextBox CssClass="txt" ID="TextBox2" runat="server"></asp:TextBox></td></tr>
                <tr><td>Author of book : </td><td><asp:TextBox CssClass="txt" ID="TextBox3" runat="server"></asp:TextBox></td></tr>
                <tr><td>No of copies : </td><td><asp:TextBox CssClass="txt" ID="TextBox4" runat="server"></asp:TextBox></td></tr>
                <tr><td>No available for issue : </td><td><asp:TextBox CssClass="txt" ID="TextBox5" runat="server"></asp:TextBox></td></tr>
                <tr><td> </td><td><asp:Button ID="Button1" CssClass="btn" runat="server" Text="Submit" OnClick="Button1_Click" /></td></tr>
            </table>
        </div>
        <div id="divaddstd" runat="server" style="display:none; border:2px solid black; ">
            <table>
                <tr><td>Log-In ID : </td><td><asp:TextBox CssClass="txt" ID="TextBox10" runat="server"></asp:TextBox></td></tr>
                <tr><td>Password : </td><td><asp:TextBox CssClass="txt" TextMode="Password" ID="TextBox11" runat="server"></asp:TextBox></td></tr>
                <tr><td>Roll No. : </td><td><asp:TextBox CssClass="txt" ID="TextBox6" runat="server"></asp:TextBox></td></tr>
                <tr><td>Name : </td><td><asp:TextBox CssClass="txt" ID="TextBox7" runat="server"></asp:TextBox></td></tr>
                <tr><td>Course : </td><td><asp:TextBox CssClass="txt" ID="TextBox8" runat="server"></asp:TextBox></td></tr>
                <tr><td>Branch : </td><td><asp:TextBox CssClass="txt" ID="TextBox9" runat="server"></asp:TextBox></td></tr>
                <tr><td> </td><td><asp:Button ID="Button2" CssClass="btn" runat="server" Text="Submit" OnClick="Button2_Click" /></td></tr>
            </table>
        </div>
        <div id="divaddfclt" runat="server" style="display:none;">divaddfclt</div>
        <div id="divsrcstd" runat="server" style="display:none;">
        <div style="text-align:center;">SEARCH STUDENTS : <input id="txtsrcbook" size="40" type="text" /><asp:Button ID="btnsrcstd" runat="server" Text="Search" CssClass="btn" OnClick="btnsrcstd_Click" /></div><br />
    <div style="background-color:#C0C0C0; width:20%; float:left; height:400px;">
        <div style="background-color:Gray; color:black; height:16px; width:100%;">STUDENT ID</div>
    </div>
    <div style="background-color:white; width:20%; float:left; height:400px;">
        <div style="background-color:Gray; color:black; height:16px; width:100%;">STUDENT NAME</div>
    </div>
    <div style="background-color:#C0C0C0; width:20%; float:left; height:400px;">
        <div style="background-color:Gray; color:black; height:16px; width:100%;">BOOKS ISSUED</div>
    </div>
    <div style="background-color:white; width:20%; float:left; height:400px;">
        <div style="background-color:Gray; color:black; height:16px; width:100%;">COURSE</div>
    </div>
    <div style="background-color:#C0C0C0; width:20%; float:left; height:400px;">
        <div style="background-color:Gray; color:black; height:16px; width:100%;">FINE</div>
    </div>
    </div>
        <div id="divsrcbook" style="display:none;" runat="server">
        <div style="text-align:center;">SEARCH BOOKS : <input id="txtsrcstdnt" size="40" type="text" /></div><br />
    <div style="background-color:#C0C0C0; width:20%; float:left; height:400px;">
        <div style="background-color:Gray; color:black; height:16px; width:100%;">BOOK CODE</div>
    </div>
    <div style="background-color:white; width:20%; float:left; height:400px;">
        <div style="background-color:Gray; color:black; height:16px; width:100%;">BOOK NAME</div>
    </div>
    <div style="background-color:#C0C0C0; width:20%; float:left; height:400px;">
        <div style="background-color:Gray; color:black; height:16px; width:100%;">AUTHOR</div>
    </div>
    <div style="background-color:white; width:20%; float:left; height:400px;">
        <div style="background-color:Gray; color:black; height:16px; width:100%;">NUMBER OF COPIES</div>
    </div>
    <div style="background-color:#C0C0C0; width:20%; float:left; height:400px;">
        <div style="background-color:Gray; color:black; height:16px; width:100%;">AVAILABLE COPIES</div>
    </div>
    </div>
    </div>
</asp:Content>
