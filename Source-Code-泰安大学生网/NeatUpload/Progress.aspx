<%@ Page language="c#" AutoEventWireup="false" Inherits="Brettle.Web.NeatUpload.ProgressPage" %>
<%@ Register TagPrefix="Upload" Namespace="Brettle.Web.NeatUpload" Assembly="Brettle.Web.NeatUpload" %>
<%--
NeatUpload - an HttpModule and User Controls for uploading large files
Copyright (C) 2005  Dean Brettle

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
--%>
<html>
	<head>
		<title>Upload Progress</title>
		<link rel="stylesheet" type="text/css" title="default" href="default.css" />		
		<style type="text/css">
<!--
		body, form, table, tr, td {
			margin: 0px;
			border: 0px none;
			padding: 0px;
			font-size: 9pt
		}

		#progressDisplayCenterer {
			vertical-align: middle;
			width: 100%;
			height: 100%;
		}
		
		#progressDisplay {
			vertical-align: middle;
			width: 100%;
		}
		
		#barTd {
			width: 100%;
		}
		
		#statusDiv {
			border-width: 1px;
			border-style: solid;
			padding: 0px;
			position: relative;
			width: 100%;
			text-align: center;
			z-index: 1; 
		}
		
		#barDiv,#barDetailsDiv {
			border: 0px none ; 
			margin: 0px; 
			padding: 0px; 
			position: absolute; 
			top: 0pt; 
			left: 0pt; 
			z-index: -1; 
			height: 100%;
			width: 75%;
		}
            .style1
            {
                width: 24%;
                text-align: center; 
            }
-->
		</style>
	</head>
	<body>
		<form id="dummyForm" runat="server">
		<table id="progressDisplayCenterer">
		<tr>
		<td>
		<table id="progressDisplay" class="ProgressDisplay">
		<tr>
		<td class="style1">
			上传进度:
		</td>
		<td id="barTd" >
			<div id="statusDiv" runat="server" class="StatusMessage">&#160;
				<Upload:DetailsSpan id="normalInProgress" runat="server" WhenStatus="NormalInProgress" style="font-weight: normal; white-space: nowrap;">
					<%# FormatCount(BytesRead) %>/<%# FormatCount(BytesTotal) %> <%# CountUnits %>
					(<%# String.Format("{0:0%}", FractionComplete) %>) at <%# FormatRate(BytesPerSec) %>
					- <%# FormatTimeSpan(TimeRemaining) %> left
				</Upload:DetailsSpan>
				<Upload:DetailsSpan id="chunkedInProgress" runat="server" WhenStatus="ChunkedInProgress" style="font-weight: normal; white-space: nowrap;">
					<%# FormatCount(BytesRead) %> <%# CountUnits %>
					at <%# FormatRate(BytesPerSec) %>
					- <%# FormatTimeSpan(TimeElapsed) %> elapsed
				</Upload:DetailsSpan>
				<Upload:DetailsSpan id="completed" runat="server" WhenStatus="Completed">
					完成： <%# FormatCount(BytesRead) %> <%# CountUnits %>
					速度： <%# FormatRate(BytesPerSec) %>
					耗时： <%# FormatTimeSpan(TimeElapsed) %>
				</Upload:DetailsSpan>
				<Upload:DetailsSpan id="cancelled" runat="server" WhenStatus="Cancelled">
					已取消!
				</Upload:DetailsSpan>
				<Upload:DetailsSpan id="rejected" runat="server" WhenStatus="Rejected">
					拒绝: <%# Rejection != null ? Rejection.Message : "" %>
				</Upload:DetailsSpan>
				<Upload:DetailsSpan id="error" runat="server" WhenStatus="Failed">
					错误: <%# Failure != null ? Failure.Message : "" %>
				</Upload:DetailsSpan>
				<Upload:DetailsDiv id="barDetailsDiv" runat="server" UseHtml4="true"
					 Width='<%# Unit.Percentage(Math.Floor(100*FractionComplete)) %>' class="ProgressBar"></Upload:DetailsDiv>	
			</div>
		</td>
		<td>
			<asp:HyperLink id="cancel" runat="server" Visible='<%# CancelVisible %>' NavigateUrl='<%# CancelUrl %>' title="取消上传" class="ImageButton" ><img id="cancelImage" runat="server" src="cancel.gif" alt="取消上传" /></asp:HyperLink>
			<asp:HyperLink id="refresh" runat="server" Visible='<%# StartRefreshVisible %>' NavigateUrl='<%# StartRefreshUrl %>' title="刷新" class="ImageButton" ><img id="refreshImage" runat="server" src="refresh.gif" alt="刷新" /></asp:HyperLink>
			<asp:HyperLink id="stopRefresh" runat="server" Visible='<%# StopRefreshVisible %>' NavigateUrl='<%# StopRefreshUrl %>' title="停止" class="ImageButton"><img id="stopRefreshImage" runat="server" src="stop_refresh.gif" alt="停止" /></asp:HyperLink>
		</td>
		</tr>
		</table>
		</td>
		</tr>
		</table>
		</form>
	</body>
</html>
