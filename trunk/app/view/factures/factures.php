<?php
/**
 * Created by PhpStorm.
 * User: ReGeN
 * Date: 19/12/2016
 * Time: 17:24
 */

?>

<div class="col-xs-6 col-xs-offset-3 init-autocomplete mt20">
    <div class="ui-widget">
        <div id="div-autocomplete">
            <label for="autocomplete">Client à rechercher: </label>
            <input id="autocomplete" />
        </div>
    </div>
</div>

<script type="text/javascript">


    $(document).ready(function() {
        var urlLink = '/nc_auto/clients-for-factures/';
        var clients = new Array();
        var i = 0;
        $.ajax({
            url : urlLink, // La ressource ciblée
            type : 'GET', // Le type de la requête HTTP.
            success: function(data) { console.log(data);
                datax = JSON.parse(data);
                $.each(datax, function(i, item) {
                    var valeur = "/nc_auto/factures-by-client/" + item.id;
                    clients.push({
                        value: valeur,
                        label: item.nom + " " + item.prenom
                    });
                });
                console.log(datax);
            },
            error: function() {
                alert('Erreur lors du chargement du client, veuillez contacter le développeur en carton qui code avec ses pieds');
            },
        });

        $("#autocomplete").autocomplete({
            source: clients,
            minLength: 2,
            select: function(event, ui) {
                window.location = (ui.item.value);
                $('#autocomplete > ul > li').val(ui.label);
                return false;
            }
        });
    });


</script>


<div class="col-xs-12">
    <div class="col-xs-12 mt40">
        <table>
            <tr>
                <th>Identifiant</th>
                <th>Date</th>
                <th>Km</th>
                <th>Moyen paiement</th>
                <th>Immatriculation</th>
                <th>Nom client</th>
            </tr>
            <?php foreach($factures as $facture): ?>
                <tr>
                    <td><?php echo $facture['id'] ?></td>
                    <td><?php echo $facture['date'] ?></td>
                    <td><?php echo $facture['kilometrage'] ?></td>
                    <td><?php echo $facture['moyen_paiement'] ?></td>
                    <td><?php echo $facture['immatriculation'] ?></td>
                    <td><?php echo $facture['nom-prenom'] ?></td>
                    <td><a target="_blank" href="<?php echo $app->urlFor('facture', array('id' => $facture['id'])) ?>">Modifier</a></td>
                </tr>
            <?php endforeach; ?>
        </table>
    </div>
    <div class="col-xs-12 t-center mt40">
        <a class="btn-btn" href="<?php echo $app->urlFor('add_facture') ?>">Ajouter une facture</a>
    </div>
</div>
