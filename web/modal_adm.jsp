<div class="bd-example">
    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#alunoModal<%= id %>">Editar</button>
    <div class="modal fade" id="alunoModal<%= id %>" tabindex="-1" role="dialog" aria-labelledby="modalLabel<%= id %>" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="modalLabel<%= id %>">Editar cadastro</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="ed-nome" class="form-control-label">Nome:</label>
                            <input type="text" class="form-control" id="ed-nome" name="txt_novo_nome" value="<%= al.getNome() %>">
                        </div>
                        <div class="form-group">
                            <label for="ed-login" class="form-control-label">Login:</label>
                            <input type="text" class="form-control" id="ed-login" name="txt_novo_login" value="<%= al.getLogin()%>">
                        </div>
                        <div class="form-group">
                            <label for="ed-senha" class="form-control-label">Senha:</label>
                            <input type="password" class="form-control" id="ed-senha" name="txt_nova_senha" value="">
                        </div>
                        <div class="form-group">
                            <label for="ed-media" class="form-control-label">Média:</label>
                            <input type="text" class="form-control" id="ed-media" name="txt_nova_media" value="<%= al.getMedia() %>">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="submit" name="ed" class="btn btn-success" value="1">Editar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>