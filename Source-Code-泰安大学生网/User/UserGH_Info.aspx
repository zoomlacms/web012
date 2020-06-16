<%@ page language="C#" autoeventwireup="true" inherits="User_UserGH_Info, App_Web_sxbic0ln" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>个人信息</title>
<link rel="stylesheet" type="text/css" href="skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="skin/user_user.css" />
<script src="../JS/RiQi.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<table width="100%" border="0" align="center">
<tr>
	<td align="center">
		<a href="UserGH_Info.aspx">个人信息</a>
	</td>
	<td align="center">
		<a href="GetPassword.aspx">修改密码</a>
	</td>
	<td align="center">
		<a href="User_Editregaction.aspx">修改密保问题</a>
	</td>
	<td align="center">
		<a href="#">机密邮箱认证</a>
	</td>
</tr>
</table>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="3" class="tm">
<tr>
	<td height="32" colspan="2">
		<font color="#325AA2"><strong>请及时更新您的个人信息！</strong></font>
	</td>
</tr>
<tr>
	<td width="166" class="font16b">
		昵称：
	</td>
	<td>

		<asp:TextBox ID="nickname" ReadOnly="true" disabled="disabled" runat="server" size="30" maxlength="10"></asp:TextBox>   
	</td>
</tr>
<tr>
	<td class="font16b">
		真实姓名：
	</td>
	<td>
		<input name="userrealname" type="text" runat="server" id="userrealname" value=""
			size="30" maxlength="5" />
		<span class="fonthui">（5个字符以内）</span>
	</td>
</tr>
<tr>
	<td class="font16b">
		性别：
	</td>
	<td>
		<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
			<asp:ListItem Value="1" Selected="True">男</asp:ListItem>
			<asp:ListItem Value="0">女</asp:ListItem>
		</asp:RadioButtonList>
	</td>
</tr>
<tr>
	<td class="font16b">
		出身年月：
	</td>
	<td>
		<input name="birthday" onclick="setday(this)" runat="server" type="text" id="birthday"
			value="1985-1-1" size="30" maxlength="15" />
		   
		<span class="fonthui">
	   
		 （如1985-01-01）</span>
	</td>
</tr>
<tr>
	<td class="font16b">
		所在地区：
	</td>
	<td>
		<asp:DropDownList ID="province" runat="server" AutoPostBack="true" OnSelectedIndexChanged="province_SelectedIndexChanged">
		</asp:DropDownList>
		&nbsp;
		<asp:DropDownList ID="city" runat="server">
		</asp:DropDownList>
	</td>
</tr>
<tr>
	<td class="font16b">
		联系手机：
	</td>
	<td>
		<input name="mobile" runat="server" type="text" id="mobile" value="" size="30" maxlength="13"
			runat="server" />
		<span class="fonthui">（13个字符以内）</span>
	</td>
</tr>
<tr>
	<td class="font16b">
		联系电话：
	</td>
	<td>
		<input name="telphone" type="text" id="telphone" value="" size="30" maxlength="15"
			runat="server" />
		<span class="fonthui">（15个字符以内）</span>
	</td>
</tr>
<tr>
	<td class="font16b">
		联系地址：
	</td>
	<td>
		<input name="address" type="text" id="address" value="" size="30" maxlength="30"
			runat="server" />
		<span class="fonthui">（30个字符以内）</span>
	</td>
</tr>
<tr>
	<td class="font16b">
		邮政编码：
	</td>
	<td>
		<input name="code" type="text" id="code" value="" size="30" maxlength="10" runat="server" />
	</td>
</tr>
<tr>
	<td class="font16b">
		QQ或者MSN：
	</td>
	<td>
		<input name="qq" type="text" id="qq" value="" size="30" maxlength="30" runat="server" />
	</td>
</tr>
<tr>
	<td class="font16b">
		个人主页：
	</td>
	<td>
		<input runat="server" name="web" type="text" id="web" value="" size="30" maxlength="30" />
		<span class="fonthui">（如：http://www.u9u8.com）</span>
	</td>
