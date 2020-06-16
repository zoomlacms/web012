<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_GHIndex, App_Web_fll2klj3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>
	<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</title>
</head>
<body>
  <div id=center1>
		<h5><div id="no">基本信息</div></h5>
		<ul>
          <table width="100%" border="0" cellpadding="0" cellspacing="3" class="font_14_b">
            <tr>
              <td width="37%" rowspan="7" align="center"><a href="guild_img.asp?q_id=32253"><img src="http://qb.u9u8.com/g/1/32253.jpg" alt="更换会标" width="120" height="120" border="0" /></a></td>
              <td width="10%" align="left">公会名称:</td>
              <td width="53%" align="left">快乐一天　　<a href="http://gamebbs.u9u8.com/bbs_tz_list.asp?q_id=23&amp;bbs_id=99" target="_blank">发布公会招人帖</a>　<a href="http://gamebbs.u9u8.com/bbs_tz_show.asp?q_id=3&amp;bbs_id=5&amp;tz_id=486" target="_blank">公会推荐到首页</a></td>
            </tr>
            <tr>
              <td align="left">公会域名:</td>
              <td align="left"><a href="http://kuailie.u9u8.com" target="_blank">http://kuailie.u9u8.com</a> <a href="http://gamebbs.u9u8.com/bbs_bk_list.asp?q_id=38" target="_blank">公会领号</a></td>
            </tr>
            <tr>
              <td align="left">公会人数:</td>
              <td align="left">1 人</td>
            </tr>
            <tr>
              <td align="left">活跃积分:</td>
              <td align="left">1　　<a href="#" onClick="return windowOpener('guild_jifeng_query.asp?q_id=32253')">查看积分明细</a></td>
            </tr>
            <tr>
              <td align="left">创建时间:</td>
              <td align="left">2009-11-19 8:50:00</td>
            </tr>
            
            <tr>
              <td align="left">公会会长:</td>
              <td align="left"><a href="/User/Guild/GHUserInfo.aspx?id=<%#Eval("gid")%>" title="昵称:jnngs" target="_blank">jnngs</a></td>
            </tr>
            <tr>
              <td colspan="2" align="left"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="279">现有 <font color="red">0</font> 位成员等待审核。</td>
                  <td width="136" align="left"><a href="guild_user.asp?q_id=32253">审核成员</a></td>
                </tr>
              </table></td>
            </tr>
          </table>
    </div>
</body>
</html>
