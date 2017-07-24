<?php
/**
 * Created by PhpStorm.
 * User: ReGeN
 * Date: 19/12/2016
 * Time: 20:39
 */
?>

<form action="<?php echo $app->urlFor('add_voiture_complete') ?>" method="post">
    <label for="immatriculation"> Immatriculation: </label>
    <input type="text" name="immatriculation" id="immatriculation" placeholder="Immatriculation"/>
    <label for="marque"> Marque:</label><input type="text" name="marque" id="marque" placeholder="Marque"/>
    <label for="modele"> Modèle:</label><input type="text" name="modele" id="modele" placeholder="Modèle"/>
    <label for="numero-moteur"> Numéro moteur:</label><input type="text" name="numero-moteur" id="numero-moteur" placeholder="Numéro moteur"/>
    <label for="client-id"> Client:</label>
    <select id="client-id" name="client-id">
        <?php foreach ($clients as $client): ?>
            <option value="<?php echo $client['id'] ?>"><?php echo $client['nom'] . ' ' . $client['prenom'] ?>
            </option>
        <?php endforeach; ?>
    </select>
    <input class="sumbit-btn-btn" type="submit" value="Ajouter"/>
</form>
