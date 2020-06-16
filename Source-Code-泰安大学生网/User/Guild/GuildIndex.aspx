<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_GuildIndex, App_Web_gt4knn2i" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>我的公会</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="us_topinfo">
        <div class="us_showinfo">
                    <span class="us_showinfo1">您好<asp:Label ID="LblUserName" runat="server" Text="" />！</span>
                    您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank">
<asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; 
</span><span><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span><span> &gt;&gt; 
</span><span><a title="我的公会" href="Default.aspx">我的公会</a></span></span>
            </div>
            <div class="cleardiv">
            </div>
        </div>
         <div class="us_topinfo" style="margin-top:10px;">
            <a href="Default.aspx">我已加入的公会</a> |<a href="FoundGH.aspx">我已创建的公会</a>
            |<a href="GuildIndex.aspx">我是会长创建公会</a>|<a href="List.aspx">公会排行列表</a>
            </div>
            <div style="margin-top:10px;">
		  <div class="us_seta" style="margin-top:5px;">  
		    <h1><div align="center">
		    我是会长创建公会</div></h1>
              <li style="width:100%; float:left;line-height:30px">
      <asp:Panel ID="panelCreate" runat="server">
               <table width="100%"  align="center" class="us_seta">
               <tr>
               <td>申请公会网站须知</td>  
               </tr>
               <tr>
                  <td>1、提交申请后请点“十万火急马上开通”；</td>
               </tr>
               <tr>
                  <td>2、如果你不是会长，请勿申请，谢谢；</td>
               </tr>
               <tr>
                  <td>3、开通后长期没人气的无效公会，我们也会及时进行清理；</td>
               </tr>
               <tr>
                  <td>审核标准：</td>
               </tr>
               <tr>
                  <td>1、提供公会常用QQ群，工作人员负责审核；</td>
               </tr>
               <tr>
                 <td>2、申请前公会会长必须激活邮箱；</td>
               </tr>
               <tr>
                 <td>3、申请后三日内未达到以上标准的公会申请将被删除；</td>
               </tr>
               <tr>
                 <td>4、公会申请每日早晚审核两次，请及时关注后台开通提示。</td>
               </tr>
               <tr>
                 <td>5、仔细阅读并同意以上条款的请往下继续申请！</td>
               </tr>
               <%--<tr>
                  <td>开通帮助：http://www.zoomla.cn/index.shtml</td>
               </tr>--%>
              <%-- <tr>
                  <td>客服QQ：1050312411</td>
               </tr>--%>
               <tr>
                   <td align="center">
                       <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="我要开通公会" />
                   </td>
                   </tr>
               </table>
      </asp:Panel>
        <asp:Panel ID="panel1" runat="server">
        <table width="100%"  align="center" class="us_seta">
        <tr>
          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              由于马甲公会占用了系统资源，是对真正的公会利益的侵犯。为杜绝大量马甲公会入驻，确保系统资源得到更好的利用，保证入驻的真实公会&nbsp;&nbsp; 
              的利益，对公会的申请开通进行了审核，审核的前期依据是申请前公会会长必须激活邮箱，并且密码保护资料填写完整，才能申请，谢谢合作。如果你不是会长或无意组建新公会，请勿申请！</td>
        </tr>
        <%--<tr>
          <td>开通帮助：http://www.zoomla.cn/index.shtml</td>
        </tr>--%>
        <%--<tr>
                  <td>客服QQ：1050312411</td>
               </tr>--%>
               <tr>
                   <td align="center" style="margin-left: 40px">
                       <asp:Button ID="Button1" runat="server"  
                           Text="马上激活我的邮箱" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;
                           <asp:Button ID="Button3" runat="server"  Text="现在没时间，以后再来申请" 
                           onclick="Button3_Click" />
                           <script type="text/javascript">
                               function reShow() {
                                   location.href = "../Default.aspx";
                               }
                           </script>
                   </td>
            </tr>
            <tr>
                <td>
                    申请公会条件：</td>
            </tr>
            <tr>
                <td>
                    1、申请前公会会长必须激活邮箱；</td>
            </tr>
            <tr>
                <td>
                    2、申请前公会会长必须填写完整的密码保护资料；</td>
            </tr>
        </table>
        </asp:Panel>
</li>
    </div>
    </form>
</body>
</html>
