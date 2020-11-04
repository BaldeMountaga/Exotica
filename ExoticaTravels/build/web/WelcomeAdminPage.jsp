<%-- 
    Document   : WelcomeAdminPage
    Created on : Jun 28, 2012, 4:18:50 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="ct" uri="/WEB-INF/tlds/UserNameTLD.tld" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Admin Page</title>
</head>
<body>
    <jsp:include page="Template.jsp"></jsp:include>
    <td valign="top" rowspan="200"colspan="80">
        <table>
<tr><td><font color='darkblue'size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>Domestic Flights</a></td>
<td><font color='darkblue'size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>International Flights</a></td>
<td><font color='darkblue'size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>Hotels</a></td>
<td><font color='darkblue'size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>Car Rentals</a></td>
<td><font color='darkblue'size='+1'><a href='<c:url value="TourPackage.jsp"/>'>Tour Packages</a></td>
<td><font color='darkblue'size='+1'><a href='<c:url value="GetLogDetails.jsp"/>'>Get Log Details</a></td>
<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<ct:UserNameTagHandler/>
</tr>
<tr>
    <td><br></br>
<tr> 
    <td rowspan="200"colspan="80">
<font color='darkblue' size='+2'>Welcome to the Exotica Travels Website!!
</table>
</body>
</html>

