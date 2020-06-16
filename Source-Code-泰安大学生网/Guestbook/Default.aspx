<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="BBS_leaveword, App_Web_y3kmenmn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>留言中心</title>
<link rel="stylesheet" type="text/css" href="../user/skin/user_main.css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
    .style1
    {
        width: 7%;
    }
</style>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>

<script>

    function CheckDirty() {
        var oEditor = CKEDITOR.instances.TxtTContent;
        var value = oEditor.getData();
        var TxtTTitle = document.getElementById("TxtTTitle").value;
        var TxtValidateCode = document.getElementById("TxtValidateCode").value;

        if (value == "" || TxtTTitle == "" || TxtValidateCode=="") {
            if (value == "") {
                var obj = document.getElementById("RequiredFieldValidator1");
                obj.innerHTML = "<font color='red'>内容不能为空！</font>";
            }
            else {
                var obj = document.getElementById("RequiredFieldValidator1");
                obj.innerHTML = "";
            }
            if (TxtTTitle == "") {
                var obj2 = document.getElementById("RequiredFieldValidator2");
                obj2.innerHTML = "<font color='red'>留言标题不能为空！</font>";
            }
            else {
                var obj2 = document.getElementById("RequiredFieldValidator2");
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
            var obj = document.getElementById("RequiredFieldValidator1");
            obj.innerHTML = "";
            var obj2 = document.getElementById("RequiredFieldValidator2");
            obj2.innerHTML = "";
            var obj3 = document.getElementById("sp1");
            obj3.innerHTML = "";
            document.getElementById("EBtnSubmit2").click();
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
	<li><a href="../default.aspx">首页</a></li>
	<li><a href="../user/default.aspx">用户中心</a></li>
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
<div id="g_site">您的位置：<a href="/">网站首页</a>>><span lang="zh-cn">&nbsp;
    </span><a href="Default.aspx">留言中心</a>>><span lang="zh-cn">&nbsp;</span><a href="../User/MyInfo.aspx">管理首页</a></div><div><a href="#GuestBorder">留言板</a></div>
<table class="TableWrap" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td style=" width:200px;">
     <asp:Literal ID="LitCate" runat="server"></asp:Literal>
</td>
<td>
   <b> 分类查询：</b>
   <a href="Default.aspx">所有分类</a><font color="red">|</font>
    <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
    <font color="red">
    <%#GetDataItem()%>|
    </font>
    </ItemTemplate>
    </asp:Repeater>
</td>            
</tr>                
</table>
<div class="cleardiv"></div> 
<div>
    <table>
        <tr>
            
            <td><b>留言ID:</b><asp:TextBox ID="txtID" runat="server"></asp:TextBox></td>
            <td><b>留言标题:</b><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>                 
            <td>
                <asp:Button ID="Button1" runat="server"  Text="搜索" CausesValidation="False" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</div>
<div class="cleardiv"></div> 
<asp:GridView ID="Gdv" DataKeyNames="GID"  
        runat="server" AutoGenerateColumns="False" PageSize="20"  Width="99%" >
<Columns>            
    <asp:BoundField DataField="GID" HeaderText="序号">
    <ItemStyle  CssClass="tdbg" />
    <HeaderStyle Width="5%" />
    </asp:BoundField>                                               
    <asp:TemplateField HeaderText="标题">
        <ItemTemplate>                                
           <a href="GuestShow.aspx?GID=<%# Eval("GID")%>"><%# Eval("Title")%></a>
        </ItemTemplate>
         <ItemStyle  CssClass="tdbg"/>
         <HeaderStyle Width="25%" />
    </asp:TemplateField>
     
    <asp:TemplateField HeaderText="类别">
        <ItemTemplate>                                
           <a href="Default.aspx?CateID=<%# Eval("CateID","{0}")%>"><%# GetCate(Eval("CateID","{0}")) %></a>
        </ItemTemplate>
         <ItemStyle  CssClass="tdbg"  />
         <HeaderStyle Width="10%" />
    </asp:TemplateField>
   
</Columns>
 <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
 <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
 <PagerStyle CssClass="tdbg" ForeColor="Black"  />
 <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#000" BorderStyle="None" Height="30px" Font-Overline="False" />
 <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />                
</asp:GridView>
<table Width="100%">
	    
	        <tr class="tdbg">
                <td height="22" colspan="9"  class="tdbgleft">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条记录
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />条记录/页 转到第<asp:DropDownList ID="DropDownList1"
                        runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    页
                </td>
            </tr>
	    
	</table>
	
<table class="border" width="100%" cellpadding="0" cellspacing="0">
<tr>
    <td class="spacingtitle" colspan="2" ><a name="GuestBorder">
        <asp:Literal ID="LTitle" runat="server" Text="发表帖子"></asp:Literal></a></td>

<tbody id="UCate" runat="server" style="display:none">
<tr class="tdbg">
    <td class="style1">
    <strong>选择分类：</strong>
    </td>
    <td>
        <asp:DropDownList ID="DDLCate" runat="server" Height="20px" Width="100px" >
        </asp:DropDownList>
    </td>
</tr>
</tbody>
<tbody id="TCateName" runat="server" style="display:none">
<tr class="tdbg">
    <td class="style1">
        <strong>分类：</strong>
    </td>
    <td>
      <asp:Label ID="LblCateName" runat="server" Text="Label"></asp:Label>  
    </td> 
</tr>
</tbody>
<tr class="tdbg">
    <td class="style1">
        <strong>标题：</strong>
    </td>
    <td style="width:85%">
        <asp:TextBox ID="TxtTTitle" runat="server" Width="80%" MaxLength="100" />
        <span id="RequiredFieldValidator2"></span>
    </td>
</tr>        
<tr class="tdbg">
    <td class="style1">
        <strong>内容：</strong>                
    </td>
    <td style="width:85%">
        <textarea cols="80" id="TxtTContent" width="580px" height="200px" name="TxtTContent" rows="10" runat="server"></textarea>
<script id="headscript" type="text/javascript">
    //<![CDATA[
    CKEDITOR.replace('TxtTContent',
{
    skin: 'v2',
    enterMode: 2,
    shiftEnterMode: 2,
    toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
});
    //]]>
</script>
<span id="RequiredFieldValidator1"></span>
        <input type="hidden" id="txt_Config\" value="" />
        <asp:TextBox ID="FilePicPath" runat="server" Text="fbangd" Style="display: none;height:20px"></asp:TextBox>
    </td>
</tr>    
<tr  class="tdbg">
<td><strong>验证码：</strong></td>
<td style="width:85%;margin-top:3px"><asp:Image ID="Image1" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px"
                ToolTip="点击刷新验证码" Style="cursor: pointer; border: 0; vertical-align: middle;" onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
                <asp:TextBox ID="TxtValidateCode" MaxLength="6" runat="server" style="width:70px;border:#CCC solid 1px;height:20px; line-height:23px;" autocomplete="off"></asp:TextBox><span id="sp1"></span></td>
</tr>    
<tr class="tdbgbottom">
    <td colspan="2">
    <asp:HiddenField ID="HdnCateID" runat="server" />      
    <input type="button" id="EBtnSubmit" name="EBtnSubmit" value="发表新贴" onclick="CheckDirty()" />
        <asp:Button ID="EBtnSubmit2" Text="发表新贴" OnClick="EBtnSubmit_Click" runat="server" style="display:none" />                              
    </td>
</tr>
</table>
</div>
<!-- 版权信息 -->
<div class="cleardiv"></div>
<div class="m_copyright">
<ul><a href=#>关于我们</a> | <a href=#>常见问题</a> | <a href=#>使用条款</a> | <a href=#>隐私声明</a> | <a href=#>安全提示</a> | <a href=#>意见反馈</a> | <a href=#>联系我们</a> | <a href=#>招聘信息</a></ul>
<h1>&copy;2010 官方网站 版权所有。</h1>
</div>
</form>
</body>
</html>