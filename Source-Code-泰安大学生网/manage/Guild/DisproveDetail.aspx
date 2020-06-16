<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_DisproveDetail, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>查看举报文章详情</title>

        <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="r_navigation">
		
		<span>后台管理</span>  &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt; <span><a href="Disprove.aspx">举报管理</a></span> &gt;&gt; 举报详情
	</div>
    <div class="clearbox"></div> 
	<table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
        <tr>
            <td class="spacingtitle" colspan="2" style="height: 26px; text-align:center">举报详细内容</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;"><strong>举报序号：</strong></td>
            <td align="left" class="tdbg"><asp:Literal ID="LitFeedbackId" runat="server"></asp:Literal></td>
        </tr>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;"><strong>用户名：</strong></td>
            <td align="left"  class="tdbg"><asp:Literal ID="LitUName" runat="server"></asp:Literal></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;"><strong>公会名称：</strong></td>
            <td align="left"  class="tdbg"><asp:Literal ID="LitGName" runat="server"></asp:Literal></td>
        </tr>
           <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;"><strong>文章标题：</strong></td>
            <td align="left"  class="tdbg"><asp:Literal ID="LitAriceTitle" runat="server"></asp:Literal></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;"><strong>文章类型：</strong></td>
            <td align="left"  class="tdbg"><asp:Literal ID="LitArticeType" runat="server"></asp:Literal></td>
        </tr>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;"><strong>备注说明：</strong></td>
            <td align="left"  class="tdbg"><asp:Literal ID="LitText" runat="server"></asp:Literal></td>
        </tr>
        </table>
        <div style="text-align:center; margin-top:5px;">
        <input id="Button1" type="button" value="返 回" onclick="javascript:window.location.href='Disprove.aspx'" class="C_input"/></div>                    
    </form>
</body>
</html>
