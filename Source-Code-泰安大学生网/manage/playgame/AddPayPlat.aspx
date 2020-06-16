<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.AddPayPlat, App_Web_iv1miygb" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>编辑在线支付平台</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span>&gt;&gt;<span>系统设置</span> &gt;&gt;<a href="PayPlatManage.aspx">在线支付平台管理</a>&gt;&gt;<span><asp:Label ID="LblAction" runat="server" Text="添加支付平台"></asp:Label></span>
	</div>
    <div class="clearbox"></div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr align="center">
            <td class="spacingtitle" colspan="2">
                <asp:Label ID="LblTitle" runat="server" Text="添加在线支付平台" />
            </td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft">
                <strong>接口类型：</strong></td>
            <td>
                <asp:DropDownList ID="DDLPayPlat" runat="server" Width="130px" 
                    AutoPostBack="True" onselectedindexchanged="DDLPayPlat_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="DDLPayType" runat="server"  Width="130px" >
                </asp:DropDownList>
                <span style="color:black">* 必选</span>
            </td>            
        </tr>
        
       <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>支付名称：</strong></td>
            <td>
                <asp:TextBox ID="DDLPayName" class="l_input"  runat="server"></asp:TextBox>
                <span style="color:black">* 必填</span>
            </td>            
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>商户ID：</strong></td>
            <td>
                <asp:TextBox ID="TxtAccountID" class="l_input"  runat="server" />
                <span style="color:black">* 必填</span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="商户ID不能为空！"
                    ControlToValidate="TxtAccountID" Display="Dynamic" SetFocusOnError="True" />
            </td>            
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>安全校验码：</strong></td>
            <td>
                <asp:TextBox ID="TxtMD5Key" class="l_input"  runat="server" />
                <span style="color:black">* 必填</span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="安全校验码不能为空！"
                    ControlToValidate="TxtMd5Key" Display="Dynamic" SetFocusOnError="True" />
            </td>            
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>卖家Email：</strong></td>
            <td>
                <asp:TextBox ID="TxtSellerEmail" class="l_input"  runat="server" />
                <span style="color:black">如支付宝接口必须填写卖家Email,否则会出错</span>
            </td>            
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>分成：</strong></td>
            <td>
                <asp:TextBox ID="TxtRate" class="l_input"  runat="server" Text="0" />%&nbsp;&nbsp<span style="color:black">*此项如设置为10%，则商户得到90%</span>
                <asp:RegularExpressionValidator runat="server" ID="Rev_1" ValidationExpression="^[0-9]\d*|0$" ControlToValidate="TxtRate" ErrorMessage="只能输入整数"></asp:RegularExpressionValidator>
            </td>            
        </tr> 
        
            <tr>
            <td class="tdbgleft">
                        <strong>所属用户组：</strong></td>
                <td>
                    <table>                
                <tr>
                    <td  colspan="2">
                       <asp:ListBox ID="groupList" runat="server" 
                            DataTextField="GroupName" DataValueField="GroupID" SelectionMode="Multiple" 
                            Width="130px"></asp:ListBox>
                        <asp:Button ID="groupOK" class="C_input" runat="server" onclick="groupOK_Click" Text="选定用户组" 
                            CausesValidation="False" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="groupTB" ErrorMessage="请从左边选择用户组"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    
                    <td>
                        <asp:TextBox ID="groupTB" class="l_input"  runat="server"  BackColor="Gray" ReadOnly="true"/>
                        <span style="color:black">* 不用输入，在上面选择，此项为了给不同用户组分配不同的分成</span></td>
                </tr>
            </table>
                </td>
            </tr>
        
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="center">
                &nbsp; 
                <asp:HiddenField ID="HdnPayPlatID" runat="server" />
                &nbsp;
                <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server" class="C_input" />&nbsp; &nbsp;
                <input name="Cancel" type="button" class="C_input" id="BtnCancel" value="取消" onclick="window.location.href='PayPlatManage.aspx'" />                
            </td>
        </tr>
    </table>
        </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
