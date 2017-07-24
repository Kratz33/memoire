<div class="col-xs-12">

    <h1>Une autre page !</h1>

    <p>
        Et un retour à la <a href="<?php echo $app->urlFor("root"); ?>">racine</a> !
        <br>
        Un accès vers un <a href="item/2">item donné</a>
    </p>

    <p>
        <h2>Un test de formulaire Post</h2>

        <form method="post" id="argh" action="ajout_info">
        <label for="name_id">Nom</label>
        <input type="text" id="name_id" name="nom" value=""
               placeholder="Entrez votre nom..." />
        <input type="submit" name="" value="Go go go!" />
        </form>
    </p>

</div>
