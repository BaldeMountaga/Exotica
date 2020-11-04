<%-- 
    Document   : Flights
    Created on : Jun 28, 2012, 4:53:59 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="ct" uri="/WEB-INF/tlds/UserNameTLD.tld" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Flights Page</title>
</head>
<body>
    <jsp:include page="Template.jsp"></jsp:include>
<td valign="top" rowspan="200"colspan="80">
        <table>
            <tr>
<tr>
<td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>Domestic Flights</a></td>
<td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>International Flights</a></td>
<td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>Hotels</a></td>
<td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>Car Rentals</a></td>
<td><font color='darkblue' size='+1'><a href='<c:url value="TourPackage.jsp"/>'>Tour Packages</a></td>
<td width="350">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<ct:UserNameTagHandler/>

</tr>
</table>
<br>
<font align='center' color='darkblue' size='+1'>Please select the airline by which you want to go to your destination:
<br>
<br>
<form action='<c:url value="SessionServlet"/>' name='MyForm' Method='POST'>
<table cellspacing='10' align='center'border='2' bordercolor='black'>
<tr>
<td bordercolor='white'><font color='darkblue'> Select Airline: </font></td>
<td bordercolor='white'>
<select name='Airline'>
<option value='British Airways'>British Airways</option>
<option value='Cathay Pacific'>Cathay Pacific</option>
<option value='Qantas'>Qantas</option>
<option value='US Airways'>US Airways</option>
</select>
<input type='hidden' value='FlightsServlet' name='PageName'/>
</td>
</tr>
<tr>
<td bordercolor='white'>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='submit' Value='Next'></input></a>
</td>
</tr>
</table>
</form>
</body>
</html>
