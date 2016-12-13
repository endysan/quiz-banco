<%@page import="com.quiz.Aluno"%>
<%@page import="com.quiz.Pergunta"%>
<%@page import="com.quiz.Prova"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <% if(request.getParameter("sair") != null) {
        Aluno.limparTudo();
        Prova.limparTudo();
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
        Prova.validaTeste(resposta);
        Aluno.setMedia(Prova.calculaMedia());
        Aluno.setNotaAnterior(Prova.getResAnterior());
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
        <link rel="stylesheet" href="css/equipe.css"/>
        
        <script src="js/home.js"></script>
        <script type="text/javascript" src="js/modernizr.custom.79639.js"></script>
        
    </head>
<body>
        
    <%@include file="./header.jsp"%> <!-- HEADER -->

    <div class="container">
        <div class="row">
        <% if(request.getParameter("login") == null) { %>
        <div class="offset-md-2 col-md-8 mensagem">
         <h1>Bem-vindo</h1>
                <p>Faça o login ou crie sua conta para poder resolver testes e 
                    desafiar os seus amigos em busca de quem atinge o maior 
                    número de respostas corretas!   
        </div>
        
            <div class="offset-md-2 col-md-4 login">
                <h3>Login</h3>
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
                      <button id="" type="button" class="btn btn-primary btn-block">Entrar</button>
                </form>
                
            </div>
                  <div class="offset-md-2 col-md-4 cadastrar">
                      <h3>Cadastrar</h3>
                </p>
                <form method="POST" action="prova.jsp" id="form" autocomplete="off">
                      <div class="input-group">
                          <span class="input-group-addon"><i><span class="glyphicon glyphicon-font"></span></i></span>
                       <input id="nome" type="text" class="form-control" name="nome" placeholder="Digite seu nome">
                      </div>
                      <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="login" type="text" class="form-control" name="login" placeholder="Digite seu login">
                      </div>
                      <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="password" type="password" class="form-control" name="password" placeholder="Digite uma senha">
                      </div>
                      <div class="form-check">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input">ADM
                        </label>
                      </div>
                      <button id="" type="button" class="btn btn-default btn-block">Criar Conta</button>
                </form>
                
            </div>
            
        </div>
        <% } %>
        <div class="row">
        <div class="offset-md-2 col-md-8 info-projeto equipe">
            <p>
                Aqui fazemos provas, login e cadastros, ranking dos melhores
                e mostramos seu desempenho de uma forma simples.
            </p>
            <h2>Equipe</h2>
            <ul class="ch-grid">
                <li>
                    <div class="ch-item" style="background-image: url(img/adilson.png);">
                        <div class="ch-info">
                            <h3>Adilson</h3>
                            <p>Desenvolvedor</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="ch-item" style="background-image: url(img/wenndy.jpg);">
                        <div class="ch-info">
                            <h3>Wenndy</h3>
                            <p>Desenvolvedor</p>
                        </div>
                    </div>
                </li>
            </ul>
        </div>

        </div>
    </div>

    <footer>
        <div class="container-fluid"></div>
    </footer>

    <script src="./js/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="./js/bootstrap.min.js"></script>
</body>
</html>