</tr>

<tr>
	<td class="font16b">
		最高学历：
	</td>
	<td>
		<select name="xueli" size="1" id="xueli" runat="server">
			<option selected="selected" value=""></option>
			<option value="保留">保留</option>
			<option value="初中">初中</option>
			<option value="高中">高中</option>
			<option value="专科">专科</option>
			<option value="本科">本科</option>
			<option value="硕士">硕士</option>
			<option value="博士">博士</option>
			<option value="7">其它</option>
		</select>
	</td>
</tr>
<tr>
	<td class="font16b">
		毕业院校：
	</td>
	<td>
		<input name="school" type="text" id="school" value="" size="30" maxlength="30" runat="server" />
	</td>
</tr>
<tr>
	<td class="font16b">
		婚姻状况：
	</td>
	<td>
		<select name="marriage" size="1" id="marriage" runat="server">
			<option selected="selected" value=""></option>
			<option value="保留">保留</option>
			<option value="未婚">未婚</option>
			<option value="已婚">已婚</option>
		</select>
	</td>
</tr>
<tr>
	<td class="font16b">
		身高：
	</td>
	<td>
		<input runat="server" name="height" type="text" id="height" value="" size="30" maxlength="3" />
		<span class="fonthui">CM</span>
	</td>
</tr>
<tr>
	<td class="font16b">
		体重：
	</td>
	<td>
		<input runat="server" name="weight" type="text" id="weight" value="" size="30" maxlength="3" />
		<span class="fonthui">KG</span>
	</td>
</tr>
<tr>
	<td class="font16b" runat="server">
		体型：
	</td>
	<td>
		<select name="somatotype" runat="server"  size="1" id="somatotype">
			<option selected="selected" value=""></option>
			<option value="保留">保留</option>
			<option value="瘦高">瘦高</option>
			<option value="健美">健美</option>
			<option value="微胖">微胖</option>
			<option value="普通">普通</option>
			<option value="娇小">娇小</option>
			<option value="丰满">丰满</option>
			<option value="性感">性感</option>
			<option value="苗条">苗条</option>
			<option value="富态">富态</option>
		</select>
	</td>
</tr>
<tr>
	<td class="font16b" runat="server">
		血型：
	</td>
	<td width="521">
		<select name="xuexing" id="xuexing" runat="server">
			<option selected="selected" value=""></option>
			<option value="A型">A型</option>
			<option value="B型">B型</option>
			<option value="AB型">AB型</option>
			<option value="O型">O型</option>
			<option value="未知">未知</option>
		</select>
	</td>
</tr>
<tr>
	<td class="font16b">
		月收入：
	</td>
	<td>
		<select name="receipt" size="1" id="receipt" runat="server">
			<option selected="selected" value=""></option>
			<option value="保留">保留</option>
			<option value="RMB1000以下">RMB1000以下</option>
			<option value="RMB1000-2000">RMB1000-2000</option>
			<option value="RMB2000-3500">RMB2000-3500</option>
			<option value="RMB3500-5000">RMB3500-5000</option>
			<option value="RMB5000-7500">RMB5000-7500</option>
			<option value="RMB7500-10000">RMB7500-10000</option>
			<option value="RMB10000以上">RMB10000以上</option>
		</select>
	</td>
</tr>
<tr>
	<td class="font16b">
		个性签名/论坛签名：<a name="s" id="s"></a>
	</td>
	<td>
		<textarea name="usersign" cols="50" rows="7" id="usersign" runat="server"></textarea><br />
		<span class="fonthui">（300个字符以内，只支持UBB签名。）</span>
	</td>
</tr>
<tr>
	<td>
	</td>
	<td height="55">
		<asp:Button ID="Button1" runat="server" Text="提交保存" Style="margin: 10px 0 6px 0;
			width: 160px; height: 33px" onclick="Button1_Click" />
	</td>
</tr>
</form>
</body>
</html>
