<?php
/**
 * Created by PhpStorm.
 * User: ReGeN
 * Date: 19/12/2016
 * Time: 18:03
 */
?>

<form action="<?php echo $app->urlFor('edit_client', array('id' => $client['id'])) ?>" method="post">
    <label for="non"> Nom: </label><input type="text" name="nom" id="nom" value="<?php echo $client['nom'] ?>"/>
    <label for="prenom"> Prénom:</label><input type="text" name="prenom" id="prenom" value="<?php echo $client['prenom'] ?>"/>
    <label for="prenom"> Adresse:</label><input type="text" name="adresse" id="adresse" value="<?php echo $client['adresse'] ?>"/>
    <label for="prenom"> Code postal:</label><input type="text" name="code-postal" id="code-postal" value="<?php echo $client['code_postal'] ?>"/>
    <label for="prenom"> Ville:</label><input type="text" name="ville" id="ville" value="<?php echo $client['ville'] ?>"/>
    <label for="prenom"> Telephone:</label><input type="text" name="telephone" id="telephone" value="<?php echo $client['telephone'] ?>"/>
    <label for="prenom"> Mail:</label><input type="text" name="mail" id="mail" value="<?php echo $client['mail'] ?>"/>
    <input class="submit-btn-btn" type="submit" value="Modifier"/>
</form>
