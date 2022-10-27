<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="com.nttdata.tomcat.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NTTData - Taller JSP / ApacheTomcat</title>
</head>
	<body>
	<% 
		/** List of the Dual students */
		List<String> participantes = Arrays.asList("Juan Alejandro Tellez Rubio (Organizador)", "Joaquin Matias Aguirre Oceja", "Fernando Perez Nieto", "Daniel Alberto Cosa Cosias", "Ernesto Caballero Fernandez", "Ignacio Charlo Millan", "Pablo Alvarez Alvarez", "Santiago Montaño Rosario", "Eva Cardenas Bermudez",
				"Jonatan Carrera Viera", "Pablo Dominguez Romero", "Rafael Felipe Herrera Chavez", "Javier Coronel Ortiz", "Carlos Gonzalez Ruiz", "Fernando Marquez Rodriguez", "Gabriel Rodriguez Felix", "Rafael Jose Ossorio Lopez", "Victor Carrasco Artacho", "Adrian Camara Muñoz", "Angel Diaz Aviles",
				"Franco Emanuel Mancinelli", "Samuel Calderon Gonzalez", "Alejandro De la Rosa Cosano", "Alvaro Limon Flor", "Javier Lopez Teran", "Jose Muñoz Muñoz", "Rafael Barranco Sevilla", "Manuela Mena Gonzalez", "Alba Parron Perez", "Christian Lobon Sevilla", "Juan Manuel Gil Medina", "Rafael Jaime Blanco Aranda",
				"Santiago Lopez Arredondo");
		
	%>
		<h3>Bienvenid@s a NTT Data - Primer JSP |  Informe de asistencia</h3>
    	
		<p>Pasando lista...</p>
		<ul>
		<%
			/** Foreach to show all the list elements */
			for(String participante : participantes) {
				if(participante.toLowerCase().contains("organizador")) {
					out.println("<li><b>" + participante + "</b></li>");
				} else {
					out.println("<li>" + participante + " - " + NTTDataJSP.attendance() + "</li>");
				}	
			}
		%>
		</ul>
		<p>Terminado.</p>
		
		<% out.println("<h3>" + NTTDataJSP.helloNTTData("Proyecto 2021 - 2023") + "</h3>"); %>
	</body>
</html>