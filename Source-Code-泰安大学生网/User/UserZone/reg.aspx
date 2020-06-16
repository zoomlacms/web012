<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_reg, App_Web_kfvtjxvv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>注册会员</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_reg.css" />
<script type="text/javascript" src="/js/RiQi.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div id="m_top">
	<h1 class="m_logo"></h1>
	<h1 style="float:right;">
		<ul>
			<li><a href="../">首页</a></li><li><a href="###">新闻</a></li><li><a href="###">图库</a></li><li><a href="###">下载</a></li><li><a href="###">商城</a></li><li><a href="###">论坛</a></li><li style="float:right;width:140px;background:url();"><a href="javascript:alert('设为首页');">设为首页</a> | <a href="javascript:alert('加入收藏');">加入收藏</a></li></ul>
	</h1>
</div>
<!-- 正文布局 -->
<div class="s_body">
<!-- 左边开始 -->
<div class="s_bleft">
	<div class="i_whyj">
		<h1>登陆会员中心您将获得：</h1>
		<ul>
			<li>自由发布信息 </li>
			<li>查看积分与管理空间 </li>
			<li>设定您的个性化空间</li><li>提交您的需求为您服务 </li>
			<li>购物支付多彩商务体验 </li>
		</ul>
		<div class="cleardiv" style="height:15px;"></div>
		<h2 style="color:#FF6600">用户通道</h2>
		<h3><a href="/">快速返回首页</a></h3>
		<h2>站长通道</h2>
		<h3><a href="/manage/login.aspx" target="_blank">进入后台管理</a></h3>
	</div>
</div>
<!-- 左边结束 -->

<!-- 右边开始 -->
<div class="s_bright">
	<div class="rg_inout">
	    <asp:Literal ID="LitControlTreeInfo" runat="server"></asp:Literal>
		<asp:Panel ID="PnlRegStep0" runat="server" Visible="false" Width="100%">未开放注册，请和网站管理员联系！</asp:Panel>
		<asp:Panel ID="PnlRegStep1" runat="server" Visible="false" Width="100%">
		<h1>注册会员</h1>
        <h2>第一步：服务条款和声明<img src="/user/images/regl1.gif" width="242" height="14" /></h2>
<textarea name="textarea" cols="20" rows="2"
                readonly="readonly" style="font-weight: normal; font-size: 9pt; width: 98%;line-height: normal; font-style: normal; height: 310px; font-variant: normal"><asp:Literal ID="LitProtocol" runat="server"></asp:Literal>
			  </textarea>
        <ul>
        <li> </li>
		<li style="width:100%;text-align:center;">
		  <div style="text-align: center">
                <asp:Button ID="BtnRegStep1" runat="server" Text="同意" OnClick="BtnRegStep1_Click" />
                <asp:Button ID="BtnRegStep1NotApprove" runat="server" Text="不同意" OnClick="BtnRegStep1NotApprove_Click" />
            </div>
		
