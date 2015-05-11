<div class="banner">
 
  <div class="left"></div>

  <div class="right">
      <h1>
        <span><?php echo self::lang()['work']; ?> </span>
        <small><?php echo self::lang()['portfolio_']; ?> </small>
       </h1>
  </div>


 
  <div class="banner_bar">
      <span class="text"></span>
  </div>
</div>


<?php 

  $portfolio = array(

      'mundoilumno' => array(
        'nombre'    => 'Mundoilumno',
        'url'       => 'http://mundoilumno.com',
        'derechos'  => 'Color al cuadrado'
      ),
      'imagina' => array(
          'nombre'   => 'Imaginacolombia',
          'url'      =>  'http://imaginacolombia.com',
          'derechos' =>  'Imagina colombia'
      ),
      'tresd' => array(
        'nombre'   => 'Tresd',
        'url'      => 'htpp://tresd.com',
        'derechos' => 'Imagina colombia'
      ),
      'australia' => array(
        'nombre'   => 'Australian Engagement',
        'url'      => 'http://australianengagement.com',
        'derechos' => 'Negma pro'
      ),
      'milsentimientos' => array(
        'nombre'    => 'Milsentimientos',
        'url'       => 'http://milsentimientos.com/',
        'derechos'  => 'Imagina colombia'
      ),
      'desaparecidos' => array(
        'nombre'      => 'Desaparecidos palacio de justicia',
        'url'         => 'http://desaparecidospalaciodejusticia.org',
        'derechos'    => 'Fernando caicedo'
      ),
      'proksol'       => array(
          'nombre'      => 'Proksol',
          'url'         => 'http://pruebascolor2.com/proksol',
          'derechos'    => 'Color al cuadrado' 
      ),
      'paparazzi'       => array(
          'nombre'      => 'Paparazzi',
          'url'         => 'http://paparazzitolima.com',
          'derechos'    => 'Imagina colombia' 
      ),
      'jorge'       => array(
          'nombre'      => 'Jorge mario uribe',
          'url'         => 'http://jorgemariouribe.com',
          'derechos'    => 'Imagina colombia' 
      ),
      

    ); 

  

?>


<div class="mainbody">
  
    <h2><?php echo self::lang()['work']; ?> </h2>
    <div class="portfolio_grid">
      <?php foreach($portfolio as $k => $p) : ?>
          <div class="proyect">
              <img src="<?php echo URL.'assets/img/'.$k.'.jpg'; ?>" alt="Site img" />
                <p><?php echo $p['nombre']; ?></p>
                <span class="nombre"><a href="<?php echo $p['url']; ?>">Visitar</a></span>
                <span class="derechos">Derechos | <?php echo $p['derechos']; ?></span>
             
          </div>
      <?php endforeach; ?>
    </div>

</div>
<!---<script>
  $(document).ready(function() {
    function getRandomSize(min, max) {
      return Math.round(Math.random() * (max - min) + min);
    }

    $.each($('.proyect'), function( index, value ) {
      var height =  getRandomSize(45, 85);
      $(this).height(height+'vh');


    });


     
      for (var i = 0; i < 25; i++) {
        //var width = getRandomSize(200, 400);
       
        
        
      }
    });
</script>-->