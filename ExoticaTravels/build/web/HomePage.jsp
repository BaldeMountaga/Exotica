<%-- 
    Author: Balde Mountaga
    Document   : HomePage
    Created on : Jan 10, 2020, 10:30:32 PM
    Author     : Administrator
--%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home Page</title>
</head>
    <body>
        <jsp:include page="Template.jsp"></jsp:include>
        <script type="text/javascript"><!--

refreshdiv();

// --></script>
<script type="text/javascript">
var seconds = 5;
var img="imgchng";
var url = "ImageChange";
function refreshdiv(){
var xmlHttp;

try{

xmlHttp=new XMLHttpRequest(); // Firefox, Opera 8.0+, Safari

}

catch (e){

try{

xmlHttp=new ActiveXObject("Msxml2.XMLHTTP"); // Internet Explorer

}

catch (e){

try{

xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");

}

catch (e){

alert("Your browser does not support AJAX.");

return false;

}

}

}

// Timestamp for preventing IE caching the GET request

fetch_unix_timestamp = function()

{

return parseInt(new Date().getTime().toString().substring(0, 10))

}

var timestamp = fetch_unix_timestamp();

var nocacheurl = url+"?t="+timestamp;

xmlHttp.onreadystatechange=function(){

if(xmlHttp.readyState==4){

document.getElementById(img).src=xmlHttp.responseText;

setTimeout('refreshdiv()',seconds*1000);

}

}

xmlHttp.open("GET",nocacheurl,true);

xmlHttp.send(null);

}
// Start the refreshing process
var seconds;

window.onload = function startrefresh(){

setTimeout('refreshdiv()',seconds*1000);

}
</script>

<td valign="top"> <br/><br/><B><I><font style='font-family: 'Brush Script MT Italics', Gadget, sans-serif;' size='+1' color='darkblue'>Exotica Travels is a travel management company established by Jordan Desilva in Colombo, Sri Lanka. Today under the chairmanship of Jim Henry, the company has spread across the country. It provides online air tickets booking. In addition, it provides hotel suite booking in various exotic locations all over the world. Moreover, it provides rental car bookings. To avail the travel package services kindly log on to the website.</B></I>
<br/>
<br/>
 <html:form method="post" action="/SubmitAction" >

<table cellspacing='10' align='center'>
<tr>
<td><font color='darkblue' size='+2'>LOGIN AS:
</tr>
</td>
</table>
<table cellspacing='10' align='center'border='2' bordercolor='black'>
    <tr><td bordercolor='white'><html:radio property='r1' value="existinguser">Existing User</html:radio>
    <tr><td bordercolor='white'><html:radio property='r1' value="newuser">New User</html:radio>
<tr><td bordercolor='white'><input type="submit" value="Submit"/>
</table>
</html:form>
</tr>
</table>
<body>
</html>

