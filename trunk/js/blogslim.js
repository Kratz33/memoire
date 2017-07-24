$(document).ready(function(){

    $('.header-inscription').click(function(){
        $('#modal-inscription').modal();
    });

    $('.header-connexion').click(function(){
        $('#modal-connexion').modal();
    });

    $('.btn-connexion').click(function(){
        $('#modal-connexion').modal();
    });

    $('.btn-inscription').click(function(){
       if($('#inscription-password-confirm').val() == $('#inscription-password').val()) {
           $('#submit-inscription').click();
       }
        else {
           $('#text-error-js').fadeIn(300);
           $('#text-error-js').html('Attention : Les deux mots de passe ne correspondent pas');
           $('#text-error-js').fadeOut(3600);
       }
    });

    $('.btn-connexion').click(function(){
        $('#submit-connexion').click();
    });

    $('.add-category').click(function(){
        $('#modal-add-category').modal();
    });

    $('.add-billet').click(function() {
        $('#modal-add-billet').modal();
    });

});

