﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register TagPrefix="page" TagName="newshow" Src="~/ascx/newshow.ascx" %>
<%@ Register TagPrefix="page" TagName="footer" Src="~/ascx/footer.ascx" %>
<%@ Register TagPrefix="count" TagName="countall" Src="~/ascx/count.ascx" %>
<%@ Register TagPrefix="time" TagName="time_show" Src="~/ascx/time.ascx" %>
<%@ Register TagPrefix="page" TagName="edit_type" Src="~/ascx/edit_type.ascx" %>
<%@ Register TagPrefix="page" TagName="photo_type" Src="~/ascx/photo_type.ascx" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%= title %></title>
    <link rel="stylesheet" type="text/css" href="style.css" title="demo" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="container">

<div id="header"><h1>
    <%= title %></h1></div>

<div id="navcontainer">
<ul id="navlist">
<li><a href="default.aspx">首页</a></li>
<li><asp:HyperLink ID="HyperLink1" runat="server">日志</asp:HyperLink></li>
<li><asp:HyperLink ID="HyperLink2" runat="server">相册</asp:HyperLink></li>
<li><a href="sc.aspx">收藏</a></li>
<li><a href="guest.aspx">留言</a></li>
<li><a href="about.aspx">关于</a></li>
</ul>
</div>
<div id="subheader"></div>


<div id="right">
<time:time_show runat="server" ID="time_show" />
  <page:edit_type runat="server" ID="edit_type" />
<page:photo_type runat="server" ID="photo_type" />

</div>
<page:newshow ID="newshow1" runat="server" />
 <page:footer ID="footer" runat="server" OnLoad="footer_Load" /> 
 <count:countall ID="countall" runat="server" />
  
</div>
    </div>
    </form>
</body>
</html>
