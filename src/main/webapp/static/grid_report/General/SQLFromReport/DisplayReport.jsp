﻿<%@ page contentType="text/html; charset=utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>web报表(b/s报表)演示, 用报表查询显示器插件展现报表 - <%=request.getParameter("report")%></title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<script src="../../CreateControl.js" type="text/javascript"></script>
    <style type="text/css">
        html,body {
            margin:0;
            height:100%;
        }
    </style>
</head>
<body style="margin:0">
	<script type="text/javascript">
	    var Report = "<%=request.getParameter("report")%>";
	    if (Report == "null")
			Report = "";
	    else if (Report != "")
	        Report = "../../grf/" + Report;
	        
	    CreateDisplayViewerEx("100%", "100%", Report, "", false, "");
	    
		var QuerySQL = ReportViewer.Report.DetailGrid.Recordset.QuerySQL;
		ReportViewer.DataURL = encodeURI("../../data/xmlSQLParam.jsp?QuerySQL=" + QuerySQL);
		
		ReportViewer.Start();
	</script>
</body>
</html>
 