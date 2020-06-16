<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_updateGM, App_Web_iv1miygb" enableEventValidation="false" viewStateEncryptionMode="Never" %>
   
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>游戏管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
            height: 23px;
        }
        .style2
        {
            background: #f6fdf6;
/*line-height: 120%;*/    padding: 2px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="r_navigation">
            
             <span>商户管理</span> &gt;&gt; <span><a href="GameManage.aspx" >游戏管理</a></span> &gt;&gt; 分区管理 &gt;&gt;修改游戏分区
        </div>
         <div class="clearbox">
    </div>
          <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
         <tr>
         <td class="spacingtitle" colspan="2" align="center">修改游戏分区</td>
    </tr>
    
    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
         <td class="tdbgleft"><asp:Label ID="Label1" runat="server" Text="分区名称：" /></td>
    
         <td class="tdbg"> <asp:TextBox ID="areaName" class="l_input"  runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text=" * 所在服务器分区名称" ForeColor="black"> * 所在服务器分区名称</asp:Label>&nbsp;&nbsp;&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                 ErrorMessage="必填项" ControlToValidate="areaName"></asp:RequiredFieldValidator>
         </td>
    </tr>
    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
         <td class="tdbgleft"> <asp:Label ID="Label3" runat="server" Text="服务器IP：" /></td>
    
         <td class="tdbg"><asp:TextBox ID="serverIP" class="l_input"  runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text=" * 您的服务器IP地址"  ForeColor="black"> * 您的服务器IP地址</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                 ErrorMessage="必填项" ControlToValidate="serverIP"></asp:RequiredFieldValidator>
         </td>
    </tr>
    <tr>
         <td class="style1"> <asp:Label ID="Label5" runat="server" Text="通讯端口："/></td>
    
         <td class="style2"><asp:TextBox ID="commPort"  runat="server" ReadOnly="true" BackColor="Gray"></asp:TextBox>
        <asp:Label ID="Label6" runat="server"  ForeColor="black" Text=" *"> * 端口必须与您运行的充值服务端设定的一致</asp:Label>&nbsp;&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                 ErrorMessage="必填项" ControlToValidate="commPort"></asp:RequiredFieldValidator>
         </td>
    </tr>
    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
         <td class="tdbgleft"><asp:Label ID="Label7" runat="server" Text="通讯密钥："/></td>
    
         <td class="tdbg"><asp:TextBox ID="commPwd" class="l_input"  runat="server"></asp:TextBox>
        <asp:Label ID="Label8" runat="server"  ForeColor="black" Text=" * "> * 必须与您运行的充值服务端设定的一致（最好设置成与您帐号的登陆密码不一样的密码）</asp:Label>&nbsp;<asp:RequiredFieldValidator 
                 ID="RequiredFieldValidator9" runat="server" 
                 ErrorMessage="必填项" ControlToValidate="commPwd"></asp:RequiredFieldValidator>
         </td>
    </tr>
    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
         <td class="tdbgleft"><asp:Label ID="Label9" runat="server" Text="兑换比例："/></td>
    
         <td class="tdbg"><asp:TextBox ID="exchangeScale" class="l_input"  runat="server"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" ForeColor="black" Text=" * 1元人民币兑换几个元宝"> * 1元人民币兑换几个游戏币</asp:Label>&nbsp;&nbsp;&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                 ErrorMessage="必填项" ControlToValidate="exchangeScale"></asp:RequiredFieldValidator>
             <asp:CompareValidator ID="CompareValidator1" runat="server" 
                 ControlToValidate="exchangeScale" ErrorMessage="请输入大于等于0的整数" 
                 Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
         </td>
    </tr>
    
     <tr>
         <td class="tdbgleft"><asp:Label ID="Label48" runat="server" Text="游戏币名称："/></td>
    
         <td class="tdbg"><asp:TextBox ID="coinName" class="l_input"  runat="server"></asp:TextBox>
        <asp:Label ID="Label49" runat="server" ForeColor="black" Text=" "> * 游戏币名称如：元宝</asp:Label></td>
    </tr>
    
    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
         <td class="tdbgleft"> <asp:Label ID="Label11" runat="server" Text="Label">奖励设置：</asp:Label></td>
    
         <td class="tdbg">
            <table>
                <tr>
                    <td align="right" > <asp:Label ID="Label12" runat="server" Text="Label" >网上银行支付<br />(需要开通网银)：</asp:Label></td>
                    <td align="right"><asp:TextBox ID="payOnline" class="l_input"  runat="server" ></asp:TextBox>
            <asp:Label ID="Label13" runat="server" Text="Label">%</asp:Label>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToValidate="payOnline" ErrorMessage="请输入大于等于0的整数" 
                            Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                    </td>
                    <td  align="right"><asp:Label ID="Label14" runat="server" Text="Label">移动神州行充值卡充值<br />（30/50/100元全国通用卡）：</asp:Label></td>
                    <td><asp:TextBox ID="payMove" class="l_input"  runat="server" style="margin-left:10px"></asp:TextBox>
            <asp:Label ID="Label15" runat="server" Text="Label">%</asp:Label>
                        <asp:CompareValidator ID="CompareValidator3" runat="server" 
                            ControlToValidate="payMove" ErrorMessage="请输入大于等于0的整数" 
                            Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                    </td>
                 </tr>
                  <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td  align="right"><asp:Label ID="Label16" runat="server" Text="Label">盛大一卡通充值<br />（卡号由CS开头）：</asp:Label></td>
                    <td  align="right"><asp:TextBox ID="shengda" class="l_input"  runat="server"></asp:TextBox>
            <asp:Label ID="Label17" runat="server" Text="Label">%</asp:Label>
                        <asp:CompareValidator ID="CompareValidator4" runat="server" 
                            ControlToValidate="shengda" ErrorMessage="请输入大于等于0的整数" 
                            Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                      </td>
                    <td  align="right"> <asp:Label ID="Label18" runat="server" Text="Label">征途游戏卡充值<br />（10/20/30/50/60/100/300元）：</asp:Label></td>
                    <td align="right"> <asp:TextBox ID="zhengtu" class="l_input"  runat="server"></asp:TextBox>
            <asp:Label ID="Label19" runat="server" Text="Label">%</asp:Label>
                        <asp:CompareValidator ID="CompareValidator5" runat="server" 
                            ControlToValidate="zhengtu" ErrorMessage="请输入大于等于0的整数" 
                            Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                      </td>
                 </tr>
                  <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td  align="right"><asp:Label ID="Label20" runat="server" Text="Label">骏网一卡通充值<br />（5/6/10/15/30/50/100元）：</asp:Label></td>
                    <td  align="right"><asp:TextBox ID="junwang" class="l_input"  runat="server"></asp:TextBox>
            <asp:Label ID="Label21" runat="server" Text="Label">%</asp:Label>
                        <asp:CompareValidator ID="CompareValidator6" runat="server" 
                            ControlToValidate="junwang" ErrorMessage="请输入大于等于0的整数" 
                            Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                      </td>
                    <td  align="right"> <asp:Label ID="Label22" runat="server" Text="Label">腾讯Q币卡充值<br />（5/10/15/30/60）：</asp:Label></td>
                    <td align="right"><asp:TextBox ID="tencent" class="l_input"  runat="server"></asp:TextBox>
            <asp:Label ID="Label23" runat="server" Text="Label">%</asp:Label>
                        <asp:CompareValidator ID="CompareValidator7" runat="server" 
                            ControlToValidate="tencent" ErrorMessage="请输入大于等于0的整数" 
                            Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                      </td>
                 </tr>
                  <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td  align="right"><asp:Label ID="Label24" runat="server" Text="Label">久游一卡通支付<br />（5/10/15/30/50元）：</asp:Label></td>
                    <td  align="right"> <asp:TextBox ID="jiuyou" class="l_input"  runat="server"></asp:TextBox>
            <asp:Label ID="Label25" runat="server" Text="Label">%</asp:Label>
                        <asp:CompareValidator ID="CompareValidator8" runat="server" 
                            ControlToValidate="jiuyou" ErrorMessage="请输入大于等于0的整数" 
                            Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                      </td>
                    <td  align="right"> <asp:Label ID="Label26" runat="server" Text="Label">完美一卡通支付<br />（15/30/50/100元）：</asp:Label></td>
                    <td align="right"><asp:TextBox ID="wanmei" class="l_input"  runat="server" Width="128px"></asp:TextBox>
            <asp:Label ID="Label27" runat="server" Text="Label">%</asp:Label>
                        <asp:CompareValidator ID="CompareValidator9" runat="server" 
                            ControlToValidate="wanmei" ErrorMessage="请输入大于等于0的整数" 
                            Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                      </td>
                 </tr>
                  <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="right"><asp:Label ID="Label28" runat="server" Text="Label">搜狐一卡通支付<br />（5/10/15/30元）：</asp:Label></td>
                    <td  align="right"> <asp:TextBox ID="sohu" class="l_input"  runat="server"></asp:TextBox>
            <asp:Label ID="Label29" runat="server" Text="Label"> %</asp:Label>
                        <asp:CompareValidator ID="CompareValidator10" runat="server" 
                            ControlToValidate="sohu" ErrorMessage="请输入大于等于0的整数" Operator="GreaterThanEqual" 
                            Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                      </td>
                    <td  align="right"><asp:Label ID="Label30" runat="server" Text="Label">魔兽世界卡支付<br />（15/30元）：</asp:Label></td>
                    <td align="right"><asp:TextBox ID="moshou" class="l_input"  runat="server"></asp:TextBox>
            <asp:Label ID="Label31" runat="server" Text="Label"> %</asp:Label>
                        <asp:CompareValidator ID="CompareValidator11" runat="server" 
                            ControlToValidate="moshou" ErrorMessage="请输入大于等于0的整数" 
                            Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                      </td>
                 </tr>
                 <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="right"><asp:Label ID="Label32" runat="server" Text="Label">支付卡支付<br />（10/30/50/53/100/105/200/210元）：</asp:Label></td>
                    <td  align="right"> <asp:TextBox ID="zfk" class="l_input"  runat="server"></asp:TextBox>
            <asp:Label ID="Label33" runat="server" Text="Label"> %</asp:Label>
                        <asp:CompareValidator ID="CompareValidator12" runat="server" 
                            ControlToValidate="zfk" ErrorMessage="请输入大于等于0的整数" Operator="GreaterThanEqual" 
                            Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                     </td>
                    <td  align="right"><asp:Label ID="Label34" runat="server" Text="Label">5173卡支付<br />（30/60/120/360元）：</asp:Label></td>
                    <td align="right"><asp:TextBox ID="wyqk" class="l_input"  runat="server"></asp:TextBox>
            <asp:Label ID="Label35" runat="server" Text="Label"> %</asp:Label>
                        <asp:CompareValidator ID="CompareValidator13" runat="server" 
                            ControlToValidate="wyqk" ErrorMessage="请输入大于等于0的整数" Operator="GreaterThanEqual" 
                            Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                     </td>
                 </tr>
                 <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="right"><asp:Label ID="Label36" runat="server" Text="Label">热血传奇卡支付<br />（5/10/35/100/350/1000元）：</asp:Label></td>
                    <td  align="right"> <asp:TextBox ID="rxk" class="l_input"  runat="server"></asp:TextBox>
            <asp:Label ID="Label37" runat="server" Text="Label"> %</asp:Label>
                        <asp:CompareValidator ID="CompareValidator14" runat="server" 
                            ControlToValidate="rxk" ErrorMessage="请输入大于等于0的整数" Operator="GreaterThanEqual" 
                            Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                     </td>
                    <td  align="right"><asp:Label ID="Label38" runat="server" Text="Label">联通卡支付<br />（20/30/50/100/300/500元）：</asp:Label></td>
                    <td align="right"><asp:TextBox ID="ltk" class="l_input"  runat="server"></asp:TextBox>
            <asp:Label ID="Label39" runat="server" Text="Label"> %</asp:Label>
                        <asp:CompareValidator ID="CompareValidator15" runat="server" 
                            ControlToValidate="ltk" ErrorMessage="请输入大于等于0的整数" Operator="GreaterThanEqual" 
                            Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                     </td>
                 </tr>
                 <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="right"><asp:Label ID="Label40" runat="server" Text="Label">全国声讯卡支付（16836512）<br />（5/10/35/15元）：</asp:Label></td>
                    <td  align="right"> <asp:TextBox ID="qgsk" class="l_input"  runat="server" ></asp:TextBox>
            <asp:Label ID="Label41" runat="server" Text="Label"> %</asp:Label>
             <asp:CompareValidator ID="CompareValidator16" runat="server" 
                 ControlToValidate="qgsk" ErrorMessage="请输入大于等于0的整数" 
                 Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                     </td>
                    <td  align="right"><asp:Label ID="Label42" runat="server" Text="Label">网易支付<br />（10/15/30元）：</asp:Label></td>
                    <td align="right"><asp:TextBox ID="wyk" class="l_input"  runat="server"></asp:TextBox>
            <asp:Label ID="Label43" runat="server" Text="Label"> %</asp:Label>
             <asp:CompareValidator ID="CompareValidator17" runat="server" 
                 ControlToValidate="wyk" ErrorMessage="请输入大于等于0的整数" 
                 Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                     </td>
                 </tr>
                  <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="right"><asp:Label ID="Label46" runat="server" Text="Label">中国电信付费充值卡<br />（50/100元）：</asp:Label></td>
                    <td  align="right"> <asp:TextBox ID="y" class="l_input"  runat="server" ></asp:TextBox>
            <asp:Label ID="Label47" runat="server" Text="Label"> %</asp:Label>
             <asp:CompareValidator ID="CompareValidator18" runat="server" 
                 ControlToValidate="y" ErrorMessage="请输入大于等于0的整数" 
                 Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                      </td>
                   <td  align="right"><asp:Label ID="Label50" runat="server" Text="Label">易宝一卡通支付卡<br />（4/5/10/30元）：</asp:Label></td>
                    <td align="right"><asp:TextBox ID="YPCARD" class="l_input"  runat="server"></asp:TextBox>
            <asp:Label ID="Label51" runat="server" Text="Label"> %</asp:Label>
             <asp:CompareValidator ID="CompareValidator19" runat="server" 
                 ControlToValidate="YPCARD" ErrorMessage="请输入大于等于0的整数" 
                 Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                      </td>
                 </tr>
               
            </table>
         </td>
    </tr>
      
                 <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
         <td class="tdbgleft"><asp:Label ID="Label44" runat="server" Text="附加SQL语句："/></td>
    
         <td class="tdbg"><asp:TextBox ID="sqlTxt" class="l_input"  runat="server" Width="685px" 
                 Height="77px" TextMode="MultiLine"></asp:TextBox>
             <br />
        <asp:Label ID="Label45" runat="server" ForeColor="red" > * SQL语句之间与';'隔开</asp:Label></td>
    </tr>
    
    <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" valign="top">
                执行生成以：
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:DropDownList ID="PointMax" runat="server" onchange="ChangeValue(this.value);">
                    <asp:ListItem Value="0">充值现金</asp:ListItem>
                    <asp:ListItem Value="1">游戏点数</asp:ListItem>
                </asp:DropDownList>
                为准
            </td>
        </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" valign="top">
                <span id="changetxt"></span>达到：
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:TextBox ID="Condition" class="l_input" runat="server" Width="111px"></asp:TextBox>
                执行附加SQL语句<asp:RequiredFieldValidator ID="RequiredFieldValidator10" 
                    runat="server" ControlToValidate="Condition" ErrorMessage="必填项"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator20" runat="server" 
                    ControlToValidate="Condition" ErrorMessage="请输入大于等于0的整数" 
                    Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
            </td>
        </tr>
    <tr>
         <td colspan="2" align="center">
             <asp:Button ID="submit" class="C_input" runat="server" Text="修改" OnClick="updateBT_Click"  />&nbsp&nbsp
            <asp:Button ID="reset" class="C_input"  runat="server" Text="重置"  />&nbsp&nbsp
            <asp:Button ID="back" class="C_input"  runat="server" Text="返回" onclick="back_Click" /></td>
    
    </tr>
    </table>
    </form>
</body>
</html>
   