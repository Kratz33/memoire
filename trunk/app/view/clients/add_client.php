<?php
/**
 * Created by PhpStorm.
 * User: ReGeN
 * Date: 19/12/2016
 * Time: 18:38
 */
?>

<form action="<?php echo $app->urlFor('add_client_complete') ?>" method="post">
    <label for="non"> Nom: </label><input type="text" name="nom" id="nom" placeholder="Nom"/>
    <label for="prenom"> Prénom:</label><input type="text" name="prenom" id="prenom" placeholder="Prenom"/>
    <label for="adresse"> Adresse:</label><input type="text" name="adresse" id="adresse" placeholder="Adresse"/>
    <label for="code-postal"> Code postal:</label><input type="text" name="code-postal" id="code-postal" placeholder="Code postal"/>
    <label for="ville"> Ville:</label><input type="text" name="ville" id="ville" placeholder="Ville"/>
    <label for="telephone"> Telephone:</label><input type="text" name="telephone" id="telephone" placeholder="telephone"/>
    <label for="mail"> Mail:</label><input type="text" name="mail" id="mail" placeholder="mail"/>
    <input class="submit-btn-btn" type="submit" value="Ajouter"/>
</form>
