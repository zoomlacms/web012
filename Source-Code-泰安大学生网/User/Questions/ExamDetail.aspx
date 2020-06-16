<%@ page language="C#" autoeventwireup="true" inherits="User_Questions_ExamDetail, App_Web_433zsf4n" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>参加考试</title>
<link rel="stylesheet" type="text/css" href="../Skin/User_Main.css" />
<link rel="stylesheet" type="text/css" href="../Skin/user_user.css" />
<script src="../../JS/jquery.js"></script>
<style type="text/css">
.Mulchoice{float:left;}
.Clock{
    position: absolute;
    border: 2px solid #CCC;
    background-color: #FFF;
    font-size:12px;
    z-index:1000;
}
</style>
<script>
    function ShowDiv(obj) {
        if (document.getElementById("Div" + obj).style.display == "") {
            document.getElementById("Div" + obj).style.display = "none";
            document.getElementById("Show" + obj).innerHTML = "<img src='../../Images/ico_a.gif' onclick=\"ShowDiv('" + obj + "')\" style='float:right' > ";
        } else {
            document.getElementById("Div" + obj).style.display = "";
            document.getElementById("Show" + obj).innerHTML = "<img src='../../Images/ico_b.gif' onclick=\"ShowDiv('" + obj + "')\" style='float:right'  > ";
        }
    }
    function scall() {
        Scro();
        document.getElementById("BtnClick").disabled = "disabled";
    }
    window.onscroll = scall;
    window.onresize = scall;

    function CloseDiv() {
        if (document.getElementById("DivClock").style.display == "") {
            document.getElementById("DivClock").style.display = "none";
            document.getElementById("BtnClick").disabled = "";
        } else {
            document.getElementById("DivClock").style.display = "";
            document.getElementById("BtnClick").disabled = "disabled";
        }
    }

    function CliTime() {
        $.get(
		'/action/GetTime.aspx?' + Math.random().toString(),'',
		function (obj) {
		    var res = obj;
		    var today = new Date(res.replace('-', '/'));   //当前时间
		    var times = $("#hfTimes").val();
		    var endtime = new Date(times.replace('-', '/')).getTime();  //结束时间
		    timeold = endtime - today.getTime();
		    sectimeold = timeold / 1000;
		    secondsold = Math.floor(sectimeold);
		    msPerDay = 24 * 60 * 60 * 1000;
		    e_daysold = timeold / msPerDay;
		    daysold = Math.floor(e_daysold);   //结束时间的天数
		    e_hrsold = (e_daysold - daysold) * 24;
		    hrsold = Math.floor(e_hrsold);    //小时数
		    e_minsold = (e_hrsold - hrsold) * 60;
		    minsold = Math.floor((e_hrsold - hrsold) * 60);  //分数
		    seconds = Math.round((e_minsold - minsold) * 60);  //秒数
		    if (daysold < 0 || (hrsold <= 0 && minsold <= 0 && seconds <= 0)) {  //时间结束
		        alert("时间已到，强制交卷");
		        location.href = "ExamResult.aspx?pid=<%=Request.QueryString["ID"] %>";
		    } else {
		        $("#spTime").html("<font color='red'>" + hrsold + "时" + minsold + "分" + seconds + "秒</font>");
		    }
		}, ''
	);
}

$(function() {
   scall();
    CliTime();
});
setInterval("CliTime()", 1000);

function GetAnswer(pid,questid,answer){
    //alert('OperDate.aspx?menu=answer&pid='+pid+'&qid='+questid+'&ans='+answer+'&a=' + Math.random().toString());
    $.get('OperDate.aspx?menu=answer&pid='+pid+'&qid='+questid+'&ans='+answer+'&a=' + Math.random().toString(),'',
    function(obj){  
        //alert(obj);
    },'');
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div align="center">
    <div align="center" style="border-bottom:solid 2px #ADD8E6;width:80%" >
    <div align="center" style="font-weight:bold;float:left;width:100%;right:40px"><asp:literal ID="liTitle" runat="server"></asp:literal></div>
    <div style="float:right">总共<asp:Literal ID="liNum" runat="server"></asp:Literal>题，共<asp:Literal ID="liCourse" runat="server"></asp:Literal>分
    <asp:Button ID="btnSub" runat="server" Text="交卷" Width="70px" Height="21px" onclick="btnSub_Click" />&nbsp;<input id="BtnClick" type="button" value="打开时钟" onclick="CloseDiv()" /></div>
</div>
<!-- 右边时钟提示 begin -->
<div id="DivClock" class="Clock" style="width:80px; height:100px" align="center">
    <div id="DivClose" style="float:right;color:Red;cursor:pointer;width:10px;height:10px;width:100%" align="right" onclick="CloseDiv()">X</div>
    剩余时间：<div style="width:100%"><span id="spTime"></span></div><br /><br />
   <%-- <div id="ScoreStatics" style=" float:right; width:100%; height:10px"><a href="OperDate.aspx">检查答案</a></div>--%>
</div>
<asp:HiddenField ID="hfTimes" runat="server" />
<script language="javascript">
    function Scro() {
        document.getElementById("DivClock").style.top = (document.documentElement.scrollTop + 50) + "px";
        document.getElementById("DivClock").style.left = (document.documentElement.scrollLeft + document.documentElement.clientWidth - document.getElementById("DivClock").offsetWidth) + "px";
    }
</script>
<!-- 右边时钟提示 end -->
<div style="margin-top:40px">
<div style="float:left;width:20%"></div>
<asp:HiddenField ID="hfclassid" runat="server" />
    <div style="float:right;width:80%">
    <asp:Repeater ID="Repeater1" runat="server"  onitemdatabound="Repeater1_ItemDataBound">
        <ItemTemplate>
        <!-- 大题显示 begin -->
            <div style="background-color:#ADD8E6;height:25px;font-size:11pt;margin-bottom:5px;margin-top:5px;width:100%;line-height:25px" >
                <div style="float:left;" align="left"><%#GetChineseNumd((Container.ItemIndex + 1).ToString())%>、<%#Eval("QuestionTitle")%></div>
                <span id="Show<%#Eval("ID") %>"><img src="../../Images/ico_b.gif" onclick="ShowDiv('<%#Eval("ID") %>')" style="float:right" /></span>
            </div>
            <div id="Div<%#Eval("ID") %>">
               <div style="width:100%;font-size:11pt;" align="left"><%#Eval("Subtitle")%></div>
        <!-- 大题显示  end -->
                <asp:HiddenField ID="hfid" runat="server" Value='<%#Eval("QuestionType") %>' />
                <asp:HiddenField ID="hfNum" runat="server" Value='<%#Eval("QuesNum") %>' />
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                    <!-- 小题显示 begin -->
                       <div style="float:left;margin-left:10px"><%#(Container.ItemIndex + 1).ToString()%>、<%#Eval("p_title")%></div>
                      <!--   内容显示  -->
                       <div style="margin-top:30px;"><%#GetContent(Eval("p_id", "{0}"))%></div> 
                    <!-- 小题显示 end -->
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    </div>
</div>
</div>
<asp:HiddenField ID="hfSid" runat="server" />
</form>
</body>
</html>
