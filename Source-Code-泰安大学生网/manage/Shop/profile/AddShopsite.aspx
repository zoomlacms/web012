<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_AddShopsite, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加入驻商家</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script>
//url检查
function chkurl(url) {
    var urlRegS = /^http:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^\"\"])*$/;
    if (urlRegS.exec(url)) { return true; }
    else { return false; }
}
function createprolink(id1) {
    var url = document.getElementById(id1).value;
    if (!chkurl(url)) { alert('请输入正确的网址！'); document.getElementById(id1).focus(); return false; }
    else { return true; }
}

</script>
</head>
<body>
   <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span><a href="ShopsiteManage.aspx">商家管理</a></span> &gt;&gt;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td colspan="3" class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft" width="20%"><strong>名称：</strong></td>
            <td>
                <asp:TextBox ID="txtName" runat="server" class="l_input"></asp:TextBox>
                <font color="red">*<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtName" ErrorMessage="名称不能为空!"></asp:RequiredFieldValidator>
                </font>
            </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>商家类别：</strong></td>
            <td>
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="ddClass" runat="server"></asp:DropDownList>
                        <asp:TextBox ID="txtClass" runat="server" class="l_input" Visible="false"></asp:TextBox>
                        <asp:Button ID="btnClass" runat="server" Text="添加分类" class="C_input" CausesValidation="false" onclick="btnClass_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>商家编号:</strong></td>
            <td> <asp:TextBox ID="txtUnionNo" runat="server"  class="l_input"></asp:TextBox>（即联盟的广告主ID）
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                    runat="server" ControlToValidate="txtUnionNo" ErrorMessage="商家编号不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>联盟主:</strong></td>
            <td>
             <asp:DropDownList ID="ddallianceId" runat="server"></asp:DropDownList>
            </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>自定义链接Url:</strong></td>
            <td> <asp:TextBox ID="txtAUrl" runat="server"  class="l_input"></asp:TextBox>（即联盟的广告主的自定义链接Url）
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                    runat="server" ControlToValidate="txtAUrl" ErrorMessage="自定义链接Url不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>反馈标签参数名:</strong></td>
            <td> <asp:TextBox ID="txtUname" runat="server"  class="l_input"></asp:TextBox>（即反馈标签的参数名称）
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" ControlToValidate="txtUname" ErrorMessage="反馈标签参数名不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>Url参数名:</strong></td>
            <td> <asp:TextBox ID="txtToPara" runat="server"  class="l_input"></asp:TextBox>（即自定义链接Url跳转地址的参数名，如果没有请留空）
                </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>链接地址:</strong></td>
            <td> <asp:TextBox ID="txtUrl" runat="server"  class="l_input"></asp:TextBox>
                <font color="red"> 请输入完整Url如:http://zoomla.cn 应为:http://www.zoomla.cn 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                    runat="server" ControlToValidate="txtUrl" ErrorMessage="链接地址不能为空!"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="请输入正确的Url!" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" 
                    ControlToValidate="txtUrl"></asp:RegularExpressionValidator>
                &nbsp;
               </font>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>最高返利比率:</strong></td>
            <td><asp:TextBox ID="txtGroupRebate" runat="server" class="l_input"></asp:TextBox>(即<asp:Label ID="lblgr" runat="server"></asp:Label>的返利比率)</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
          <td class="tdbgleft"><strong>子站返利比率:</strong></td>
          <td><asp:TextBox ID="txtPageRebateRate" runat="server" class="l_input"></asp:TextBox></td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
          <td class="tdbgleft"><strong>上一级子站返利比率:</strong></td>
          <td><asp:TextBox ID="txtPrantPageRebate" runat="server" class="l_input"></asp:TextBox></td>
        </tr>
    <tr class="tdbgbottom">
        <td colspan="2">
            &nbsp;  <asp:Button ID="EBtnSubmit" class="C_input" Text="编辑商家" runat="server" onclick="EBtnSubmit_Click" />
            &nbsp;  <input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='ShopsiteManage.aspx'"
                id="Button2" />
        </td>
    </tr>
    </table>
    </form>
</body>
</html>