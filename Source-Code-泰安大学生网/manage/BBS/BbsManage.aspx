<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_BbsManage, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>管理论坛资料</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
    <style type="text/css">
        .style1
        {
            width: 703px;
        }
        .style2
        {
            width: 343px;
        }
        .style3
        {
            width: 700px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="r_navigation">
    
  <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>论坛</span> &gt;&gt; <span>管理论坛资料</span>
    </div>
    <div class="clearbox"></div>
    <table border="0" cellpadding="0" cellspacing="1" width="100%" class="border">
     <tr align="center" >
                <td >
                   <strong>论坛数 1：</strong>
                  <strong>主题数 0：</strong>
                  </td></tr>  
    </table>
    <div class="clearbox"></div>
     <table border="0" cellpadding="0" cellspacing="0" width="100%" class="border" >
     <tr align="center">
   <td  class="spacingtitle"><span>批量删除主题</span></td>
   </tr>
    </table>
   <table border="0" cellpadding="1" cellspacing="1" width="100%" class="border">
   <tr class="tdbg">
   <td style="width: 352px;" align="left">
       <asp:Button ID="Button1" runat="server" Text="删除" class="C_input"/>
       <asp:DropDownList ID="DropDownList1" runat="server">
           <asp:ListItem>30</asp:ListItem>
           <asp:ListItem>60</asp:ListItem>
           <asp:ListItem>90</asp:ListItem>
           <asp:ListItem>180</asp:ListItem>
           <asp:ListItem>360</asp:ListItem>
       </asp:DropDownList>
       <span>天没有人查看过的主题 </span>
       </td>
   <td align="center"class="style2">
       <asp:DropDownList ID="DropDownList2" runat="server">
           <asp:ListItem Selected="True">所有论坛</asp:ListItem>
           <asp:ListItem>主分类</asp:ListItem>
           <asp:ListItem>-&gt;&gt;主板块</asp:ListItem>
       </asp:DropDownList>
                    </td>
   <td align="center">
       <asp:Button ID="Button2" runat="server" Text="确 定" class="C_input"/>
                    </td>
   </tr>
   <tr class="tdbg">
   <td style="width: 352px;"align="left">
       <asp:Button ID="Button3" runat="server" Text="删除" class="C_input"/>
       <asp:TextBox ID="TextBox1" runat="server" class="l_input"></asp:TextBox>
       发表的所有主题
       </td>
   <td align="center" class="style2">
       <asp:DropDownList ID="DropDownList3" runat="server">
           <asp:ListItem Selected="True">所有论坛</asp:ListItem>
           <asp:ListItem>主分类</asp:ListItem>
           <asp:ListItem>-&gt;&gt;主板块</asp:ListItem>
       </asp:DropDownList>
                    </td>
   <td align="center">
       <asp:Button ID="Button4" runat="server" Text="确 定" class="C_input"/>
                    </td>
   </tr>
   <tr class="tdbg" align="center">
   <td style="width: 352px;" align="left">删除标题里包含有<asp:TextBox ID="TextBox2" runat="server" 
           Width="83px" class="l_input"></asp:TextBox>的所有主题 </td>
   <td align="center" class="style2">
       <asp:DropDownList ID="DropDownList4" runat="server">
           <asp:ListItem Selected="True">所有论坛</asp:ListItem>
           <asp:ListItem>主分类</asp:ListItem>
           <asp:ListItem>-&gt;&gt;主板块</asp:ListItem>
       </asp:DropDownList>
                    </td>
   <td align="center">
       <asp:Button ID="Button5" runat="server" Text="确 定" class="C_input"/>
                    </td>      
   </tr>
      </table>
      <div class="clearbox"></div>
           <div class="clearbox"></div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%"  class="border">
     <tr align="center">
   <td  class="spacingtitle">批量删除回帖</td>
   </tr>
    </table>
   <table border="0" cellpadding="1" cellspacing="1" width="100%" class="border" >
   <tr class="tdbg" align="left">
   
   <td align="left" class="style3">
  <asp:Button ID="Button6" runat="server" Text="删除" class="C_input"/>
       <asp:TextBox ID="TextBox3" runat="server" class="l_input"></asp:TextBox>
       发表的所有回帖</td>
   <td align="center">
       <asp:Button ID="Button7" runat="server" Text="确 定" class="C_input"/>
                    </td>
   </tr>
   <tr class="tdbg">
  
   <td align="left" class="style3">
       <asp:Button ID="Button11" runat="server" Text="清空" class="C_input"/>
       <asp:TextBox ID="TextBox4" runat="server" class="l_input"></asp:TextBox>
       天前删除的回帖</td>
   <td align="center">
       <asp:Button ID="Button9" runat="server" Text="确 定" class="C_input"/>
                    </td>
   </tr>
   <tr class="tdbg">
   <td align="left" class="style3" >
       删除标题里包含有<asp:TextBox ID="TextBox5" runat="server" class="l_input"></asp:TextBox>的所有回帖 </td>
   <td align="center">
       <asp:Button ID="Button10" runat="server" Text="确 定" class="C_input"/>
                    </td>
       
   </tr>
      </table>
       <br />
           <table border="0" cellpadding="0" cellspacing="0" width="100%" class="border" >
     <tr align="center">
   <td  class="spacingtitle">移动论坛帖子</td>
   </tr>
    </table>
   <table border="0" cellpadding="1" cellspacing="1" width="100%"  class="border">
   <tr class="tdbg">
   
   <td align="left" class="style1">
       将<asp:DropDownList ID="DropDownList5" runat="server">
           <asp:ListItem Selected="True">-&gt;&gt; 主板块</asp:ListItem>
           <asp:ListItem>主分类</asp:ListItem></asp:DropDownList>
     移动到 <asp:DropDownList ID="DropDownList6" runat="server">
           <asp:ListItem Selected="True">-&gt;&gt; 主板块</asp:ListItem>
           <asp:ListItem>主分类</asp:ListItem></asp:DropDownList></td>
   <td align="center" rowspan="2">
       <asp:Button ID="Button12" runat="server" Text="确 定" class="C_input"/>
                    </td>
   </tr>
   <tr class="tdbg">
   <td align="left" class="style1">
       仅移动<asp:TextBox ID="TextBox6" runat="server" Width="27px" class="l_input">0</asp:TextBox>天前的帖子仅移动<asp:TextBox 
           ID="TextBox7" runat="server" class="l_input"></asp:TextBox>发表的帖子</td>
   </tr>
      </table>   
        <br />
  <asp:Button ID="Button8" runat="server" Text="<<返回" class="C_input"/>     
  <asp:Button ID="Button13" runat="server" Text="前进>>" class="C_input"/>
    </form>
  </body>
  </html>
  