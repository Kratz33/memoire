<?php
/**
 * Created by PhpStorm.
 * User: ReGeN
 * Date: 19/12/2016
 * Time: 18:38
 */
?>


<form action="<?php echo $app->urlFor('edit_facture') ?>" method="post">
    <label for="kilometrage"> Kms : </label><input type="text" name="kilometrage" id="kilometrage" placeholder="Kilométrage"
        value="<?php echo $facture['kilometrage'] ?>"/>
    <label for="moyen-paiement"> Moyen paiement:</label>
    <input type="text" name="moyen-paiement" id="moyen-paiement" placeholder="Moyen de paiement"
           value="<?php echo $facture['moyen_paiement'] ?>"/>
    <label for="texte"> Produits/Services:</label>
    <div>
        <div class="input-facture">Référence</div>
        <div class="input-facture">Quantité</div>
        <div class="input-facture">Désignation</div>
        <div class="input-facture">Prix</div>
    </div>
    <div id="line-text">
        <input type="text" class="input-facture" name="reference[]" id="refenrece[]" placeholder="Référence"/>
        <input type="text" class="input-facture" name="quantite[]" id="quantite[]" placeholder="Quantité"/>
        <input type="text" class="input-facture" name="designation[]" id="designation[]" placeholder="Désignation"/>
        <input type="text" class="input-facture" name="prix[]" id="prix[]" placeholder="Prix"/>
    </div>
    <div>
        <a onclick="addLineText();"><i class="fa fa-plus"></i> Ajouter une ligne de texte</a>
    </div>
    <label for="immatriculation">Immatriculation :</label>
    <select id="immatriculation" id="immatriculation" name="immatriculation" onchange="loadClient();">
        <?php foreach ($immatriculations as $immat): ?>
            <option value="<?php echo $immat ?>"><?php echo $immat ?></option>
        <?php endforeach; ?>
    </select>
    <label for="client-name"> Client:</label><input type="text" name="client-name" id="client-name" placeholder="Client" disabled="disabled"/>
    <label for="client-id" class="hidden"> Client:</label><input type="text" class="hidden" name="client-id" id="client-id" placeholder="Client"/>
    <input class="submit-btn-btn" type="submit" value="Modifier"/>
</form>

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
        var texteHtml = '<div id="line-text">' +'<input type="text" class="input-facture" name="reference[]" id="reference[]" placeholder="Référence"/>' +
            '<input type="text" class="input-facture" name="quantite[]" id="quantite[]" placeholder="Quantité"/>' +
            '<input type="text" class="input-facture" name="designation[]" id="designation[]" placeholder="Désignation"/>' +
            '<input type="text" class="input-facture" name="prix[]" id="prix[]" placeholder="Prix Unitaire TTC"/>';
        $('#line-text').append(texteHtml);
    }
</script>