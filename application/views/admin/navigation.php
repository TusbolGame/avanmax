<?php $active_menu=$this->session->userdata('active_menu');
?>
 <!-- Side-Nav-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
  <ul class="app-menu">
    <li><a class="app-menu__item <?php if($active_menu==1) {echo "active"; } ?>" href="<?php echo base_url()."admin/dashboard";?>"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Escritorio</span></a> </li>
    <li class="treeview <?php if($active_menu==6 || $active_menu==8 || $active_menu==9) {echo "is-expanded"; } ?>">
        <a href="#" class="app-menu__item" data-toggle="treeview">
            <i class="app-menu__icon fa fa-video-camera" aria-hidden="true"></i>
            <span class="app-menu__label">Películas</span>
            <i class="treeview-indicator fa fa-angle-right"></i>
    	</a>
      <ul class="treeview-menu">
        <li><a class="treeview-item <?php if($active_menu==6) {echo "active"; } ?>" href="<?php echo base_url().'admin/videos_add/'?>"><i class="app-menu__icon fa fa-plus"></i>Nueva Película </span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==8) {echo "active"; } ?>" href="<?php echo base_url().'admin/videos/'?>"><i class="app-menu__icon fa fa-list"></i>Videos</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==9) {echo "active"; } ?>" href="<?php echo base_url().'admin/video_type/'?>"><i class="app-menu__icon fa fa-tags"></i>Tipos de Video</span> </a></li>
      </ul>
    </li>
    <li class="treeview <?php if($active_menu==28 || $active_menu==29 || $active_menu==30) {echo "is-expanded"; } ?>"> <a href="#" class="app-menu__item" data-toggle="treeview"><i class="app-menu__icon fa fa-film" aria-hidden="true"></i><span class="app-menu__label">Series</span><i class="treeview-indicator fa fa-angle-right"></i> </a>
      <ul class="treeview-menu">
        <li><a class="treeview-item <?php if($active_menu==29) {echo "active"; } ?>" href="<?php echo base_url().'admin/tvseries_add/'?>"><i class="app-menu__icon fa fa-plus" aria-hidden="true"></i>Nueva Serie</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==30) {echo "active"; } ?>" href="<?php echo base_url().'admin/tvseries/'?>"><i class="app-menu__icon fa fa-list" aria-hidden="true"></i>Series</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==28) {echo "active"; } ?>" href="<?php echo base_url().'admin/tv_series_setting/'?>"><i class="app-menu__icon fa fa-gear" aria-hidden="true"></i>Ajustes</span> </a></li>
      </ul>
    </li>
    <li class="treeview <?php if($active_menu==26 || $active_menu==27 || $active_menu==35 || $active_menu==39) {echo "is-expanded"; } ?>"> <a href="#" class="app-menu__item" data-toggle="treeview"><i class="app-menu__icon fa fa-tv" aria-hidden="true"></i><span class="app-menu__label">TV&nbsp;<span class="label label-danger">Live</span></span><i class="treeview-indicator fa fa-angle-right"></i> </a>
      <ul class="treeview-menu">
        <li><a class="treeview-item <?php if($active_menu==35) {echo "active"; } ?>" href="<?php echo base_url().'admin/manage_live_tv/new'?>"><i class="app-menu__icon fa fa-plus" aria-hidden="true"></i>Nuevo Canal</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==26) {echo "active"; } ?>" href="<?php echo base_url().'admin/manage_live_tv/'?>"><i class="app-menu__icon fa fa-list" aria-hidden="true"></i> Todos los Canales</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==39) {echo "active"; } ?>" href="<?php echo base_url().'admin/live_tv_category/'?>"><i class="app-menu__icon fa fa-tags" aria-hidden="true"></i> Categorías </span> </a></li>
        <li> <a class="treeview-item <?php if($active_menu==27) {echo "active"; } ?>" href="<?php echo base_url().'admin/live_tv_setting/'?>"><i class="app-menu__icon fa fa-gear" aria-hidden="true"></i>Ajustes</span> </a></li>
      </ul>
    </li>
    <li><a class="app-menu__item <?php if($active_menu==7) {echo "active"; } ?>" href="<?php echo base_url().'admin/movie_importer/'?>"><i class="app-menu__icon fa fa-search" aria-hidden="true"></i><span class="app-menu__label">Búsqueda</span> </a></li>
    <li><a class="app-menu__item <?php if($active_menu==77) {echo "active"; } ?>" href="<?php echo base_url().'admin/movie_scrapper_manage/'?>"><i class="app-menu__icon fa fa-clone" aria-hidden="true"></i><span class="app-menu__label">Importar Película</span> </a></li>
    <li><a class="app-menu__item <?php if($active_menu==2) {echo "active"; } ?>" href="<?php echo base_url();?>admin/country"><i class="app-menu__icon fa fa-globe"></i><span class="app-menu__label">País</span></a> </li>
    <li><a class="app-menu__item <?php if($active_menu==3) {echo "active"; } ?>" href="<?php echo base_url();?>admin/genre"><i class="app-menu__icon fa fa-archive"></i><span class="app-menu__label">Género</span></a> </li>
    <li class="treeview <?php if($active_menu==4 || $active_menu==5 ) {echo "is-expanded"; } ?>"> <a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-stack-overflow"></i><span class="app-menu__label">Slider</span><i class="treeview-indicator fa fa-angle-right"></i> </a>
      <ul class="treeview-menu">
        <li><a class="treeview-item <?php if($active_menu==4) {echo "active"; } ?>" href="<?php echo base_url().'admin/slider/'?>"><i class="app-menu__icon fa fa-stack-overflow"></i>Imagen de Slide</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==5) {echo "active"; } ?>" href="<?php echo base_url().'admin/slider_setting/'?>"><i class="app-menu__icon fa fa-gears" aria-hidden="true"></i>Ajustes</span> </a></li>
      </ul>
    </li>
    <li class="treeview <?php if($active_menu==31 || $active_menu==32 || $active_menu==33) {echo "is-expanded"; } ?>"> <a href="#" class="app-menu__item" data-toggle="treeview"><i class="app-menu__icon fa fa-comment"></i><span class="app-menu__label">Comentarios</span><i class="treeview-indicator fa fa-angle-right"></i> </a>
      <ul class="treeview-menu">
        <li><a class="treeview-item <?php if($active_menu==31) {echo "active"; } ?>" href="<?php echo base_url().'admin/comments/'?>"><i class="app-menu__icon fa fa-comments"></i>Películas</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==33) {echo "active"; } ?>" href="<?php echo base_url().'admin/comments/post_comments'?>"><i class="app-menu__icon fa fa-comments"></i>Posts</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==32) {echo "active"; } ?>" href="<?php echo base_url().'admin/comments_setting/'?>"><i class="app-menu__icon fa fa-gears"></i>Ajustes</span> </a></li>
      </ul>
    </li>

    <li class="treeview <?php if($active_menu==10 || $active_menu==11) {echo "is-expanded"; } ?>"> <a href="#" class="app-menu__item" data-toggle="treeview"><i class="app-menu__icon fa fa-file" aria-hidden="true"></i><span class="app-menu__label">Páginas</span><i class="treeview-indicator fa fa-angle-right"></i> </a>
      <ul class="treeview-menu">
        <li><a class="treeview-item <?php if($active_menu==10) {echo "active"; } ?>" href="<?php echo base_url().'admin/pages_add/'?>"><i class="app-menu__icon fa fa-plus" aria-hidden="true"></i>Nueva Página</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==11) {echo "active"; } ?>" href="<?php echo base_url().'admin/pages/'?>"><i class="app-menu__icon fa fa-list" aria-hidden="true"></i> Todas </span> </a></li>
      </ul>
    </li>
    <li class="treeview <?php if($active_menu==12 || $active_menu==13 || $active_menu==14) {echo "is-expanded"; } ?>"> <a href="#" class="app-menu__item" data-toggle="treeview"><i class="app-menu__icon  fa fa-pencil-square-o" aria-hidden="true"></i><span class="app-menu__label">Posts</span> <i class="treeview-indicator fa fa-angle-right"></i></a>
      <ul class="treeview-menu">
        <li><a class="treeview-item <?php if($active_menu==12) {echo "active"; } ?>" href="<?php echo base_url().'admin/posts_add/'?>"><i class="app-menu__icon fa fa-plus" aria-hidden="true"></i>Nuevo Post</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==13) {echo "active"; } ?>" href="<?php echo base_url().'admin/posts/'?>"><i class="app-menu__icon fa fa-list" aria-hidden="true"></i> Todos </span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==14) {echo "active"; } ?>" href="<?php echo base_url().'admin/post_category/'?>"><i class="app-menu__icon fa fa-tags" aria-hidden="true"></i> Categoría </span> </a></li>
      </ul>
    </li>

    <li>
        <a class="app-menu__item <?php if($active_menu==25) {echo "active"; } ?>" href="<?php echo base_url().'admin/manage_star'?>">
            <i class="app-menu__icon fa fa-users"></i>
            <span class="app-menu__label">Actor / Director..</span>
        </a>
    </li>
    <li>
        <a class="app-menu__item <?php if($active_menu==15) {echo "active"; } ?>" href="<?php echo base_url().'admin/manage_user'?>">
            <i class="app-menu__icon fa fa-user"></i>
            <span class="app-menu__label">Usuario</span>
        </a>
    </li>
    <li class="treeview <?php if($active_menu==16 || $active_menu==17 || $active_menu==18 || $active_menu==19 || $active_menu==20 || $active_menu==21 || $active_menu==22 || $active_menu==24 || $active_menu==34 || $active_menu==35 || $active_menu==78 || $active_menu==160) {echo "is-expanded"; } ?>">
        <a href="#" class="app-menu__item" data-toggle="treeview">
            <i class="app-menu__icon fa fa-gears" aria-hidden="true"></i>
            <span class="app-menu__label">Sistema</span>
            <i class="treeview-indicator fa fa-angle-right"></i>
        </a>
      <ul class="treeview-menu">
        <li><a class="treeview-item <?php if($active_menu==160) {echo "active"; } ?>" href="<?php echo base_url().'admin/system_setting/'?>"><i class="app-menu__icon fa fa-gear" aria-hidden="true"></i>Ajustes</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==16) {echo "active"; } ?>" href="<?php echo base_url().'admin/theme_options/'?>"><i class="app-menu__icon fa fa-gear" aria-hidden="true"></i>Opciones Theme</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==17) {echo "active"; } ?>" href="<?php echo base_url().'admin/email_setting/'?>"><i class="app-menu__icon fa fa-envelope" aria-hidden="true"></i>Ajustes Email</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==18) {echo "active"; } ?>" href="<?php echo base_url().'admin/logo_setting/'?>"><i class="app-menu__icon fa fa-picture-o" aria-hidden="true"></i> Logo &amp; Favicon</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==19) {echo "active"; } ?>" href="<?php echo base_url().'admin/footer_setting/'?>"><i class="app-menu__icon fa fa-list-alt" aria-hidden="true"></i> Footer </span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==20) {echo "active"; } ?>" href="<?php echo base_url().'admin/seo_setting/'?>"><i class="app-menu__icon fa fa-facebook" aria-hidden="true"></i> Seo &am; Social </span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==21) {echo "active"; } ?>" href="<?php echo base_url().'admin/ad_setting/'?>"><i class="app-menu__icon fa fa-dollar" aria-hidden="true"></i> Ads </span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==22) {echo "active"; } ?>" href="<?php echo base_url().'admin/social_login_setting/'?>"><i class="app-menu__icon fa fa-dollar" aria-hidden="true"></i> Social Login </span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==24) {echo "active"; } ?>" href="<?php echo base_url().'admin/video_quality/'?>"><i class="app-menu__icon fa fa-signal" aria-hidden="true"></i> Calidad Video </span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==34) {echo "active"; } ?>" href="<?php echo base_url().'admin/player_setting/'?>"><i class="app-menu__icon fa fa-gear" aria-hidden="true"></i>Reproductor</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==35) {echo "active"; } ?>" href="<?php echo base_url().'admin/copyright_privacy/'?>"><i class="app-menu__icon fa fa-copyright" aria-hidden="true"></i>privacidad</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==78) {echo "active"; } ?>" href="<?php echo base_url().'admin/cron_setting/'?>"><i class="app-menu__icon fa fa-clock-o" aria-hidden="true"></i>Ajustes Cron</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==161) {echo "active"; } ?>" href="<?php echo base_url().'admin/update/'?>"><i class="app-menu__icon fa fa-upload" aria-hidden="true"></i>Actualizar</span> </a></li>

      </ul>
      <li class="treeview <?php if($active_menu == 36 || $active_menu == 37) {echo "is-expanded"; } ?>">
          <a href="#" class="app-menu__item" data-toggle="treeview"><i class="app-menu__icon fa fa-bell" aria-hidden="true"></i>
          <span class="app-menu__label">Notificaciones</span>
          <i class="treeview-indicator fa fa-angle-right"></i>
      </a>
        <ul class="treeview-menu">
          <li>
              <a class="treeview-item <?php if($active_menu==37) {echo "active"; } ?>" href="<?php echo base_url().'admin/send_push_notification/'?>"><i class="app-menu__icon fa fa-paper-plane-o" aria-hidden="true"></i>Enviar Notificación</span>
              </a>
          </li>
        </ul>
      </li>
    </li>
    <li><a class="app-menu__item <?php if($active_menu==23) {echo "active"; } ?>" href="<?php echo base_url().'admin/backup_restore'?>"><i class="app-menu__icon fa fa-database"></i><span class="app-menu__label">Respaldo</span></a></li>
  </ul>
</aside>
