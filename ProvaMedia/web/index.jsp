<%@page import="Escola.Alunos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Uninove</title>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">


    </head>
    <body>
        <h1 style="color: #fff; text-align: center; background-color: #111;">Uninove faculdade</h1>
        <h2 style="color: #ff; text-align: center; ">Todos alunos</h2>
        <h4 style="color:#fff; text-align: center;">Uninove </h4>
        <a style="background-color:rgba(255, 99, 71, 0.5);" href="segundaparte.jsp" target="_self" rel="external">Pagina 2</a>

       
	<%

            List<Alunos> alunos = new ArrayList<Alunos>();

            alunos.add(new Alunos("Silvio", 11122, 10.0, 10.0, 10.0, 10.0));
                 alunos.add(new Alunos("Claudio Santos", 323223, 8.0, 8.0, 8.0, 8.0));

            out.println("<table id='mod'>");


              out.println("<tr>"
                    + "<th>Nome do Aluno</th>"
                     + "<th>RA</th>"
                      + "<th>Nota 1</th>"
                       + "<th>Nota 2</th>"
                    + "<th>Nota 3</th>"
                    + "<th>Nota 4</th>"
                    + "<th>Média</th>"
                    + "</tr>");
            for (Alunos aluno : alunos) {
                aluno.setMedia(aluno.getNota1(), aluno.getNota2(), aluno.getNota3(), aluno.getNota4());
                out.println("<tr>"
                        + "<td>" + aluno.getNome() + "</td>"
                        + "<td>" + aluno.getRA() + "</td>"
                           + "<td>" + aluno.getNota1() + "</td>"
                        + "<td>" + aluno.getNota2() + "</td>"
                        + "<td>" + aluno.getNota3() + "</td>"
                        + "<td>" + aluno.getNota4() + "</td>"
                        + "<td>" + aluno.getMedia() + "</td"
                        + "</tr>");
            }
            out.println("</table>");

        %>
        <!--       <table id="mod">
                   <tr>
                       <th>Nome do Aluno</th>
                       <th>RA</th>
                       <th>Nota 1</th>
                       <th>Nota 2</th>
                       <th>Nota 3</th>
                       <th>Nota 4</th>
                   </tr>
                   <tr>
                        <td>Claudio Santos</td>
                           <td>323223</td>
                          <td>8.0</td>
                       <td>8.0</td>
                       <td>8.0</td>
                        <td>8.0</td>
                   </tr>
                   <tr>
                       <td>Silvio</td>
                       <td>11122</td>
                       <td>10.0</td>
                         <td>10.0</td>
                       <td>10.0</td>
                       <td>10.0</td>
                   </tr>
               </table> -->


    <style>
        body {
            background-color:  #400761;
        }

        #mod {
            border-collapse: #4F4F4F;
            width: 100%;
        }

        #mod td, #mod th {

            border: 1px solid #ccc; v
            padding: 4px;
        }


        #mod tr:nth-child(even){background-color: #7d7c7c;}
     
             #mod tr:hover {background-color: #ddd;}

        #mod th {

            padding-top: 6px;
            padding-bottom: 7px;
            text-align: left;
            background-color: #F0FFFF;
            color: #111;
        }
</style>
    </body>
</html>