</li>
	</ul>
	  <div class="cleardiv"></div>
	  <!--第二轮开始 -->
            <script type="text/javascript">	
                <!--
                    var secs = 9;
                    var wait = secs * 1000;
                    var btnId = "<%= BtnRegStep1.ClientID %>";
                    document.getElementById(btnId).value = "我同意 [" + secs + "]";
                    document.getElementById(btnId).disabled = true;
                    for(i = 1; i <= secs; i++)
                    {
                        window.setTimeout("Update(" + i + ")", i * 1000);
                    }
                    window.setTimeout("Timer()", wait);
                        			
                    function Update(num)
                    {
                        if(num != secs)
                        {
                            printnr = (wait / 1000) - num;
                            document.getElementById(btnId).value = "我同意 [" + printnr + "]";
                        }
                    }
                        			
                    function Timer()
                    {
                        document.getElementById(btnId).disabled = false;
                        document.getElementById(btnId).value = " 我同意 ";
                    }
                    
                    
                //-->
            </script>

        </asp:Panel>
        <asp:Panel ID="PnlRegStep2" runat="server" Visible="false" Width="100%">
            <script type="text/javascript">
                    function CheckUser()
                    {
                        var userName = document.getElementById("<%= TxtUserName.ClientID %>");
                        var checkUserNameMessage = document.getElementById("CheckUserNameMessage");                        
                        if(userName.value=="")
                        {
                            checkUserNameMessage.innerHTML = "用户名为空";
                            checkUserNameMessage.className = "d_err";
                        }
                        else
                        {
                            CallTheServer(userName.value,"");
                        }
                    }
                    
                    function CallTheServer(arg,context)
                    {
                        var checkUserNameMessage = document.getElementById("CheckUserNameMessage");
                        checkUserNameMessage.className = "";
                        checkUserNameMessage.innerHTML = "<img src=\"../images/loading.gif\" align=\"absmiddle\" />";                        
                        <%= CallBackReference %>
                    }
                    
                    function ReceiveServerData(result)
                    {
                        var checkUserNameMessage = document.getElementById("CheckUserNameMessage");
                        if(result == "true")
                        {
                            checkUserNameMessage.innerHTML = "用户名已经被注册了";
                            checkUserNameMessage.className = "d_err";
                        }
                        
                        if(result == "disabled")
                        {
                            checkUserNameMessage.innerHTML = "该用户名禁止注册";
                            checkUserNameMessage.className = "d_err";
                        }
                        
                        if(result == "false")
                        {
                            checkUserNameMessage.innerHTML = "恭喜您，用户名可以使用！";
                            checkUserNameMessage.className = "d_ok";
                        }
                    }
                    
                    function SwicthSelectFill()
                    {
                        var selectFill = document.getElementById("<%= TableRegisterSelect.ClientID %>");
                        if(selectFill.style.display=="none")
                        {
                            selectFill.style.display="";
                        }
                        else
                        {
                            selectFill.style.display="none";
                        }
                    }

                    
//                    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
                    function EndRequestHandler(sender, args)
                    {
                        if (args.get_error() != undefined){
                        alert("检测到表单中存在HTML代码！");
                        args.set_errorHandled(true);
                        }
                    }
            </script>
           <h1>注册会员</h1>
        <h2>第二步：填写会员信息<img src="/user/images/regl2.gif" width="242" height="14" alt="" /></h2>
