<%-- 
    Document   : index
    Created on : 2 abr. de 2024, 18:36:48
    Author     : Ronaldo Arias Mamani
--%>

<%@page import="com.emergentes.modelo.Calificacion"%>
<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("listaCalificacion") == null) {
        ArrayList<Calificacion> listaAux = new ArrayList<Calificacion>();
        session.setAttribute("listaCalificacion", listaAux);
    }
    ArrayList<Calificacion> lista = (ArrayList<Calificacion>) session.getAttribute("listaCalificacion");
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
        <h1>Registro de calificaciones</h1>
        <a href="MainServlet?op=nuevo" class="nuevo">Nuevo</a>
        <table border="1" class="table-style">
                <tr>
                    <th>Id</th>
                    <th>Nombres</th>
                    <th>P1(30)</th>
                    <th>P2(30)</th>
                    <th>EF(40)</th>
                    <th>Nota</th>
                    <th></th>
                    <th></th>
                </tr>
                <%
                    if (lista != null) {
                        for(Calificacion item : lista){
                %>
                <tr>
                    <td><%= item.getId() %></td>
                    <td><%= item.getNombre()%></td>
                    <td><%= item.getP1()%></td>
                    <td><%= item.getP2()%></td>
                    <td><%= item.getEf()%></td>
                    <%
                        String numeroRedondeado = String.format("%.2f",item.getP1()+item.getP2()+item.getEf());
                    %>
                    <td><%= numeroRedondeado%></td>
                    <td>
                        <a href="MainServlet?op=editar&id=<%= item.getId() %>" class="editar">Editar</a>
                    </td>
                    <td>
                        <a class="eliminar" href="MainServlet?op=eliminar&id=<%= item.getId() %>" onclick="return(confirm('Esta seguro de eliminar ??'))">Eliminar</a>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
        </table>

    </body>
</html>
