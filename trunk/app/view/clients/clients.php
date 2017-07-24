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
                    var valeur = "/nc_auto/client/" + item.id;
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
                <th>Nom</th>
                <th>Prénom</th>
                <th>Adresse</th>
                <th>Code postal</th>
                <th>Ville</th>
                <th>Téléphone</th>
                <th>Mail</th>
                <th>Modifier</th>
            </tr>
            <?php foreach($clients as $client): ?>
                <tr>
                    <td><?php echo $client['nom'] ?></td>
                    <td><?php echo $client['prenom'] ?></td>
                    <td><?php echo $client['adresse'] ?></td>
                    <td><?php echo $client['code_postal'] ?></td>
                    <td><?php echo $client['ville'] ?></td>
                    <td><?php echo $client['telephone'] ?></td>
                    <td><?php echo $client['mail'] ?></td>
                    <td><a href="<?php echo $app->urlFor('client', array('id' => $client['id'])) ?>">Modifier</a></td>
                </tr>
            <?php endforeach; ?>
        </table>
    </div>
    <div class="col-xs-12 t-center mt40">
        <a class="btn-btn" href="<?php echo $app->urlFor('add_client') ?>">Ajouter un client</a>
    </div>
</div>
