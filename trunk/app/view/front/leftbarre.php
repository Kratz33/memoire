<div class="categories-div col-xs-3">
    <table class="categories-table">
        <tbody>
             <?php foreach ($categories as $categNav): ?>
                <tr>
                    <td>
                        <a href="<?php echo $app->urlFor('billets_by_category', array('id' => $categNav['id'], 'page' => 1)) ?>"><?php echo $categNav['label']; ?> (<?php echo $categNav['billets_count']; ?>)</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>