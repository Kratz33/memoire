<?php
/**
 * Created by PhpStorm.
 * User: ReGeN
 * Date: 19/12/2016
 * Time: 18:38
 */
?>


<form class="col-xs-12" action="<?php echo $app->urlFor('edit_facture', array('id' => $facture['id'])) ?>" method="post">
    <label for="kilometrage"> Kms : </label><input type="text" name="kilometrage" id="kilometrage" placeholder="Kilométrage"
                                                   value="<?php echo $facture['kilometrage'] ?>"/>
    <label for="lieu"> Lieu:</label>
    <select name="lieu" id="lieu">
        <option value="bu">Bureau</option>
        <option value="ma" <?php if("ma" == $facture['lieu']) { echo 'selected = "selected"'; } ?>>Maison</option>
    </select>
    <label for="moyen-paiement"> Moyen paiement:</label>
    <input type="text" name="moyen-paiement" id="moyen-paiement" placeholder="Moyen de paiement"
           value="<?php echo $facture['moyen_paiement'] ?>"/>
    <label for="accompte"> Acompte:</label>
    <input type="text" name="accompte" id="accompte" placeholder="Acompte"
           value="<?php echo $facture['accompte'] ?>"/>
    <label for="texte"> Produits/Services:</label>
    <div>
        <div class="input-facture">Référence</div>
        <div class="input-facture">Quantité</div>
        <div class="input-facture">Désignation</div>
        <div class="input-facture">Prix unitaire TTC</div>
    </div>
    <?php (array) $arrayText = explode('"' , $facture['texte']) ?>
    <?php $arrayText = json_decode($facture['texte'], true) ?>  
    <div id="form">  
        <?php for($i=0; $i<count($arrayText['reference']); $i++): ?>
            <div id="line-text">
                <input type="text" class="input-facture" name="reference[]" id="reference[]" placeholder="Référence"
                    value="<?php echo $arrayText['reference'][$i] ?>"/>
                <input type="text" class="input-facture" name="quantite[]" id="quantite[]" placeholder="Quantité"
                    value="<?php echo $arrayText['quantite'][$i] ?>"/>
                <input type="text" class="input-facture" name="designation[]" id="designation[]" placeholder="Désignation"
                       value="<?php echo $arrayText['designation'][$i] ?>"/>
                <input type="text" class="input-facture" name="prix[]" id="prix[]" placeholder="Prix unitaire TTC"
                       value="<?php echo $arrayText['prix'][$i] ?>"/>
                <a class="delete-line-text"><i class="fa fa-close"></i></a>
            </div>
        <?php endfor; ?>
    </div> 
    <div>
        <a onclick="addLineText();"><i class="fa fa-plus"></i> Ajouter une ligne de texte</a>
    </div>   
    <label for="client-name"> Observations:</label>
    <textarea name="observations" id="observations" placeholder="Observations">
        <?php echo $facture['observations'] ?>
    </textarea>
    <label for="immatriculation">Immatriculation :</label>
    <select id="immatriculation" id="immatriculation" name="immatriculation" onchange="loadClient();">
        <?php foreach ($immatriculations as $immat): ?>
            <option value="<?php echo $immat ?>"
            <?php if($immat == $facture['immatriculation']){ echo 'selected="selected"'; } ?>><?php echo $immat ?></option>
        <?php endforeach; ?>
    </select>
    <label for="client-name"> Client:</label><input type="text" name="client-name" id="client-name" placeholder="Client"
         value="<?php echo $client['nom'] . ' ' . $client['prenom'] ?>" disabled="disabled"/>
    <label for="client-id" class="hidden"> Client:</label><input type="text" class="hidden" name="client-id" id="client-id"
         value="<?php echo $client['id'] ?>"/>
    <input class="submit-btn-btn" type="submit" value="Modifier"/>
</form>

<div class="col-xs-12 t-center mt40 mb40">
    <a class="btn-btn" href="<?php echo $app->urlFor('generate_facture', array('id' => $facture['id'])) ?>">Générer la facture</a>
</div>

<script type="text/javascript">
    function loadClient(data) {
        var urlLink = '/nc_auto/get_client_by_immat/' + $("#immatriculation").val();
        $.ajax({
            url : urlLink, // La ressource ciblée
            type : 'GET', // Le type de la requête HTTP.
            success: function(data) {
                var datax = JSON.parse(data);
                $('#client-name').val(datax.nom + " " + datax.prenom);
                $('#client-id').val(datax.id.client_id);
            },
            error: function() {
                alert('Erreur lors du chargement du client, veuillez contacter le développeur en carton qui code avec ses pieds');
            },
        });
    }

    function addLineText() {
        var j = $('div#line-text').length;
        var texteHtml = '<div id="line-text">' +'<input type="text" class="input-facture" name="reference[]" id="reference[]" placeholder="Référence"/>' +
            '<input type="text" class="input-facture" name="quantite[]" id="quantite[]" placeholder="Quantité"/>' +
            '<input type="text" class="input-facture" name="designation[]" id="designation[]" placeholder="Désignation"/>' +
            '<input type="text" class="input-facture" name="prix[]" id="prix[]" placeholder="Prix Unitaire TTC"/>'+
            '<a class="delete-line-text"><i class="fa fa-close"></i></a></div>';
        $('#form').append(texteHtml);
    }

    $('#form').on('click', '.delete-line-text', function(){
        $(this).parent().remove();
    });
</script>