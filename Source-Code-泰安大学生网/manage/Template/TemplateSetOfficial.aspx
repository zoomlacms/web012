<%@ page language="C#" autoeventwireup="true" inherits="manage_Template_TemplateSetOfficial, App_Web_ruzueav4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<html>
<head runat="server">
<title>官方方案下载</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="/js/lightbox2.02/css/lightbox.css" type="text/css" media="screen" />
<script src="/js/lightbox2.02/js/prototype.js" type="text/javascript"></script>
<script src="/js/lightbox2.02/js/scriptaculous.js?load=effects" type="text/javascript"></script>
<script src="/js/lightbox2.02/js/lightbox.js" type="text/javascript"></script>
<style type="text/css">
    #gallery
    {
        padding: 10px;
        width: 100%;
    }
    #gallery ul
    {
        list-style: none;
    }
    #gallery ul li
    {
        display: inline;
    }
    #gallery ul img
    {
        border: 5px solid #3e3e3e;
        border-width: 5px 5px 20px;
    }
    #gallery ul a:hover img
    {
        border: 5px solid #fff;
        border-width: 5px 5px 20px;
        color: #fff;
    }
    #gallery ul a:hover
    {
        color: #fff;
    }
</style>
<script type="text/javascript">
    function clicklocal() {
        var loca = document.getElementById("localtb");
        var serv = document.getElementById("servertb");
        if (loca.style.display == "none") {
            loca.style.display = "";
            serv.style.display = "none";
        }
    }

    function clickserver() {
        var loca = document.getElementById("localtb");
        var serv = document.getElementById("servertb");
        if (serv.style.display == "none") {
            serv.style.display = "";
            loca.style.display = "none";
        }
    }

    function callinstall(url) {
        top.Installtemp("Template/" + url);
    }

    window.onload = function () {
        var loca = document.getElementById("localtb");
        var serv = document.getElementById("servertb");
        var CurrentPage = '<%=Request.QueryString["CurrentPage"] %>';
        if (CurrentPage.length > 0) {
            serv.style.display = "";
           // loca.style.display = "none";
        }
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span>&gt;&gt;<span>系统设置</span> &gt;&gt;<span><a href="TemplateSet.aspx">方案设置</a></span>
        <a href="AddtemplateSet.aspx">[发布方案]</a> <a href="TemplateSet.aspx">[本地方案]</a></div>
    <div class="clearbox">
    </div>

    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <%--<tr class="gridtitle" align="center" style="height: 25px;">
            <td width="100%" colspan="4" style="cursor: pointer" onclick="clicklocal()">
                ↓本地方案列表
            </td>
        </tr>--%>
        <%--<tr>
            <td id="localtb" name="localtb">
                <table width="100%" border="0" cellpadding="0" cellspacing="1">
                    <asp:Label ID="tempclientlist" runat="server" Text=""></asp:Label>
                    <tr class="tdbg" align="center" style="height: 25px;">
                        <td width="25%" colspan="4">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>--%>
        <tr class="gridtitle" align="center" style="height: 25px;">
            <td width="100%" colspan="4" style="cursor: pointer" onclick="clickserver()">
                ↓官方下载<a href="javascript:window.open('http://www.zoomla.cn/Shop.aspx?ItemID=18','');">[更多模板]
                </a>
            </td>
        </tr>
        <tr>
            <td  id="servertb" name="servertb">
                <table width="100%" border="0" cellpadding="0" cellspacing="1">
                    <asp:Label ID="templatelist" runat="server" Text=""></asp:Label>
                    <tr class="tdbg" align="center" style="height: 25px;">
                        <td width="25%" colspan="4">
                            共
                            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                            个信息
                            <asp:Label ID="Toppage" runat="server" Text="" />
                            <asp:Label ID="Nextpage" runat="server" Text="" />
                            <asp:Label ID="Downpage" runat="server" Text="" />
                            <asp:Label ID="Endpage" runat="server" Text="" />
                            页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                                Text="" />页
                            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" Visible="false" class="l_input"
                                Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>8
                            条信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                            页
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <div class="clearbox">
    </div>
    </form>
</body>
</html>
