<!--<?php 
add_action('admin_menu','ordersAdminMenu');
/**
 * Create a admin menu name Hoa don
 */
function ordersAdminMenu(){
add_menu_page("Hóa đơn", "Hóa đơn", "administrator", "hoa-don",'ordersCustomPage','','7');
      // add_action('admin_print_scripts-'.$mypage, 'headResource');
}

function headResource(){
wp_enqueue_script('myscript',get_bloginfo('template_url').'/jquery-1.4.2.min.js');
?>
<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery.ui.core.js" ></script>
<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery-ui-1.8.16.custom.js" ></script>
<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery.ui.widget.js" ></script>

<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery.autocomplete.js" ></script>
<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery.ui.datepicker.js" ></script>
<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery.tablesorter.min.js" ></script>
<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery.tablesorter.pager.js" ></script>
<link type="text/css" rel="stylesheet" href="<?php bloginfo('template_url')?>/cart/css/jquery.autocomplete.css"/>
<link type="text/css" rel="stylesheet" href="<?php bloginfo('template_url')?>/cart/css/jquery.ui.all.css"/>
<link type="text/css" rel="stylesheet" href="<?php bloginfo('template_url')?>/cart/css/tablesorter.css"/>


 
Script and stylesheet of paging
 

<?php 
}

?>-->

