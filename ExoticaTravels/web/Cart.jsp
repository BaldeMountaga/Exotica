<%-- 
    Document   : Cart
    Created on : Jun 28, 2012, 5:15:00 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="ct" uri="/WEB-INF/tlds/UserNameTLD.tld" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Cart Page</title>
</head>
<body>
    <jsp:include page="Template.jsp"></jsp:include>
    <%//javacode%>
<td valign="top" rowspan="200"colspan="80">
        <table>
            <tr>                
<c:set var="Destination" value="${sessionScope.selDestination}"/>
<c:set var="Hotel" value="${sessionScope.selHotel}"/>
<c:set var="NumberOfDays" value="${numDays}"/>
<c:set var="Airline" value="${sessionScope.selAirline}"/>

<c:choose>
    <c:when test="${Hotel=='Sea View'}">
        <c:set var="HotelPrice" value="150"/>
    </c:when>
    <c:when test="${Hotel=='Sea Breeze'}">
        <c:set var="HotelPrice" value="100"/>
    </c:when>

</c:choose>

<c:choose>
    <c:when test="${Airline=='British Airways'}">
        <c:set var="TicketPrice" value="100"/>
    </c:when>
    <c:when test="${Airline=='Cathay Pacific'}">
        <c:set var="TicketPrice" value="120"/>
    </c:when>
    <c:when test="${Airline=='US Airways'}">
        <c:set var="TicketPrice" value="130"/>
    </c:when>
    <c:when test="${Airline=='Qantas'}">
        <c:set var="TicketPrice" value="150"/>
    </c:when>
   
</c:choose>
<c:set var="TotalHotelPrice" value="${HotelPrice*NumberOfDays}"/>
<c:set var="TotalPackagePrice" value="${TotalHotelPrice+TicketPrice}"/>


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
<font align='center' color='darkblue' size='+1'>You have added the following contents to your cart:
</font>
<br/>
<br/>
<br/>

    <table cellspacing='10' align='center'border='2' bordercolor='black'>
<tr><td bordercolor='white'>Destination:<td COLSPAN='2'bordercolor='white'><c:out value="${Destination}"/>
<tr><td bordercolor='white'>Hotel:<td COLSPAN='2' bordercolor='white'><c:out value="${Hotel}"/>
<tr><td bordercolor='white'>Total number of days for stay:<td bordercolor='white'><c:out value="${NumberOfDays}"/>
<tr><td bordercolor='white'>Airline:<td bordercolor='white'><c:out value="${Airline}"/>
<tr><td bordercolor='white'><b>Total Package Cost</b>:<td bordercolor='white'><b><fmt:formatNumber type="Currency" value="${TotalPackagePrice}"/></b>
</table>



</body>
</html>
