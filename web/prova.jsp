<%@page import="com.quiz.Aluno"%>
<%@page import="com.quiz.Prova"%>
<%@page import="com.quiz.Pergunta"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Quiz</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/main.css"/>
        <link rel="stylesheet" href="css/perguntas.css"/>
    </head>
    <body>
        <% 
            if(Aluno.getNome() == null || Aluno.getNome().equals("")){
                Aluno.setNome(request.getParameter("nm_aluno"));
            }
            ArrayList<Pergunta> teste = Prova.gerarTeste(); 
            int questaoAtual = 0;
        %>
        
        <%@include file="./header.jsp"%> <!-- HEADER -->
        
        <div class="container">
            
            <div class="row quiz-container">
                <div class="col-md-8">
                    <span class="titulo-quiz">
                        <h2>Quiz: <%= Aluno.getNome() %></h2>
                        <a type="text" class="text-muted" id="link_abandonar" data-toggle="modal" data-target="#pop-abandonar">
                            Abandonar
                        </a>
                        <%@include file="popup-abandonar.html" %>
                    </span>
                    
                    <form method="POST" action="home.jsp">
                        
                        <% for (Pergunta p: teste) { %>
                        <div class="pergunta" id="q<%= teste.indexOf(p)%>" style="display: none;">
                            <br/>
                            <div class="questao">  
                                <h3><%= questaoAtual+1 + ". " + p.getPergunta()%></h3>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                  <input class="form-check-input" type="radio"
                                         name="<%= teste.indexOf(p)%>" 
                                         value="<%= p.getAlternativa()[0]%>">
                                  <%= p.getAlternativa()[0]%>
                                </label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                  <input class="form-check-input" type="radio"
                                         name="<%= teste.indexOf(p)%>" 
                                         value="<%= p.getAlternativa()[1]%>">
                                  <%= p.getAlternativa()[1]%>
                                </label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                  <input class="form-check-input" type="radio"
                                         name="<%= teste.indexOf(p)%>" 
                                         value="<%= p.getAlternativa()[2]%>">
                                  <%= p.getAlternativa()[2]%>
                                </label>
                            </div>
                        </div>
                        <% questaoAtual++; } %>

                        <!-- BOTÃO DE ENVIAR PROVA / SO APARECE NA ULTIMA QUESTAO -->
                        <button id="bt_enviar" class="btn btn-outline-success" type="submit" name="prova" value="1" style="display:none;">
                            Enviar
                        </button>
                    </form>
                        
                    <!-- BOTÕES DE NAVEGAÇÃO -->
                    <div class="botoes-navagacao">
                        <button id="bt_voltar" class="bt_voltar"><</button>
                        <button id="bt_avancar" class="bt_avancar">></button>
                    </div>
                        
                </div>
            </div>
        </div>
        <script src="./js/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
        <script src="./js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
