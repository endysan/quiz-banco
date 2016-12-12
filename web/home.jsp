<%@page import="com.quiz.Aluno"%>
<%@page import="com.quiz.Perguntas"%>
<%@page import="com.quiz.Questions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <% if(request.getParameter("sair") != null) {
        Aluno.limparTudo();
        Perguntas.limparTudo();
        response.sendRedirect(request.getRequestURI());
    }
    if (request.getParameter("prova") != null){ //Pegando os dados da pagina exibirPerguntas
        String resposta[] = {
            request.getParameter("0"),
            request.getParameter("1"),
            request.getParameter("2"),
            request.getParameter("3"),
            request.getParameter("4"),
            request.getParameter("5"),
            request.getParameter("6"),
            request.getParameter("7"),
            request.getParameter("8"),
            request.getParameter("9")
                
        };
        Perguntas.validaTeste(resposta);
        Aluno.setMedia(Perguntas.calculaMedia());
        Aluno.setNotaAnterior(Perguntas.getResAnterior());
    }  
%>
<html>
    <head>
        <title>Quiz - Página inicial</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/main.css"/>
        <link rel="stylesheet" href="css/home.css"/>
        <script src="js/jquery.min.js"></script>
        <script src="js/home.js"></script>
    </head>
<body>
        
    <nav>
        <div class="container-fluid"></div>
    </nav>

    <div class="container">
        <% if(request.getParameter("prova") == null) { %>
        <div class="row">
            <div class="offset-md-2 col-md-8 quiz-desc">
                <h1>Bem-vindo</h1>
                <p>Faça o login ou crie sua conta para poder resolver testes e desafiar os seus amigos em busca de quem atinge o maior número de respostas corretas!
                </p>
                <form method="POST" action="prova.jsp" id="form" autocomplete="off">
                   <form>
                    <div class="input-group">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                      <input id="id" type="text" class="form-control" name="id" placeholder="Digite seu ID">
                    </div>
                    <div class="input-group">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                      <input id="password" type="password" class="form-control" name="password" placeholder="Digite sua Senha">
                    </div>
                       <button type="button" class="btn btn-primary btn-lg btn-block">Login</button>
                       <button type="button" class="btn btn-default btn-lg btn-block">Criar Conta</button>
                    
                </form>
                
            </div>
        </div>
        <% } %>
        
        <% if(request.getParameter("prova") != null) { %>
        <div class="row">
            <div class="offset-md-2 col-md-8 estatistica">
                <h2>Porcentagem de acertos de <%= Aluno.getNome() %> </h2><hr>
                <div class="esquerda">
                <h3>Última prova: <%= Aluno.getNotaAnterior()+"%"%></h3>
                <% if(Perguntas.getContador()==1) { %>
                <h3>Prova feita <%= Perguntas.getContador() %> vez</h3>
                <% } %>
                <% if(Perguntas.getContador()>1) { %>
                <h3>Prova feita <%= Perguntas.getContador() %> vezes</h3>
                <% } %>
                </div>
                <br/>
                <div class="direita">
                <h3>Média: <%= Aluno.getMedia()+"%" %></h3>
                </div>
                
                <div class="botoes">
                    <form method="POST">
                        <button type="submit" class="btn btn-outline-danger" name="sair" value="1">Sair</button>    
                        <a class="btn btn-outline-success" href="prova.jsp">Fazer novamente</a>
                    </form>
                </div>
            </div>
        </div>
        <% } %>
    </div>

    <footer>
        <div class="container-fluid"></div>
    </footer>

    <script src="js/bootstrap.min.js"></script>
</body>
</html>
