<%@page import="com.quiz.Dados"%>
<%@page import="com.quiz.Aluno"%>
<%@page import="com.quiz.Prova"%>
<%@page import="com.quiz.Pergunta"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz - Painel administrador</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/adm.css"/>
        <script src="js/adm.js"></script>
    </head>
<body>
    <%
        Aluno alu = new Aluno();
        
        if(request.getParameter("in") != null) {
            alu.setNome(request.getParameter("txt_nome"));
            alu.setLogin(request.getParameter("txt_login"));
            alu.setSenha(request.getParameter("txt_senha"));
            alu.setMedia(Double.parseDouble(request.getParameter("txt_media")));
            
            Dados.getAluno().add(alu);
            response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("ex") != null) {
            //EXCLUIR
            //id=2 & ex=1
            Dados.getAluno().remove(Integer.parseInt(request.getParameter("id")));
            response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("ed") != null) {
            //EDITAR
            //id=2 & ed=1
            int idAluno = Integer.parseInt(request.getParameter("id"));
            Aluno novoAluno = new Aluno();
            novoAluno.setNome(request.getParameter("txt_novo_nome"));
            novoAluno.setLogin(request.getParameter("txt_novo_login"));
            novoAluno.setSenha(request.getParameter("txt_nova_senha"));
            novoAluno.setMedia(Double.parseDouble(request.getParameter("txt_nova_media")));
            
            Dados.getAluno().set(idAluno, novoAluno);
            response.sendRedirect(request.getRequestURI());
        }
    %>
    <%@include file="header.jsp" %>
    
    <div class="container-fluid">
        <div class="row">

            <div class="col-md-9 full-content">
                <div class="row">
                    <form method="POST" id="form-incluir">
                        <table class="table">
                            <tr>
                                <td><div class="col-md-3"></div></td>
                                <td><input class="form-control" type="text" name="txt_nome" placeholder="Nome"/></td>
                                <td><input class="form-control" type="text" name="txt_login" placeholder="Login"/></td>
                                <td><input class="form-control" type="password" name="txt_senha" placeholder="Senha"/></td>
                                <td><input class="form-control" type="text" name="txt_media" placeholder="Média"/></td>
                                <td><button class="btn btn-default" type="submit" name="in" value="1">Cadastrar</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
                
                <table class="table table-dashed">
                    <tr>
                        <th>#ID</th> <!-- é o ID do ArrayList --> 
                        <th>NOME</th>
                        <th>LOGIN</th>
                        <th>MÉDIA</th>
                        <th colspan="2">Ações</th>
                    </tr>
                    
                    <% for (Aluno al: Dados.getAluno()){ %>
                    <tr>
                        <% int id = Dados.getAluno().indexOf(al); %>
                        <td><%= id %></td>
                        <td><%= al.getNome() %></td>
                        <td><%= al.getLogin()%></td>
                        <td><%= al.getMedia()%></td>
                        <td colspan="2">
                            <form id="form-editar">
                                <input type="hidden" name="id" value="<%= id %>"/>
                                <%@include file="modal_adm.jsp" %>
                            </form>
                            <form id="form-excluir">
                                <input type="hidden" name="id" value="<%= id %>"/>
                                <button type="submit" class="btn btn-danger" name="ex" value="1">Excluir</button>
                            </form>
                        </td>
                    </tr>
                    <% } %>
                </table>
            </div> <!-- DIV COL 9 -->
        </div> <!-- DIV ROW -->
    </div> <!-- CONTAINER FLUID -->
    <script src="./js/jquery.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
</body>
</html>
