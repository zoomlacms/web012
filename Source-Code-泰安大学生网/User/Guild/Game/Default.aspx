<%@ page language="C#" autoeventwireup="true" inherits="User_Game_Default, App_Web_ebq2nbik" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>选择支付平台</title>
    <link href="../../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
    <link href="../../User/css/commentary.css" rel="stylesheet" type="text/css" />
    <link href="../../User/css/default1.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
    <link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
</head>
<body>
    <form id="form1" runat="server">    
    <br />
    <table class="border" cellspacing="1" align="left" cellpadding="2" style="width: 770px">
        <tr style="width: 800px" >
            <td style="background-color: #E47833  " colspan="2" >
                <h2 style="text-align: center;">
                    游戏充值 </h2>
            </td>
        </tr>
        <tr>
            <td>
                <div id="part1" runat="server">
                    <table>
                        <tr class="tdbg"> <td colspan="2">第一步：</td></tr>
       <tr class="tdbg" style="width: 800px">
            <td style="text-align: right;">
                游戏所在分区：
            </td>
            <td style="text-align: left;">
                <asp:DropDownList ID="GameArea" runat="server" DataTextField="areaName" 
                    DataValueField="ID" onselectedindexchanged="GameArea_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
               <%=alterinfo %>
            </td>
        </tr>
        <tr class="tdbg" style="width: 800px">
            <td style="text-align: right;">
                游戏账号：
            </td>
            <td style="text-align: left;">
                <asp:TextBox ID="GameNum" runat="server" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="GameNum" ErrorMessage="请输入游戏账号"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" style="width: 800px">
            <td style="text-align: right;">
                确认游戏账号：
            </td>
            <td style="text-align: left;">
                <asp:TextBox ID="GameNum1" runat="server" Width="128px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="GameNum" ControlToValidate="GameNum1" 
                    ErrorMessage="两次账号输入不相同"></asp:CompareValidator>
            </td>
        </tr>
        <tr class="tdbg" style="width: 800px">
            <td style="text-align: right;">
                支付方式：
            </td>
            <td style="text-align: left;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="payPlat" ErrorMessage="请选择支付方式"></asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="payPlat" runat="server" DataTextField="PayPlatName" 
                    DataValueField="PayPlatID"                   
                    CausesValidation="True">
                </asp:RadioButtonList>
            </td>
            
        </tr>
        <tr class="tdbg" style="width: 800px">
            <td align="center" colspan="2">
                <asp:Button ID="next" runat="server" Text="下一步" onclick="next_Click" />
            </td>
        </tr>
                    </table>
                </div>
            </td>
        </tr>
        
        <tr class="tdbg" style="width: 800px">
           <td colspan="2">
                <div id="notCard" visible="false" runat="server">
                    <table>
                    <tr class="tdbg"> <td colspan="2">第二步：</td></tr>
                        <tr>
                            <td>
                                支付金额：
                            </td>
                            <td>
                                
                                <asp:DropDownList ID="notCardfaceno" runat="server" 
                                   
                                    AutoPostBack="True"  >
                                
                                </asp:DropDownList>
                                
                            </td>
                        </tr>
                       <tr class="tdbg" style="width: 800px">
                                <td colspan="2" align="center">
                                    <asp:Button ID="Button2" runat="server" Text=" 完成 " OnClick="BtnSubmit_Click" />
                                </td>
                        </tr>      
                    </table>
                </div>
                <div id="yeeCard" visible="false" runat="server">
                    <table>
                    <tr class="tdbg"> <td colspan="2">第二步：</td></tr>
                        <tr>
                            <td>
                              请选择充值卡数量：
                            </td>
                            <td>
                                
                                <asp:DropDownList ID="cardNum" runat="server" 
                                    onselectedindexchanged="cardNum_SelectedIndexChanged" AutoPostBack="True">
                                    <asp:ListItem Text="1张" Value="1"/>
                                    <asp:ListItem Text="2张" Value="2" />
                                    <asp:ListItem Text="3张" Value="3" />
                                    <asp:ListItem Text="4张" Value="4" />
                                    <asp:ListItem Text="5张" Value="5" />
                                    <asp:ListItem Text="6张" Value="6" />
                                    <asp:ListItem Text="7张" Value="7" />
                                    <asp:ListItem Text="8张" Value="8" />
                                    <asp:ListItem Text="9张" Value="9" />
                                    <asp:ListItem Text="10张" Value="10" />
                                </asp:DropDownList>
                                
                            </td>                           
                        </tr>
                         <%=yeepayTable%>
                          <tr class="tdbg" style="width: 800px">
                                <td colspan="2" align="center">
                                    <asp:Button ID="Button1" runat="server" Text=" 完成 " OnClick="BtnSubmit_Click" />
                                </td>
                        </tr>    
                    </table>
                </div>
                <div id="otherCard" visible="false" runat="server">
                    <table>
                    <tr class="tdbg" > <td colspan="2" >第二步：</td></tr>
                        <tr style="width:600">
                            <td>支付金额：</td><td>
                            <asp:DropDownList ID="otherCardfaceno"  runat="server">
                            </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="width:600">
                           <td>支付卡：</td>
                           <td>
                                <table>
                                <tr>
                                    <td>卡号：</td><td>
                                    <asp:TextBox ID="otherCardno" runat="server"></asp:TextBox>
                                    </td>
                                 </tr>
                                <tr><td>密码：</td><td>
                                    <asp:TextBox ID="otherCardPwd" runat="server" ></asp:TextBox>
                                    </td></tr>
                                </table>
                            </td>
                            
                        </tr>
                        
                        <tr class="tdbg" style="width: 800px">
                                <td colspan="2" align="center">
                                    <asp:Button ID="BtnSubmit" runat="server" Text=" 完成 " OnClick="BtnSubmit_Click" />
                                </td>
                        </tr>    
                        
                    </table>
                </div>
           </td>
        </tr>
           
    </table>
    </form>
    
</body>
</html>
