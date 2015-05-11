<div class="lang">
  <ul>
    <?php 

     $langs = glob(PATH.'config/lang/*.php', GLOB_BRACE); 
                   
        foreach($langs as $lang) :


            echo '<li><a href="'.URL.'cambiar_idioma/'.str_replace(PATH.'config/lang/', '', str_replace('.php', '', $lang)).'">'.strtoupper(str_replace(PATH.'config/lang/', '', str_replace('.php', '', $lang))).'</a></li>';
       
        endforeach;

    ?>
  </ul>
</div>


