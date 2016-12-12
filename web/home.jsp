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
                <p>Aqui você poderá testar seus conhecimentos.
                    Uma aplicação que irá te dar maior facilidade
                    para verificar seu progresso.
                </p>
                <form method="POST" action="prova.jsp" id="form" autocomplete="off">
                    <div class="form-inline">
                        <div id="div-danger" class="form-group">
                            <input id="nm_aluno" class="form-control form-control-lg" type="text" name="nm_aluno" placeholder="Digite seu nome"/>
                        </div>
                        <button id="bt_submit" type="submit" class="btn btn-outline-danger btn-lg">Iniciar Teste</button>
                    </div>
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
