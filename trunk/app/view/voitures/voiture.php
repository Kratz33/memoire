<?php
/**
 * Created by PhpStorm.
 * User: ReGeN
 * Date: 19/12/2016
 * Time: 18:03
 */
?>

<form action="<?php echo $app->urlFor('edit_voiture', array('immatriculation' => $voiture['immatriculation'])) ?>" method="post">
    <label for="immatriculation"> Immatriculation: </label>
    <input type="text" name="immatriculation" id="immatriculation" value="<?php echo $voiture['immatriculation'] ?>" disabled="disabled"/>
    <label for="marque"> Marque:</label><input type="text" name="marque" id="marque" value="<?php echo $voiture['marque'] ?>"/>
    <label for="modele"> Modèle:</label><input type="text" name="modele" id="modele" value="<?php echo $voiture['modele'] ?>"/>
    <label for="numero-moteur"> Numéro moteur:</label><input type="text" name="numero-moteur" id="numero-moteur" value="<?php echo $voiture['numero_moteur'] ?>"/>
    <label for="client-id"> Client:</label>
    <select id="client-id" name="client-id">
        <?php foreach ($clients as $client): ?>
            <option value="<?php echo $client['id'] ?>"
                <?php if($client['id'] == $voiture['client-id']){ echo 'selected="selected"'; } ?>><?php echo $client['nom'] . ' ' . $client['prenom'] ?>
            </option>
        <?php endforeach; ?>
    </select>
    
    <input class="submit-btn-btn" type="submit" value="Modifier"/>
</form>