<div id="reg" style="width:90%; height:auto">
<table id="TableRegisterMust" runat="server" style="border-collapse: collapse" cellspacing="1"
	cellpadding="2" width="100%" border="0">
	<tr>
		<td class="tdbgleft" style="width: 15%">
			<b>用户名：</b>
		</td>
		<td valign="middle" style="width: 221px">
			<asp:TextBox ID="TxtUserName" class="input1" runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="ReqTxtUserName" runat="server" ControlToValidate="TxtUserName"
				SetFocusOnError="false" ErrorMessage="用户名不能为空" Display="None"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="ValgTextMaxLength" ControlToValidate="TxtUserName"
				ValidationExpression="^[a-zA-Z0-9]{4,20}$" SetFocusOnError="false"
				Display="None" runat="server"></asp:RegularExpressionValidator>
		</td>
	</tr>
	<tr>
		<td class="tdbgleft" style="width: 15%">
		</td>
		<td valign="middle" style="width: 85%">
			<input id="CheckUserName" style="float: left;" type="button" value="检查用户名是否可用" onclick="CheckUser()" /><span
				class="d_default" id="CheckUserNameMessage"></span>
		</td>
	</tr>
	<tr>
		<td class="tdbgleft" style="width: 15%">
			<b>密码：</b>
		</td>
		<td valign="middle" style="width: 221px">
			<asp:TextBox ID="TxtPassword" class="input1" TextMode="Password" runat="server"></asp:TextBox>                        
			<asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" runat="server"
				ControlToValidate="TxtPassword" SetFocusOnError="false" Display="None" ValidationExpression="[\S]{6,}"
				ErrorMessage="密码至少6位"></asp:RegularExpressionValidator>
			<asp:RequiredFieldValidator ID="ReqTxtPassword" runat="server" ControlToValidate="TxtPassword"
				SetFocusOnError="false" Display="None" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr>
		<td class="tdbgleft" style="width: 15%">
			<strong>确认密码：</strong>
		</td>
		<td style="width: 221px">
			<asp:TextBox ID="TxtPwdConfirm" class="input1" TextMode="Password" runat="server"></asp:TextBox>                        
			<asp:RequiredFieldValidator ID="ReqTxtPwdConfirm" runat="server" ControlToValidate="TxtPwdConfirm"
				SetFocusOnError="false" Display="None" ErrorMessage="确认密码不能为空"></asp:RequiredFieldValidator><asp:CompareValidator
					ID="ValCompPassword" runat="server" ControlToValidate="TxtPwdConfirm" ControlToCompare="TxtPassword"
					Operator="Equal" SetFocusOnError="false" Display="None" ErrorMessage="两次密码输入不一致"></asp:CompareValidator>
		</td>
	</tr>
	
	
		<tr>
		<td class="tdbgleft" style="width: 15%">
			<strong>真实姓名：</strong><br />
		</td>
		<td style="width: 221px">
			<asp:TextBox ID="realname" class="input1" runat="server"></asp:TextBox>                        
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="realname"
				SetFocusOnError="false" Display="None" ErrorMessage="真实姓名不能为空"></asp:RequiredFieldValidator></td>
	</tr>
	
		<tr>
		<td class="tdbgleft" style="width: 15%">
			<strong>类别：</strong><br />
		</td>
		<td style="width: 221px">
            <asp:RadioButtonList ID="type" runat="server"  
                RepeatColumns="2" AutoPostBack="true" 
                onselectedindexchanged="type_SelectedIndexChanged1">
                <asp:ListItem Value="0">学生</asp:ListItem>
                <asp:ListItem Value="1">老师</asp:ListItem>
            </asp:RadioButtonList>
		</td>
	</tr>
		<tr runat="server" id="kee">
		<td class="tdbgleft" style="width: 15%">
			<strong>所教科目：</strong><br />
		</td>
		<td style="width: 221px">
          <asp:DropDownList ID="kemu" runat="server">
             
<asp:ListItem Selected="True">数学</asp:ListItem>
<asp:ListItem>英语</asp:ListItem>
<asp:ListItem>物理</asp:ListItem>
<asp:ListItem>化学</asp:ListItem>
<asp:ListItem>历史</asp:ListItem>
<asp:ListItem>地理</asp:ListItem>
<asp:ListItem>科学</asp:ListItem>
<asp:ListItem>语文</asp:ListItem>

           </asp:DropDownList>
         
		
		</td>
	</tr>
		<tr>
		<td class="tdbgleft" style="width: 15%">
			<strong>学校：</strong><br />
		</td>
		<td style="width: 221px">
            <asp:DropDownList ID="school" runat="server">
            </asp:DropDownList>
		
		
		</td>
	</tr>
	
	
	
	
	
		<tr>
		<td class="tdbgleft" style="width: 15%">
			<strong>年级：</strong><br />
		</td>
		<td style="width: 221px">
            <asp:DropDownList ID="banji" runat="server">
               
