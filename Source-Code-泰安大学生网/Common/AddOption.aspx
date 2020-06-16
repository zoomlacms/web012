<%@ page language="C#" autoeventwireup="true" inherits="Common_AddOption, App_Web_33xyjpeu" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>添加分类</title>
</head>
<body>
    <form id="form1" runat="server">
      <table width="100%" border="1" cellpadding="0" cellspacing="0">
        <tr>
          <td colspan="2" align="center">
              <asp:Literal ID="Literal1" runat="server" Text="添加选项"></asp:Literal></td>
        </tr>
        <tr>
          <td width="22%">选项名称：</td>
          <td width="78%"><asp:TextBox ID="classname" runat="server" Width="196px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                  ErrorMessage="选项名称不能为空!" ControlToValidate="classname"></asp:RequiredFieldValidator>
            <br /></td>
        </tr>
        <tr>
          <td>选项值：</td>
          <td><asp:TextBox ID="classvalue" runat="server" Width="196px"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td colspan="2" align="center">
              <asp:Button ID="Button1" runat="server" Text="添加" onclick="Button1_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="返回" onclick="Button2_Click" CausesValidation="false" />
            </td>
        </tr>
      </table>
    </form>
</body>
</html>
