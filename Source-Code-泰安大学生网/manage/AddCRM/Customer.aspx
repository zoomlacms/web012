<%@ page language="C#" autoeventwireup="true" inherits="manage_AddCRM_Customer, App_Web_1ghag21i" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
<title>日常操作</title>
  
  <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
<script type="text/javascript"> 
function Switch(obj)
{
    obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
    var nextDiv;
    if (obj.nextSibling)
    {
        if(obj.nextSibling.nodeName=="DIV")
        {
            nextDiv = obj.nextSibling;
        }
        else
        {
            if(obj.nextSibling.nextSibling)
            {
                if(obj.nextSibling.nextSibling.nodeName=="DIV")
                {
                    nextDiv = obj.nextSibling.nextSibling;
                }
            }
        }
        if(nextDiv)
        {
            nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none"; 
        }
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
<body id="Guidebody" style="margin: 0px; margin-top:1px;">
<form id="formGuide" runat="server">
<div id="Div1">
<ul>
    <li id="Guide_top">
        <div id="Guide_toptext">
            日常操作
        </div>
    </li>
    <li id="Guide_main">
        <div id="Guide_box">
          <div class="guideexpand" onclick="Switch(this)">客户管理</div>
            <div class="guide">
                <ul>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CustomerList.aspx?usertype=0')>所有客户</a></li>                    
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CustomerList.aspx?usertype=2')>企业客户</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CustomerList.aspx?usertype=1')>个人客户</a></li>
                    
                </ul>
            </div>
        </div>
    </li>
</ul>
</div>

<div id="Div16">
    <ul>
        <li id="Li4">
            <div id="Div18">
              <div class="guidecollapse" onclick="Switch(this)">CRM配置</div>
                <div class="guide" style="display:none">
                    <ul>                        
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Complain_Type')>投诉记录表</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Service_Type')>服务记录表</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Area')>客户区域</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Calling')>所属行业</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Value')>价值评估</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Credit')>信用等级</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Importance')>重要程度</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Connection')>关系等级</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Group')>客户组别</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Source')>客户来源</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Phase')>阶段</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Co_Status')>行业地位</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Co_Size')>公司规模</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Co_Management')>经营状态</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Complain_Type')>服务类型</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Complain_Mode') >服务方式</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Complain_Urgency') >紧急程度</a></li>                    
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Linkman_Income') >月收入</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Linkman_Education') >学历</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Service_Type')>服务类型</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Service_Mode')>服务方式</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Service_TakeTime')>花费时间</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Service_Result')>服务结果</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Service_Score')>客户评价</a></li>
                    </ul>
                </div>
            </div>
        </li>
    </ul>
</div>

<div id="user" style="display:none">
    <ul>
        <li id="Li2">      
            <div id="Div3">
                <div class="guideexpand" onclick="Switch(this)" >
                    客户组别
                </div>
                <div class="guide" id="info" style="display:block">
                    <ul>                        
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CustomerManage.aspx?FieldName=Client_All')>所有客户</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CustomerManage.aspx?FieldName=Client_Latency')>潜在客户</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CustomerManage.aspx?FieldName=Client_Common')>普通客户</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CustomerManage.aspx?FieldName=Client_VIP')>VIP客户</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CustomerManage.aspx?FieldName=Client_Agent')>代理商</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CustomerManage.aspx?FieldName=Client_Together')>合作伙伴</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CustomerManage.aspx?FieldName=Client_Invalid')>失效客户</a></li>
                    </ul>
                </div>
            </div>   
           
            <div id="Div6">
                <div  onclick="Switch(this)" class="guideexpand">
                   客户阶段 
                </div>
                <div class="guide" id="Div7" style="display:none">
                    <ul>                        
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CustomerManage.aspx?FieldName=Phase_Trace')>售前跟踪</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CustomerManage.aspx?FieldName=Phase_Execute')>合同执行</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CustomerManage.aspx?FieldName=Phase_Serve')>售后服务</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CustomerManage.aspx?FieldName=Phase_Expire')>合同期满</a></li>
                    </ul>
                </div>
            </div>    
        </li>
    </ul>
</div> 
<div id="Div2" style="display:none">
<ul>
    <li id="Li1">
    
        <div id="Div4">
            <div  class="guideexpand" onclick="Switch(this)">
                客户信息表
            </div>
            <div class="guide" id="Div5">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Area')>客户区域</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Calling')>所属行业</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Value')>价值评估</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Credit')>信用等级</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Importance')>重要程度</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Connection')>关系等级</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Group')>客户组别</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Source')>客户来源</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Client_Phase')>阶段</a></li>

                </ul>
            </div>
        </div>
        <div id="Div8">
            <div class="guideexpand" onclick="Switch(this)">
                公司信息表
            </div>
            <div class="guide" id="Div9">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Co_Status')>行业地位</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Co_Size')>公司规模</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Co_Management')>经营状态</a></li>
                </ul>
            </div>
        </div>
        <div id="Div10">
            <div  class="guideexpand" onclick="Switch(this)">
                投诉记录表
            </div>
            <div class="guide" id="Div11">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Complain_Type')>服务类型</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Complain_Mode') >服务方式</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Complain_Urgency') >紧急程度</a></li>
                </ul>
            </div>
        </div>
        <div id="Div12">
            <div  class="guideexpand" onclick="Switch(this)">
                联系人信息表
            </div>
            <div class="guide" id="Div13">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Linkman_Income') >月收入</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Linkman_Education') >学历</a></li>
                </ul>
            </div>
        </div>
        <div id="Div14">
            <div  class="guideexpand" onclick="Switch(this)">
                服务记录表
                </div>
            <div class="guide" id="Div15">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Service_Type')>服务类型</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Service_Mode')>服务方式</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Service_TakeTime')>花费时间</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Service_Result')>服务结果</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href=javascript:gotourl('AddCRM/CRMDictionary.aspx?FieldName=Service_Score')>客户评价</a></li>
                </ul>
            </div>
        </div>
        
    </li>
 </ul>
</div>
</form>

<script type="text/javascript">
    function show() {
        document.getElementById("user").style.display = "block";
        document.getElementById("Div2").style.display = "none";
    }
    function show1() {
        document.getElementById("Div2").style.display = "block";
        document.getElementById("user").style.display = "none";
    }
</script>
</body>
</html>
