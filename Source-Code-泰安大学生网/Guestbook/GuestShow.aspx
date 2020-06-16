<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="BBS_GuestShow, App_Web_y3kmenmn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>阅读留言</title>
<link rel="stylesheet" type="text/css" href="/user/skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="/user/skin/main.css" />
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
<script>

    function CheckDirty() {
        var oEditor = CKEDITOR.instances.TxtContents;
        var value = oEditor.getData();
        var TxtValidateCode = document.getElementById("TxtValidateCode").value;

        if (value == "" || TxtValidateCode == "") {
            if (value == "") {
                var obj2 = document.getElementById("sp2");
                obj2.innerHTML = "<font color='red'>回复内容不能为空！</font>";
            }
            else {
                var obj2 = document.getElementById("sp2");
                obj2.innerHTML = "";
            }
            if (TxtValidateCode == "") {
                var obj3 = document.getElementById("sp1");
                obj3.innerHTML = "<font color='red'>验证码不能为空！</font>";
            } else {
                var obj3 = document.getElementById("sp1");
                obj3.innerHTML = "";
            }
            return false;
        }
        else {
            var obj = document.getElementById("sp2");
            obj.innerHTML = "";
            var obj3 = document.getElementById("sp1");
            obj3.innerHTML = "";
            return true;
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<!-- 顶部代码布局 -->
<div id="m_top">
<h1><a href="/guestbook/"><img src="../App_Themes/UserThem/images/logo_guestbook.jpg" /></a></h1>
<h1 style="float:right;">
<ul>
	<li><a href="/">首页</a></li>
	<li><a href="../user/">用户中心</a></li>
	<li><a href="">图库</a></li>
	<li><a href="###">下载</a></li>
	<li><a href="###">商城</a></li>
	<li><a href="###">论坛</a></li>
	<li style="float:right;width:140px;background:url();"><a href="javascript:alert('设为首页');">设为首页</a> | <a href="javascript:alert('加入收藏页');">加入收藏</a></li>
</ul>
</h1>
</div>

<!-- 正文布局 -->
<div class="s_body">
<div id="g_site">您的位置：<a href="/">网站首页</a>>><a href="/guestbook/">留言中心</a>>>查看留言</div>
<div id="g_show">
<asp:Repeater ID="Repeater1" runat="server">
<ItemTemplate>
<h1><span>[发布者：<%# GetUserName(Eval("UserID","{0}")) %>]</span>留言标题：<%# Eval("Title")%></h1>
<div class="g_show_txt"><%# Eval("TContent")%>
<span>发表日期：<%# Eval("GDate")%></span></div>               
</ItemTemplate>
</asp:Repeater>
</div>

<div class="g_show_page" id="Pager1" runat="server"></div><!--留言分页 -->

<div id="g_send">
<h2>发表回复:</h2>
<div id="g_send_edit">
<textarea cols="80" id="TxtContents" width="580px" height="200px" name="TxtTContent" rows="10" runat="server"></textarea>
<span id="sp2"></span>
<script id="headscript" type="text/javascript">
    //<![CDATA[
    CKEDITOR.replace('TxtContents',
{
    skin: 'v2',
    enterMode: 2,
    shiftEnterMode: 2,
    toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
});
    //]]>
</script>


<input type="hidden" id="txt_Config\" value="" /> <asp:TextBox ID="FilePicPath" runat="server" Text="fbangd" Style="display: none"></asp:TextBox> 
<asp:HiddenField ID="HdnCateID" runat="server" />                
<asp:HiddenField ID="HdnGID" runat="server" />  
<div style="margin:10px">
<div style="width:15%;float:left;font-size:medium"><strong>验证码：</strong></div>
<div style="width:85%;margin-top:3px;float:left"><asp:Image ID="Image1" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px"
        ToolTip="点击刷新验证码" Style="cursor: pointer;line-height:23px; border: 0; vertical-align: middle;" onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
        <asp:TextBox ID="TxtValidateCode" MaxLength="6" runat="server" style="width:70px;border:#CCC solid 1px;height:20px; line-height:23px;" autocomplete="off"></asp:TextBox>
      <span id="sp1"></span></div>
    
</div>             
<asp:Button ID="Button1" runat="server" Text="发表回复" OnClick="Button1_Click" OnClientClick="return CheckDirty()" />
</div>

</div>
</div>

<!-- 版权信息 -->
<div class="cleardiv"></div>
<div class="m_copyright">
<ul><a href=#>关于我们我们</a> | <a href=#>常见问题</a> | <a href=#>使用条款</a> | <a href=#>隐私声明</a> | <a href=#>安全提示</a> | <a href=#>意见反馈</a> | <a href=#>联系我们</a> | <a href=#>招聘信息</a></ul>
<h1>&copy;2010 官方网站 版权所有。</h1>
</div>
</form>
</body>
</html>