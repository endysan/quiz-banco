$(function(){
    var tela = $(document).height();
    var quiz = $('.quiz-desc').height();
    var meioTela= (tela - quiz*2)/2;
    
    $('.quiz-desc').css('margin-top', meioTela);
    
    // VERIFICAÇÃO SE CAMPO NOME ESTA VAZIO ==========================
    $('#bt_submit').on('click', function(event){
        event.preventDefault();
        if($.trim($('#nm_aluno').val()) === '') 
            $('#div-danger').toggleClass('has-danger');
        else 
            $('#form').submit();
    });
    
    $('#login-quiz').on('click', function(event){
        console.log("Entrei no metodo");
        
        event.preventDefault();
        
        if ($('#login').val() === "wenndyRainha" && $('#senha').val() === "123") {
            $("#erro").css("display", "block");
            console.log("Sumido");
        }
        if ($('#login').val() === "admin" && $('#senha').val() === "admin") {
            console.log("redirecionado");
            $(location).attr('href', 'home.jsp?isAdm=true&isLogado=true');
        }

        
    });
    //================================================================
});