<%@page import="com.quiz.Dados"%>
<%@page import="com.quiz.Aluno"%>
<%@page import="com.quiz.Prova"%>
<%@page import="com.quiz.Pergunta"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <!-- Required meta tags always come first -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Quiz - Ranking</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
    </head>
<body>
    <%@include file="./header.jsp"%> <!-- HEADER -->
    <% ArrayList<Aluno> alunoRank = Dados.getAluno(); %>
    <div class="container">    
    
        <div class="col-md-8">
        
        <table class="table">
            <thead>
                <tr>
                    <th>Posição</th>
                    <th>Nome</th>
                    <th>Nota</th>
                </tr>
            </thead>
            
            <tbody>
                
                <% for (Aluno al: alunoRank) { %>
                <% int id = Dados.getAluno().indexOf(al); %>
                <tr>
                    <td><%= id %></td>
                    <td><%= al.getNome() %></td>
                    <td><%= al.getMedia() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>

        </div>
    </div> <!-- FIM CONTAINER -->
    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="./js/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="./js/bootstrap.min.js"></script>
</body>
</html>
