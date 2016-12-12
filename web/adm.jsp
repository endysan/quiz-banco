<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente - Cadastros</title>
        <script src="js/jquery.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/adm.css"/>
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans|Roboto" rel="stylesheet">
        <script src="js/adm.js"></script>
    </head>
<body>
    <!--
        //Cliente client = new Cliente();
        
        //if(request.getParameter("in") != null) {
            //client.setNome(request.getParameter("txt_nome"));
            //client.setRg(request.getParameter("txt_rg"));
            //client.setCpf(request.getParameter("txt_cpf"));
            //client.setEmail(request.getParameter("txt_email"));
            //client.setTelefone(request.getParameter("txt_telefone"));
            //client.setEndereço(request.getParameter("txt_endereco"));
            
            //Dados.getCliente().add(client);
            //response.sendRedirect(request.getRequestURI());
        //}
        //if(request.getParameter("ex") != null) {
            //EXCLUIR
            //id=2 & ex=1
            //Dados.getCliente().remove(Integer.parseInt(request.getParameter("id")));
            //response.sendRedirect(request.getRequestURI());
        //}
        //if(request.getParameter("ed") != null) {
            //EDITAR
            //id=2 & ed=1
            //int idCliente = Integer.parseInt(request.getParameter("id"));
            //Cliente novoCliente = new Cliente();
            //novoCliente.setNome(request.getParameter("txt_novo_nome"));
            //novoCliente.setRg(request.getParameter("txt_novo_rg"));
            //novoCliente.setCpf(request.getParameter("txt_novo_cpf"));
            //novoCliente.setEmail(request.getParameter("txt_novo_email"));
            //novoCliente.setTelefone(request.getParameter("txt_novo_tel"));
            //novoCliente.setEndereço(request.getParameter("txt_novo_endereco"));
            
            //Dados.getCliente().set(idCliente, novoCliente);
            //response.sendRedirect(request.getRequestURI());
        //}
    -->
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
                                <td><input class="form-control" type="text" name="txt_senha" placeholder="Senha"/></td>
                                <td><button class="btn btn-default" type="submit" name="in" value="1">Cadastrar</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
                
                <table class="table table-dashed">
                    <tr>
                        <th>#ID</th> <!-- é o ID do ArrayList --> 
                        <th>NOME</th>
                        <th>MÉDIA</th>
                        <th colspan="2">Ações</th>
                    </tr>
                    
                    <!-- //for (Cliente cl: Dados.getCliente()){ -->
                    <tr>
                        <!-- int id = Dados.getCliente().indexOf(cl); -->
                        <td>01</td>
                        <td>Adilson</td>
                        <td>10</td>
                        <td colspan="2">
                            <form id="form-editar">
                                <input type="hidden" name="id" value=""/>
                                <%@include file="modal_adm.jsp" %>
                            </form>
                            <form id="form-excluir">
                                <input type="hidden" name="id" value=""/>
                                <button type="submit" class="btn btn-danger" name="ex" value="1">Excluir</button>
                            </form>
                        </td>
                    </tr>
                    <!-- //} -->
                </table>
            </div> <!-- DIV COL 9 -->
        </div> <!-- DIV ROW -->
    </div> <!-- CONTAINER FLUID -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
