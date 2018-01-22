<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #main{width:500px;margin:0 auto;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
        <table>
        <tr><td>要发送的邮箱：</td><td><asp:TextBox ID="txtmailTo" runat="server"></asp:TextBox></td><td>(格式：abc123@qq.com)</td></tr>
        <tr><td>主题：</td><td><asp:TextBox ID="txtmailSubject" runat="server"></asp:TextBox></td></tr>
        <tr><td>内容:</td><td><asp:TextBox ID="txtmailContent" Height="100" TextMode="MultiLine"  runat="server"></asp:TextBox></td></tr>    
        </table>
        <asp:Button ID="BtnMail" runat="server" Text="发送" onclick="BtnMail_Click" />
    </div>
    </form>
</body>
</html>
