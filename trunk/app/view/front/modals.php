

        <div id="modal-inscription" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Inscription</h4>
                    </div>
                    <div class="modal-body">
                        <p>
                            Vous souhaitez vous inscrire sur le site ?
                        </p>
                        <p class="text-warning"
                            <small>Les informations que vous renseignez sont confidentielles, personne n'y aura accès à part le WebMaster </small>
                        </p>
                        <p class="error" id="text-error-js"></p>
                        <form method="post" action="<?php echo $app->urlFor('inscription'); ?>">
                            <p class="p-form">
                                <div>
                                    <label for="inscription-pseudo">Pseudo :</label></br>
                                    <input type="text" id="inscription-pseudo" name="inscription-pseudo"
                                           placeholder="Mon pseudo" required="required"/>
                                </div>
                                <div>
                                    <label for="inscription-lastname">Nom :</label></br>
                                    <input type="text" id="inscription-lastname" name="inscription-lastname"
                                           placeholder="Mon nom" required="required"/>
                                </div>
                                <div>
                                    <label for="inscription-firstname">Prénom :</label></br>
                                    <input type="text" id="inscription-firstname" name="inscription-firstname"
                                           placeholder="Mon prénom" required="required"/>
                                </div>
                                <div>
                                    <label for="inscription-mail">Adresse Email :</label></br>
                                    <input type="email" id="inscription-mail" name="inscription-mail"
                                           placeholder="Mon adresse email" required="required"/>
                                </div>
                                <div>
                                    <label for="inscription-password">mot de passe :</label></br>
                                    <input type="password" id="inscription-password" name="inscription-password"
                                           placeholder="Mon mot de passe" required="required" pattern=".{5,15}" title="5 à 15 caractères"/>
                                </div>
                                <div>
                                    <label for="inscription-password-confirm">Confirmation du mot de passe :</label></br>
                                    <input type="password" id="inscription-password-confirm"
                                           placeholder="Mon mot de passe" required="required" pattern=".{5,15}" title="5 à 15 caractères"/>
                                </div>
								<div>
									<input type="radio" id="inscription-type-1" class="with-gap"  name="inscription-type" placeholder="type" required="required" value="1" />
									<label for="inscription-type-1">Entrepreneur</label>
									<input type="radio"  id="inscription-type-2"class="with-gap"  name="inscription-type" placeholder="type" required="required" value="2" />
									<label for="inscription-type-2">Professionnel</label></br>
                                </div>
								<div>
                                    <input type="radio" class="with-gap"  name="inscription-premium" id="inscription-premium-1" placeholder="premium" required="required" value="1"/>
									<label for="inscription-premium-1">Premium</label>									
									<input type="radio" class="with-gap"  name="inscription-premium" id="inscription-premium-2" placeholder="premium" required="required" value="0"/>
									<label for="inscription-premium-2">Gratuit</label>																						
                                </div>
                                <?php if(isset($categories)): ?>
                                    <div>
                                         <label>Les catégories intéressées : </label>
                                         <select name="inscription-categories[]" id="inscription-categories" multiple>
                                             <?php foreach($categories as $category): ?>
                                                <option value="<?php echo $category['id'] ?>">
                                                    <?php echo $category['label'] ?>
                                                </option>
                                             <?php endforeach; ?>
                                         </select>
                                    </div>
                                <?php endif; ?>
                            </p>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
                                <button type="button" class="btn btn-inscription">M'inscrire</button>
                                <input type="submit" id="submit-inscription" class="hidden"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div id="modal-connexion" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Connexion</h4>
                    </div>
                    <div class="modal-body">
                        <p>
                            pour vous connecter, veuillez renseigner votre pseudo ainsi que votre mot de passe.
                        </p>
                        <p class="text-warning">
                            <small>Si vous ne vous en souvenez plus, prenez contact avec le WebMaster.</small>
                        </p>
                        <form method="post" action="<?php echo $app->urlFor('connexion'); ?>">
                            <p class="p-form">
                                <div>
                                    <label for="connexion-pseudo">Pseudo :</label></br>
                                    <input type="text" id="connexion-pseudo" name="connexion-pseudo"
                                           placeholder="Mon pseudo" required=required"/>
                                </div>
                                <div>
                                    <label for="connexion-password">mot de passe :</label></br>
                                    <input type="password" id="connexion-password" name="connexion-password"
                                           placeholder="Mon mot de passe" required=required"/>
                                </div>
                            </p>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
                                <button type="button" class="btn btn-connexion">Me connecter</button>
                                <input type="submit" id="submit-connexion" class="hidden"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div id="modal-add-category" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Ajouter une catégorie</h4>
                    </div>
                    <div class="modal-body">
                        <p>
                            Pour ajouter une catégorie, veuillez renseigner son label ci-dessous
                        </p>
                        <form method="post" action="<?php echo $app->urlFor('add_category'); ?>">
                            <p class="p-form">
                                <div>
                                    <label for="label-category">Label de la catégorie :</label></br>
                                    <input type="text" id="label-category" name="label-category"
                                           placeholder="Le label de la catégorie à ajouter" required=required">
                                </div>
                            </p>
                            <div class="modal-footer">
                                <input type="submit" id="submit-add-label-category" value="Ajouter"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <?php if(isset($categories)): ?>
            <?php foreach($categories as $category): ?>
                <div id="modal-edit-category-<?php echo $category['id'] ?>" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">Modifier une catégorie</h4>
                            </div>
                            <div class="modal-body">
                                <p>
                                    Pour modifier une catégorie, veuillez renseigner son nouveau label ci-dessous
                                </p>
                                <form method="post" action="<?php echo $app->urlFor('edit_category', array('id' => $category['id'])); ?>">
                                    <p class="p-form">
                                    <div>
                                        <label for="label-category">Label de la catégorie :</label></br>
                                        <input type="text" id="edit-label-category" name="edit-label-category" required=required"
                                               value="<?php echo $category['label'] ?>"/>
                                    </div>
                                    </p>
                                    <div class="modal-footer">
                                        <input type="submit" id="submit-add-label-category" value="Modifier"/>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="modal-delete-category-<?php echo $category['id'] ?>" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">Supprimer la catégorie <?php echo $category['label'] ?></h4>
                            </div>
                            <div class="modal-body">
                                <p>
                                    Êtes-vous sûr(e) de vouloir supprimer la catégorie : <?php echo $category['label'] ?>?
                                </p>
                                <form method="post" action="<?php echo $app->urlFor('delete_category', array('id' => $category['id'])); ?>">
                                    <div class="modal-footer">
                                        <input type="submit" id="submit-add-label-category" value="Supprimer"/>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        <?php endif; ?>


        <?php if(isset($categories)): ?>
            <div id="modal-add-billet" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Ajouter un billet</h4>
                        </div>
                        <div class="modal-body">
                            <p>
                                Veuillez renseigner tous les champs afin de pouvoir ajouter un billet
                            </p>
                            <form method="post" action="<?php //echo $app->urlFor('add_billet', array('id' => $category['id'])); ?>">
                                <p class="p-form">
                                <div>
                                    <label for="add-billet-title">Titre du billet :</label></br>
                                    <input type="text" id="add-billet-title" name="add-billet-title" required=required" />
                                </div>
                                <div>
                                    <label for="add-billet-category">Catégorie liée :</label></br>
                                    <select id="add-billet-category" name="add-billet-category">
                                        <?php foreach($categories as $category) :?>
                                            <option value="<?php echo $category['id'] ?>">
                                                <?php echo $category['label'] ?>
                                            </option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                                <div>
                                    <label for="add-billet-message">Message du billet :</label></br>
                                    <textarea id="add-billet-message" name="add-billet-message" required=required"></textarea>
                                </div>
                                </p>
                                <div class="modal-footer">
                                    <input type="submit" id="submit-add-label-category" value="Modifier"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        <?php endif; ?>
