<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="gb2312" %> 
<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>主机环境变量</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server">
    
      <div class="r_navigation">
    
  <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>系统</span> &gt;&gt; <span>主机环境变量</span>
    </div>
    <div class="clearbox"></div>
   <table border="0" cellpadding="5" cellspacing="1" width="100%"  align="center" class="border">
	<tr class="spacingtitle">
		<td align="center" colspan="2">项目值</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>服务器的域名</td>
       
		<td width="66%"><%=Request.ServerVariables["server_name"]%></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>服务器的IP地址</td>
		<td width="66%"><%=Request.ServerVariables["LOCAL_ADDR"]%></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>服务端口</td>
		<td width="66%"><%=Request.ServerVariables["SERVER_PORT"]%></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>服务器软件</td>
		<td width="66%"><%=Request.ServerVariables["SERVER_SOFTWARE"]%></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>服务器操作系统</td>
		<td width="66%"><%=Environment.OSVersion.ToString()%></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>服务器CPU数量</td>
		<td width="66%"><%=Environment.GetEnvironmentVariable("NUMBER_OF_PROCESSORS")%></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>服务器CPU详情</td>
		<td width="66%"><%=Environment.GetEnvironmentVariable("PROCESSOR_IDENTIFIER")%></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>服务器当前时间</td>
		<td width="66%"><%=DateTime.Now %></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>脚本连接超时时间</td>
		<td width="66%"><%=Server.ScriptTimeout/1000 %> 秒</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>.NET Framework 版本</td>
		<td width="66%">.NET CLR  <%=string.Concat(new object[] { Environment.Version.Major, ".", Environment.Version.Minor, Environment.Version.Build, ".", Environment.Version.Revision })%> </td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>服务器上次启动到现在已运行</td>
		<td width="66%"><%=((Environment.TickCount / 0x3e8) / 60).ToString() + "分钟"%> </td>
	</tr>
	
	
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>当前程序占用内存</td>
		<td width="66%"><%= ((Double)GC.GetTotalMemory(false) / 1048576).ToString("N2") + "M"%> </td>
	</tr>
	
	 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="display:none">
		<td> Asp.net所占内存</td>
		<td width="66%"><%=((Double)System.Diagnostics.Process.GetCurrentProcess().WorkingSet64 / 1048576).ToString("N2") + "M"%> </td>
	</tr>
	 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>Asp.net所占CPU</td>
		<td width="66%"><%= ((TimeSpan)System.Diagnostics.Process.GetCurrentProcess().TotalProcessorTime).TotalSeconds.ToString("N0")%> </td>
	</tr>
	
	
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>服务器Application数量</td>
		<td width="66%">
            <%=Application.Contents.Count %></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>服务器Session数量</td>
		<td width="66%">
            <%=Session.Contents.Count %></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>本文件请求的物理路径</td>
		<td width="66%"><%=Server.MapPath("./Circumstance.aspx")%></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td>本文件请求的URL</td>
		<td width="66%"><%=Request.Url.AbsoluteUri %></td>
	</tr>
</table>
<br /><br />
<asp:Button ID="Button4" runat="server" Text="<<返回" class="C_input"/>     
<asp:Button ID="Button5" runat="server" Text="前进>>" class="C_input"/>
  </form>
</body>
</html>