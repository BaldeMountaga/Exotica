<%-- 
    Document   : GetLogDetails
    Created on : Jun 28, 2012, 5:00:48 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>GetLogDetailsPage</title>
</head>
<body>
    <jsp:include page="Template.jsp"></jsp:include>
<td valign="top" rowspan="200"colspan="80">
        <table>
            <tr>
                <td><jsp:include page="/GetLogDetails">
    <jsp:param name="title" value="GetLogDetails"/>
</jsp:include>
        </table>
 </body>
</html>
