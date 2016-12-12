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
        <link rel="stylesheet" href="./css/bootstrap.min.css">
    </head>
<body>
    <%@include file="./header.jsp"%> <!-- HEADER -->

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
                <% for (int i = 1; i <= 1; i++) { %>
                <tr>
                    <td>1</td>
                    <td>adilson</td>
                    <td>10</td>
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
