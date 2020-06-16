<%@ page language="C#" autoeventwireup="true" inherits="Forum_Topic, App_Web_knp4v2m5" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%Call.Label("{$SiteName/}"); %>互动交流平台</title> 
<script language="JavaScript" type="text/javascript" src="Utility/global.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/BBSXP_Modal.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/Post.js"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>   
<script src="Utility/Common.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="archives" title="<%Call.Label("{$SiteName/}"); %>论坛官方" href="http://www.ZoomLa.cn/archiver/" />
<link rel="alternate" type="application/rss+xml" title="<%Call.Label("{$SiteName/}"); %>论坛官方" href="http://www.ZoomLa.cn/rss.aspx" />
<link rel="stylesheet" type="text/css" href="Themes/default/scriptstyle_1_post.css" />  
</head>
<body onload="switchicon(null,null),typeTh('')">
    <form id="form1" runat="server">
    <div id="ajaxwaitid">
    </div>
    <div id="header">

    <div id="wrap" class="wrap s_clear">
        <div class="main">
            <div class="content editorcontent">
                <input type="hidden" name="formhash" id="formhash" value="" />
                <input type="hidden" name="posttime" id="posttime" value="" />
                <input type="hidden" name="wysiwyg" id="e_mode" value="0" />
                <input type="hidden" name="iconid" id="iconid" value="" />
                <div class="s_clear" id="editorbox">
                    <h3 class="float_ctrl">
                        <em id="returnmessage">发表回复</em></h3>
                    <div class="postbox" id="postbox">
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                        <asp:HiddenField ID="HiddenField2" runat="server" />
                        <div id="e_controls" style="margin-top:5px">
                            <div>
                                <div class="newediter">
                                    <table cellpadding="0" cellspacing="0" border="0" width="100%" style="table-layout: fixed">
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TxtBody" Height="300px" TextMode="MultiLine" class="txt" prompt="post_message" tabindex="1" runat="server" ></asp:TextBox>
                                                <script type="text/javascript">
                                                    //<![CDATA[
                                                    CKEDITOR.replace('TxtBody',
						                            {
						                                skin: 'kama'
						                            });
                                                    //]]>
                                                </script>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div> 
                        <div class="btnbar">
                            <span></span>
                            <asp:Button ID="postsubmit" runat="server" Text="发表回复" prompt="post_submit" tabindex="1" onclick="postsubmit_Click"/>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    <div id="ad_footerbanner" runat="server">
    </div> 
    </form>
</body>
</html>