<asp:ListItem Selected="True">小学四年级</asp:ListItem>
<asp:ListItem>小学五年级</asp:ListItem>
<asp:ListItem>初一</asp:ListItem>
<asp:ListItem>初二</asp:ListItem>
<asp:ListItem>初三</asp:ListItem>
<asp:ListItem>初四</asp:ListItem>
<asp:ListItem>高一</asp:ListItem>
<asp:ListItem>高二</asp:ListItem>
<asp:ListItem>高三</asp:ListItem>             
            </asp:DropDownList>
		
		
		</td>
	</tr>

	
		<tr>
		<td class="style1">
			<strong>省：</strong><br />
		</td>
		<td>
         
	<asp:DropDownList ID="ddlProvince"  Width="150px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProvince_SelectedIndexChanged" >
                        </asp:DropDownList>
		<asp:DropDownList ID="ddlCity" Width="150px" runat="server" >
                        </asp:DropDownList>
		</td>
	</tr>
	

	<tr>
		<td class="tdbgleft" style="width: 15%">
			<strong>密码问题：</strong>
		</td>
		<td style="width: 221px">
			<asp:TextBox ID="TxtQuestion" class="input1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="ReqTxtQuestion" runat="server" ControlToValidate="TxtQuestion"
				SetFocusOnError="false" Display="None" ErrorMessage="密码问题不能为空"></asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr>
		<td class="tdbgleft" style="width: 15%">
			<strong>问题答案：</strong><br />
		</td>
		<td style="width: 221px">
			<asp:TextBox ID="TxtAnswer" class="input1" runat="server"></asp:TextBox>                        
			<asp:RequiredFieldValidator ID="ReqAnswer" runat="server" ControlToValidate="TxtAnswer"
				SetFocusOnError="false" Display="None" ErrorMessage="问题答案不能为空"></asp:RequiredFieldValidator></td>
	</tr>
	<tr>
		<td class="tdbgleft" style="width: 15%">
			<strong>Email地址：</strong>
		</td>
		<td style="width: 221px">
			<asp:TextBox ID="TxtEmail" class="input1" runat="server"></asp:TextBox>                        
			<asp:RequiredFieldValidator ID="ReqTxtEmail" runat="server" ControlToValidate="TxtEmail"
				SetFocusOnError="false" Display="None" ErrorMessage="Email不能为空"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail"
				ErrorMessage="邮件地址不规范" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator></td>
	</tr>
	<tr id="usergroupss" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><strong>用户类型：</strong></td>
    <td>
        <asp:RadioButtonList ID="UserGroup" runat="server" RepeatDirection="Horizontal">
        </asp:RadioButtonList>
    </td>
</tr>
</table>
<table style="DISPLAY: none; BORDER-COLLAPSE: collapse" id="TableRegisterSelect" cellspacing="1" cellpadding="2" width="100%" border="0" runat="server">
    <thead>
        <tr>
        <th style="HEIGHT: 20px">&nbsp;&nbsp;&nbsp;选填信息</th>
        </tr>
    </thead>
    <tbody>
    
    </tbody>
</table>            
<table style="border-collapse: collapse" cellspacing="1" cellpadding="2" width="100%"
	border="0">
	<tr class="tdbgleft" style="width: 15%" align="center">
		<td style="height: 30px;">
			<span style="color: #ff0000">以上所有信息除选填项都必须先正确填写后才能成功注册。</span></td>
	</tr>
	<tr class="tdbgleft" style="width: 15%" align="center">
		<td style="height: 30px;">
			<asp:Button ID="BtnSubmit" runat="server" Text="提交" OnClick="BtnSubmit_Click" />
			<input id="Reset" type="reset" value=" 重新填写 " name="Reset" />
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true"
				ShowSummary="False" />
		</td>
	</tr>
</table> 


<table style="BORDER-COLLAPSE: collapse" id="TableRegister" cellspacing="1" cellpadding="2" width="100%" border="0" runat="server" visible="false">
<tbody>
<tr id="trSwicthSelectFill" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft" onclick="SwicthSelectFill()"><span><b>选填信息：</b></span></td>
    <td>
        <input id="checkSelectFill" onclick="SwicthSelectFill()" type="checkbox" /><label style="COLOR: blue" for="checkSelectFill">显示用户设置选填信息</label>
    </td>
