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
            <label for="autocomplete">Voiture à rechercher (immatriculation): </label>
            <input id="autocomplete" />
        </div>
    </div>
</div>

<script type="text/javascript">


    $(document).ready(function() {
        var urlLink = '/nc_auto/get-immats/';
        var immats = new Array();
        $.ajax({
            url : urlLink, // La ressource ciblée
            type : 'GET', // Le type de la requête HTTP.
            success: function(data) { console.log(data);
                datax = JSON.parse(data);
                $.each(datax, function(i, item) {
                    var valeur = "/nc_auto/voiture/" + item.immatriculation;
                    immats.push({
                        value: valeur,
                        label: item.immatriculation
                    });
                });
                console.log(datax);
            },
            error: function() {
                alert('Erreur lors du chargement du client, veuillez contacter le développeur en carton qui code avec ses pieds');
            },
        });

        $("#autocomplete").autocomplete({
            source: immats,
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
                <th>Immatriculation</th>
                <th>Marque</th>
                <th>Modèle</th>
                <th>Numéro moteur</th>
                <th>Client</th>
                <th>Modifier</th>
            </tr>
            <?php foreach($voitures as $voiture): ?>
                <tr>
                    <td><?php echo $voiture['immatriculation'] ?></td>
                    <td><?php echo $voiture['marque'] ?></td>
                    <td><?php echo $voiture['modele'] ?></td>
                    <td><?php echo $voiture['numero_moteur'] ?></td>
                    <td><?php echo $voiture['client_id'] ?></td>
                    <td><a href="<?php echo $app->urlFor('voiture', array('immatriculation' => $voiture['immatriculation'])) ?>">Modifier</a></td>
                </tr>
            <?php endforeach; ?>
        </table>
    </div>
    <div class="col-xs-12 t-center mt40">
        <a class="btn-btn" href="<?php echo $app->urlFor('add_voiture') ?>">Ajouter une voiture</a>
    </div>
</div>
