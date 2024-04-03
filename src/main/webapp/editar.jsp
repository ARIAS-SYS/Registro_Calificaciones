<%-- 
    Document   : editar
    Created on : 2 abr. de 2024, 19:08:33
    Author     : Ronaldo Arias Mamani
--%>

<%@page import="com.emergentes.modelo.Calificacion"%>
<%
    Calificacion cal = (Calificacion) request.getAttribute("miObjetoCalificacion");
    String titulo = (String) request.getAttribute("titulo");
    String boton = (String) request.getAttribute("boton");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilos.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="dato">
            <p><b>PRIMER PARCIAL TEM-742</b></p>
            <p><b>Nombre:</b> Ronaldo Arias Mamani</p>
            <p><b>Carnet:</b> 9208121 LP</p>
        </div>
        <h1><%= titulo %></h1>
        <div class="form-container" >
            <form action="MainServlet" method="post">
                <input type="hidden" name="txtId" value="<%= cal.getId() %>"  />
                <label>Nombre del estudiante: <input type="text" name="txtNombre" value="<%= cal.getNombre() %>" /></label><br><br>
                <label>Primer parcial (Sobre 30 pts.): <input class="nota" type="text" name="txtP1" value="<%= cal.getP1()%>" /></label><br><br>
                <label>Segundo parcial (Sobre 30 pts.): <input class="nota" type="text" name="txtP2" value="<%= cal.getP2()%>" /></label><br><br>
                <label>Examen Final (Sobre 40 pts.): <input class="nota" type="text" name="txtEf" value="<%= cal.getEf()%>" /></label><br><br>
                <input type="submit" class="registro" name="" value="<%= boton %>" />
            </form>
        </div>
        
    </body>
</html>
