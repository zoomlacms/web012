﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_3Dmanage_SceneManage, App_Web_3ritkdm2" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>管理企业黄页</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
            if (elm[i].checked != xState)
                elm[i].click();
        }
    }
    function getinfo(id) {
        location.href = "ADDScene.aspx?menu=edit&id="+id+"";
    }
</script>

</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
   <span>后台管理</span> &gt;&gt; 3D地带 &gt;&gt; <a href="Viewonline.aspx">3D地带场景管理</a></div>
<div class="clearbox">
</div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
	<tbody id="Tbody1">
		<tr class="tdbg">
			<td align="center" colspan="5" class="title" width="100%">
				3D地带场景管理
			</td>
		</tr>
		<tr class="tdbg">
			<td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">
				场景ID
			</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 35%; font-weight: bold">
				场景名称
			</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">
			   场景分类
			</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 25%; font-weight: bold">
				添加时间
			</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">
				相关操作
			</td>
		</tr>
		<asp:Repeater ID="Repeater1" runat="server">
		<ItemTemplate>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="<%#Eval("DSceneid")%>" ondblclick="getinfo(this.id)">
			<td align="center"  style="height: 24px; padding-right: 20px; font-weight: bold">
				<%#Eval("DSceneid")%>
			</td>
			<td align="center" style="height: 24px;">
				<%#Eval("DSceneName")%>
			</td>
			 <td align="center"  style="height: 24px;">
				<%#Eval("DSceneClass")%>
			</td>
			 <td align="center"  style="height: 24px;">
				<%#Eval("DSceneAddtime")%>
			</td>
			 <td align="center"  style="height: 24px;">
				<a href="ADDScene.aspx?menu=edit&id=<%#Eval("DSceneid") %>">修改</a>　
				<a href="SceneManage.aspx?menu=del&id=<%#Eval("DSceneid") %>" 
				OnClick="return confirm('确实要删除此场景吗？');">删除</a>
			</td>
		</tr>
		</ItemTemplate>
		</asp:Repeater>
		 <tr class="tdbg">
			<td align="center" class="tdbg" style="height: 24px;" colspan="7">
				共
				<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
				条信息
				<asp:Label ID="Toppage" runat="server" Text="" />
				<asp:Label ID="Nextpage" runat="server" Text="" />
				<asp:Label ID="Downpage" runat="server" Text="" />
				<asp:Label ID="Endpage" runat="server" Text="" />
				页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
				<asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
				</asp:DropDownList>
				页
			</td>
		</tr>
	</tbody>
</table>
</form>
</body>
</html>