</tr>
<tr id="trHomepage" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><strong>主页：</strong></td>
    <td>
        <asp:TextBox id="TxtHomepage" class="input1" runat="server">http://</asp:TextBox>        
        <asp:RequiredFieldValidator id="ReqTxtHomepage" runat="server" Display="None" ErrorMessage="主页地址不能为空" SetFocusOnError="false" ControlToValidate="TxtHomepage"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trQQ" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><strong>QQ号码：</strong></td>
    <td>
        <asp:TextBox id="TxtQQ" class="input1" runat="server"></asp:TextBox>        
        <asp:RequiredFieldValidator id="ReqTxtQQ" runat="server" Display="None" ErrorMessage="QQ号码不能为空" SetFocusOnError="false" ControlToValidate="TxtQQ"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trICQ" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>ICQ号码：</b></td>
    <td>
        <asp:TextBox id="TxtICQ" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtICQ" runat="server" Display="None" ErrorMessage="ICQ号码不能为空" SetFocusOnError="false" ControlToValidate="TxtICQ"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trMSN" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><strong>MSN帐号：</strong></td>
    <td>
        <asp:TextBox id="TxtMSN" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtMSN" runat="server" Display="None" ErrorMessage="MSN帐号不能为空" SetFocusOnError="false" ControlToValidate="TxtMSN"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trYahoo" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>雅虎通帐号：</b></td>
    <td>
        <asp:TextBox id="TxtYahoo" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtYahoo" runat="server" Display="None" ErrorMessage="雅虎通帐号不能为空" SetFocusOnError="false" ControlToValidate="TxtYahoo"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trUC" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>UC号码：</b></td>
    <td>
        <asp:TextBox id="TxtUC" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtUC" runat="server" Display="None" ErrorMessage="UC号码不能为空" SetFocusOnError="false" ControlToValidate="TxtUC"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trOfficePhone" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>办公电话：</b></td>
    <td>
        <asp:TextBox id="TxtOfficePhone" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtOfficePhone" runat="server" Display="None" ErrorMessage="办公电话不能为空" SetFocusOnError="false" ControlToValidate="TxtOfficePhone"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trHomePhone" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>家庭电话：</b></td>
    <td>
        <asp:TextBox id="TxtHomePhone" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtHomePhone" runat="server" Display="None" ErrorMessage="家庭电话不能为空" SetFocusOnError="false" ControlToValidate="TxtHomePhone"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trFax" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>传真号码：</b></td>
    <td>
        <asp:TextBox id="TxtFax" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtFax" runat="server" Display="None" ErrorMessage="传真号码不能为空" SetFocusOnError="false" ControlToValidate="TxtFax"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trMobile" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>手机号码：</b></td>
    <td>
        <asp:TextBox id="TxtMobile" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtMobile" runat="server" Display="None" ErrorMessage="手机号码不能为空" SetFocusOnError="false" ControlToValidate="TxtMobile"></asp:RequiredFieldValidator>
        
    </td>
</tr>
<tr id="trPHS" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>小灵通号码：</b></td>
    <td>
        <asp:TextBox id="TxtPHS" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtPHS" runat="server" Display="None" ErrorMessage="小灵通号码不能为空" SetFocusOnError="false" ControlToValidate="TxtPHS"></asp:RequiredFieldValidator>
        
    </td>
</tr>
<tr id="trAddress" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>联系地址：</b></td>
    <td>
        <asp:TextBox id="TxtAddress" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtAddress" runat="server" Display="None" ErrorMessage="联系地址不能为空" SetFocusOnError="false" ControlToValidate="TxtAddress"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trZipCode" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>邮政编码：</b></td>
    <td>
        <asp:TextBox id="TxtZipCode" class="input1" runat="server" MaxLength="6"></asp:TextBox>
        <asp:RequiredFieldValidator id="ReqTxtZipCode" runat="server" Display="None" ErrorMessage="邮政编码不能为空" SetFocusOnError="false" ControlToValidate="TxtZipCode"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="请输入正确的邮政编码" ControlToValidate="TxtZipCode" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator></td>
