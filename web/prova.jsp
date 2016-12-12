<%-- 
    Document   : teste
    Created on : 12/11/2016, 14:57:13
    Author     : Beto
--%>

<%@page import="com.quiz.Aluno"%>
<%@page import="com.quiz.Perguntas"%>
<%@page import="com.quiz.Questions"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Prova</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/main.css"/>
        <link rel="stylesheet" href="css/perguntas.css"/>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <% 
            if(Aluno.getNome() == null || Aluno.getNome().equals("")){
                Aluno.setNome(request.getParameter("nm_aluno"));
            }
            ArrayList<Questions> teste = Perguntas.getTeste(); 
            int questaoAtual = 0;
        %>

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
                        
                        <% for (Questions q: teste) { %>
                        <div class="pergunta" id="q<%= teste.indexOf(q)%>" style="display: none;">
                            <br/>
                            <div class="questao">  
                                <h3><%= questaoAtual+1 + ". " + q.getPergunta()%></h3>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                  <input class="form-check-input" type="radio"
                                         name="<%= teste.indexOf(q)%>" 
                                         value="<%= q.getAlternativa()[0]%>">
                                  <%= q.getAlternativa()[0]%>
                                </label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                  <input class="form-check-input" type="radio"
                                         name="<%= teste.indexOf(q)%>" 
                                         value="<%= q.getAlternativa()[1]%>">
                                  <%= q.getAlternativa()[1]%>
                                </label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                  <input class="form-check-input" type="radio"
                                         name="<%= teste.indexOf(q)%>" 
                                         value="<%= q.getAlternativa()[2]%>">
                                  <%= q.getAlternativa()[2]%>
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
        <script src="js/main.js"></script>
    </body>
</html>
