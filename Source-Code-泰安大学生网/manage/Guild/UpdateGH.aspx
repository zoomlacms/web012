<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_UpdateGH, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>修改公会</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt;
        <span><a href="GHManage.aspx">公会列表</a></span> &gt;&gt; <span>修改公会</span>
    </div>
    <div class="r_navigation">
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr>
                <td colspan="2" class="spacingtitle" align="center">
                    修改公会
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
                <td align="right">
                    公会名称:
                </td>
                <td>
                    <asp:TextBox ID="txtGname" runat="server" class="l_input" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td  align="right">
                    注册邮箱:
                </td>
                <td>
                    <asp:TextBox ID="txtGmail" runat="server" class="l_input" ReadOnly="true"></asp:TextBox>
                    
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
                <td align="right">
                    游戏种类:
                </td>
                <td>
                    <asp:DropDownList ID="DrGameclass" runat="server" class="l_input">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
                <td align="right">
                    公会等级:
                </td>
                <td>
                    <asp:TextBox ID="txtGlevel" runat="server" class="l_input" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*请输入公会等级" 
                            ControlToValidate="txtGlevel" ></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ErrorMessage="*请正确填写数字" Type="Integer" Display="Dynamic"
                            MaximumValue="99999" MinimumValue="1" ControlToValidate="txtGlevel"></asp:RangeValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
                <td align="right">
                    公会贡献度:
                </td>
                <td>
                    <asp:TextBox ID="txtDevote" runat="server" class="l_input"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请输入公会贡献度" 
                            ControlToValidate="txtGlevel" ></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ErrorMessage="*请正确填写数字" Type="Integer" Display="Dynamic"
                            MaximumValue="99999" MinimumValue="1" ControlToValidate="txtGlevel"></asp:RangeValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
                <td align="right">
                    联盟xml列表:
                </td>
                <td>
                    <asp:TextBox ID="txtBloc" runat="server" class="l_input"></asp:TextBox>
              
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
                <td align="right">
                    公会金元:
                </td>
                <td>
                    <asp:TextBox ID="txtGmoney" runat="server" class="l_input"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*请输入公会金元" 
                            ControlToValidate="txtGmoney" ></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" 
                            ErrorMessage="*请正确填写公会金元" Type="Double" Display="Dynamic"
                            MaximumValue="99999" MinimumValue="1" ControlToValidate="txtGmoney"></asp:RangeValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
                <td align="right">
                    入住家公会入住数:
                </td>
                <td >
                    <asp:TextBox ID="txtRegUserNum" runat="server" class="l_input"></asp:TextBox>
                 
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td  align="right">
                    模板:
                </td>
                <td>
                    <asp:DropDownList ID="DrTemplate" runat="server" class="l_input">
                    </asp:DropDownList>
             
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td  align="right">
                    风格:
                </td>
                <td>
                    <asp:DropDownList ID="DrSkin" runat="server" class="l_input">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td  align="right">
                    公会页面的LOGO:
                </td>
                <td>
                    <asp:TextBox ID="txtGLogo" runat="server" class="l_input"/>
                    <iframe id="bigimgs" style="top:2px" src="../../User/fileupload.aspx?menu=txtGLogo" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>  
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*请输入公会页面的LOGO" 
                            ControlToValidate="txtRegUserNum" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td  align="right">
                    公会页面的横幅:
                </td>
                <td>
                    <asp:TextBox ID="txtGbanner" runat="server" class="l_input"></asp:TextBox>
                    <iframe id="bigimgs" style="top:2px" src="../../User/fileupload.aspx?menu=txtGbanner" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>  
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*请输入 公会页面的横幅" 
                            ControlToValidate="txtRegUserNum" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td  align="right">
                    公会创建者:
                </td>
                <td>
                    <asp:TextBox ID="txtGCreateUserID" runat="server" class="l_input" ReadOnly="true"></asp:TextBox>
                </td>
                
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td  align="right">
                    家族名称:
                </td>
                <td>
                    <asp:TextBox ID="txtFamilyName" runat="server" class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td  align="right">
                    形象代言:
                </td>
                <td>
                    <asp:TextBox ID="txtVisualize" runat="server" class="l_input"></asp:TextBox>
                    
                </td>
            </tr>
            <tr class="tdbg">
                <td style="height: 21px" colspan="4" align="center">
                    <asp:Button ID="btnSave" runat="server" Text="保存修改" Width="100px" OnClick="btnUpdate_Click" class="C_input"/>
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="取　消" Width="100px" OnClientClick="location.href='GHManage.aspx';return false;" class="C_input"/>
                </td>
            </tr>
        </table>
    </div>

    </form>
</body>
</html>
