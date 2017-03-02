<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String distanceInMilesText = request.getParameter("miles");
			if(distanceInMilesText != ""){
				try{
					float distanceInMiles = Float.parseFloat(distanceInMilesText);
					out.println(distanceInMiles*1610 + " metros");
				} catch(NumberFormatException nfe){
					out.println("Valor nao pode ser convertido.");
				}
				
			}
%><br/>
<% String distanceInFeetText = request.getParameter("feet");
			if(distanceInFeetText != ""){
				try{
					float distanceInFeet = Float.parseFloat(distanceInFeetText);
					out.println(distanceInFeet/3.28 + " metros");
				} catch(NumberFormatException nfe){
					out.println("Valor nao pode ser convertido.");
				}
				
			}
		%>
</body>
</html>