</tr>
<tr id="trTrueName" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>真实姓名：</b></td>
    <td>
        <asp:TextBox id="TxtTrueName" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtTrueName" runat="server" Display="None" ErrorMessage="真实姓名不能为空" SetFocusOnError="false" ControlToValidate="TxtTrueName"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trUserSex" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><strong>性别：</strong></td>
    <td>
        <asp:DropDownList id="DropSex" runat="server">            
            <asp:ListItem Text="男" Value="1" Selected="True"></asp:ListItem>
            <asp:ListItem Text="女" Value="0"></asp:ListItem>
        </asp:DropDownList>
    </td>
</tr>
<tr id="trBirthday" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>出生日期：</b></td>
    <td>
        <asp:TextBox id="TxtBirthday" class="input1" runat="server" onblur="setday(this);" onclick="setday(this);"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtBirthday" runat="server" Display="None" ErrorMessage="出生日期不能为空" SetFocusOnError="false" ControlToValidate="TxtBirthday"></asp:RequiredFieldValidator>
        
    </td>
</tr>
<tr id="trIDCard" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>身份证号码：</b></td>
    <td>
        <asp:TextBox id="TxtIDCard" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtIDCard" runat="server" Display="None" ErrorMessage="身份证号码不能为空" SetFocusOnError="false" ControlToValidate="TxtIDCard"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trUserFace" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>头像地址：</b></td>
    <td>
        <asp:TextBox id="TxtUserFace" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtUserFace" runat="server" Display="None" ErrorMessage="头像地址不能为空" SetFocusOnError="false" ControlToValidate="TxtUserFace"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trFaceWidth" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>头像宽度：</b></td>
    <td>
        <asp:TextBox id="TxtFaceWidth" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtFaceWidth" runat="server" Display="None" ErrorMessage="头像宽度不能为空" SetFocusOnError="false" ControlToValidate="TxtFaceWidth"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trFaceHeight" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>头像高度：</b></td>
    <td>
        <asp:TextBox id="TxtFaceHeight" class="input1" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtFaceHeight" runat="server" Display="None" ErrorMessage="头像高度不能为空" SetFocusOnError="false" ControlToValidate="TxtFaceHeight"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trSign" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>签名档：</b></td>
    <td>
        <asp:TextBox id="TxtSign" runat="server" class="input1" TextMode="MultiLine" Width="300" Height="60"></asp:TextBox>
        
        <asp:RequiredFieldValidator id="ReqTxtSign" runat="server" Display="None" ErrorMessage="签名档不能为空" SetFocusOnError="false" ControlToValidate="TxtSign"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr id="trPrivacy" runat="server">
    <td style="WIDTH: 15%" class="tdbgleft"><b>隐私设定：</b></td>
    <td>
        <asp:DropDownList id="DropPrivacy" runat="server">
            <asp:ListItem Text="公开信息" Value="0"></asp:ListItem>
            <asp:ListItem Text="只对好友公开" Value="1"></asp:ListItem>
            <asp:ListItem Text="完全保密" Value="2"></asp:ListItem>
        </asp:DropDownList>
    </td>
</tr>

<tr id="trVcodeRegister" runat="server" visible="false">
    <td style="WIDTH: 15%" class="tdbgleft"><b>验证码：</b></td>
    <td>
        <asp:TextBox ID="TxtValidateCode" class="input1" MaxLength="6" runat="server" onfocus="this.select();"></asp:TextBox><asp:Image ID="VcodeLogin" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px" />
    </td>
</tr>
</tbody>
</table>
</div>
</asp:Panel> 
<asp:Panel ID="PnlStep3" runat="server" Visible="false" Width="100%">
    <h1>注册会员</h1>
    <h2>第三步：注册结果<img src="/user/images/regl3.gif" width="242" height="14" alt="" /></h2>
    <asp:Literal ID="LitRegResult" runat="server"></asp:Literal>
</asp:Panel>
	</div>
</div>
<!-- 右边结束 -->
</div>
<div class="cleardiv"></div>
</form>
</body>
</html>