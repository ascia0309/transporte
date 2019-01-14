
<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
          <a class="navbar-brand" href="#">DIRECCION REGIONAL DE TRANSPORTES Y COMUNICACIONES DE APURIMAC</a>
      </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
      
      <?php if (!empty($_SESSION['logged_in'])) : ?>
	       <
	     <?php endif; ?>

        <?php if (!empty($_SESSION['logged_in'])) : ?><!--  agregando para login-->
       
        <li class="dropdown">
          <!--  para mostrar la bienvenida de correo-->
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" 
					aria-expanded="false">Bienvenido <?php echo $_SESSION['usunombres']; ?> 
					<span class="caret"></span></a>
          <ul class="dropdown-menu">
          	
            <li><a href="<?php echo base_url("login/"); ?>loggout">Salir</a></li><!--  loggout de controlador--> 
       		<li><a href="<?php echo base_url(); ?>usuario">Consulta</a></ul><li>
          </ul>
        </li>
      <?php else : ?><!--  caso contrario de la else-->
        <li><a href="<?php echo base_url("usuario") ?>"></a></li><!--  menu registrarse-->
        <li <?php if (isset($active) && $active == 'login') {
												echo 'class="active"';
											} ?>><a href="<?php echo base_url(); ?>login">Login</a></li><!--  menu Login(controlador/Login==>metodo login<==Auth)-->
      <?php endif; ?><!--  finalizado login-->


      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<div class="container">

	<div class="row">
		<div class="col-1g-12 text-center">
			/<h1></h1>
		</div>

	</div>  
	<div>
		<div>     
			
      
      <div class="container"> 
  
  <header>
    <nav class="navbar navbar-inverse navbar-embossed" role="navigation">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-01">
                <span class="sr-only">Toggle navigation</span>
              </button>
              
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse-01">
              <ul class="nav navbar-nav navbar-left">
                <li><a href="<?php echo base_url(); ?>menu.INICIO<span class="navbar-unread"></span></a></li>
                <li><a href="#fakelink">INFORMACIÓN<span class="navbar-unread"></span></a></li>
                <li><a href="#fakelink">INSCRIPCIÓN<span class="navbar-unread"></span></a></li>
                <li><a href="#fakelink">PAGO AL BANCO<span class="navbar-unread"></span></a></li>
                <li><a href="#fakelink">PROGRAMAR CITA<span class="navbar-unread"></span></a></li>
                <li class="dropdown">

                  
                  <!--a href="#" class="dropdown-toggle" data-toggle="dropdown">Categorias <b class="caret"></b></a>
                  <span class="dropdown-arrow"></span>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                
               </ul-->
               <form class="navbar-form navbar-right" action="#" role="search">
                <div class="form-group">
                  <div class="input-group">
                    <input class="form-control" id="navbarInput-01" type="search" placeholder="Search">
                    <span class="input-group-btn">
                      <button type="submit" class="btn"><span class="fui-search"></span></button>
                    </span>
                  </div>
                </div>
              </form>
            </div><!-- /.navbar-collapse -->
          </nav>
  </header>






 	<div class="panel-panel panel-col">
    <div>  
  <span class="views-field views-field-title">        <span class="field-content"><a href="/content/transportes-dictar%C3%A1-taller-de-reglamentos-de-protecci%C3%B3n-ambiental-en-carreteras">TRANSPORTES DICTARÁ TALLER  DE REGLAMENTOS DE PROTECCIÓN AMBIENTAL EN CARRETERAS. </a></span>  </span>  
  <div class="views-field views-field-field-news-image">        <div class="field-content"><a href="http://www.drtcapurimac.gob.pe/sites/default/files/descarga%20%281%29_1.jpg" title="TRANSPORTES DICTARÁ TALLER  DE REGLAMENTOS DE PROTECCIÓN AMBIENTAL EN CARRETERAS. " class="colorbox" data-colorbox-gallery="gallery-node-276-lbcurhkbv6Y"><img typeof="foaf:Image" src="http://www.drtcapurimac.gob.pe/sites/default/files/styles/medium/public/descarga%20%281%29_1.jpg?itok=oBnQvlXr" width="220" height="165" alt="" title="" /></a></div>  </div>  
  <div class="views-field views-field-body">        <div class="field-content"><p>El Gobierno Regional de Apurímac, a través de la Dirección Regional de Transportes y Comunicaciones Apurímac, viene organizando importante curso taller técnico que se llevará a cabo los días 27 y 28 de junio en el Auditorio Micaela Bastidas del Gobierno Regional de Apurímac.<br />
El objetivo de este curso taller sería capacitar a los asistentes en temas de Reglamento de Protección  Ambiental del Sector Transporte y los Terminos de Referencia Comunes para Clasificación Anticipada de las Declaraciones de Impacto Ambiental de proyectos viales.<br /></p></div>  </div>  
  </div>
  </div>
</div>
          </td>
              </tr>
          <tr class="row-4">
                  <td class="col-1 col-first">
            <div class="panel-display panel-1col clearfix" >

  <div class="views-field views-field-body">        <div class="field-content"><p><a href="/requisitos-licencias">REQUISITOS LICENCIAS DE CONDUCIR.</a></p>
</div>  </div>          </td>
              </tr>
      </tbody>
</table>
    </div>
  
  </div></div>
<div class="block block-block block-our-mission" id="block-block-2">
<div class="drtc-block clearfix">
        <div class="drtc-blockheader"><h3 class="t subject">
  Mision - Vision</h3>
</div>        <div class="drtc-blockcontent"><h1>MISIÓN</h1>
<p>Conducir y orientar, con eficiencia y responsabilidad, el desarrollo de la infraestructura y servicios de transportes y comunicaciones; y orientar con eficiencia y responsabilidad el mantenimiento de la infraestructura actual, contribuyendo con el desarrollo económico y social de la región del Apurimac.</p>
<p><span style="color:#FF8C00;"></span></p>
<!--break--><p></p>
<h1>VISIÓN</h1>
<p>Al 2020 Apurimaces una región con infraestructura y servicios de transportes y comunicaciones eficaces y eficientes, integrado nacional e internacionalmente de manera competitiva, lo que ha permitido dinamizar las actividades económico-productivas de la región, ampliando las oportunidades de empleo digno y mejor calidad de vida de la población Apurimeña.</p>
</div>
</div></div>
            </div>        <div id="var1">  <div class="region region-bottom1">
    <div class="block block-views" id="block-views-requisitos-licencias-block">
<div class="drtc-block clearfix">
        <div class="drtc-blockheader"><h3 class="t subject">
  
			
		</div>
	</div>
	
	
  <?php
  //para controlador-model
	if ($this->session->flashdata('mensaje_error') != null) {
		echo '<div class="alert alert-danger" role="alert">' . $this->session->flashdata('mensaje_error') . '</div>';
	}
	if ($this->session->flashdata('mensaje_success') != null) {
		echo '<div class="alert alert-success" role="alert">' . $this->session->flashdata('mensaje_success') . '</div>';
	}
	?>
	
</div>
