<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.AuditingLink, App_Web_x0s3sxna" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>工作流程</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
    function Switch(obj) {
        obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
        var nextDiv;
        if (obj.nextSibling) {
            if (obj.nextSibling.nodeName == "DIV") {
                nextDiv = obj.nextSibling;
            }
            else {
                if (obj.nextSibling.nextSibling) {
                    if (obj.nextSibling.nextSibling.nodeName == "DIV") {
                        nextDiv = obj.nextSibling.nextSibling;
                    }
                }
            }
            if (nextDiv) {
                nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none";
            }
        }
    }
    function OpenLink(lefturl, righturl) {
        if (lefturl != "") {
            parent.frames["left"].location = lefturl;
        }
        try {
            parent.MDIOpen(righturl); return false;
        } catch (Error) {
            parent.frames["main_right"].location = righturl;
        }
    }
    function gotourl(url) {
        try {
            parent.MDILoadurl(url); void (0);
        } catch (Error) {
            parent.frames["main_right"].location = "../" + url; void (0);
        }
    }
</script>

</head>
<body id="Guidebody" style="margin: 0px; margin-top: 1px;">
    <form id="formGuide" runat="server">
    <div id="Guide_back">
        <ul>
            <li id="Guide_top">
                <div id="Guide_toptext">
                    工作流程管理</div>
            </li>
            <li id="Guide_main">
                <div id="Guide_box">
                    <div class="guideexpand" onclick="Switch(this)">
                        工作流程管理
                    </div>
                    <div class="guide">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('Content/AuditingState.aspx');">审核状态管理</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('Content/AddAuditingState.aspx');">添加审核状态码</a></li>
                        </ul>
                    </div>
                </div>
            </li>
<%--            <li id="Li1">
                <div id="Div1">
                    <div class="guideexpand" onclick="Switch(this)">
                        各流程的步骤管理
                    </div>
                    <div class="guide">
                        <ul style="text-align:left">
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="odsAuditingState"  Width="100%" >
                                <ItemTemplate>
                                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                        <a href="javascript:gotourl('Content/AuditingState.aspx');">
                                            <%#Eval("StateName") %></a></li>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:ObjectDataSource ID="odsAuditingState" runat="server" SelectMethod="GetAuditingStateAll"
                                TypeName="ZoomLa.BLL.B_AuditingState"></asp:ObjectDataSource>
                        </ul>
                    </div>
                </div>
            </li>--%>
        </ul>
    </div>
    </form>
</body>
</html>
