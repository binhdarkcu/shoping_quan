<?php
    /*update_option('siteurl','http://georgia-bc.be');
    update_option('home','http://georgia-bc.be');*/

   
    //add theme support
    add_theme_support('post-thumbnails',array('post','page','slider'));
	//set_post_thumbnail_size( 360, 182, true ); 
    //register post type
    include TEMPLATEPATH.'/post-type/registry-post-type.php';
	
	//register post type
    //include TEMPLATEPATH.'/taxonomy-custom/taxonomy-custom.php';
	//register meta box
	require_once( 'meta-box/init.php' );

    //change label post
    include 'inc/change_label_post.php';
	
	//change label post
    //include 'inc/page_nav.php';


	//contact form
	//include TEMPLATEPATH . '/email/smtp.php';
	//include TEMPLATEPATH . '/email/xtemplate.contact.php';
	//include TEMPLATEPATH . '/email/xtemplate.forgotpassword.php';
	
	
	//contact form
	//include TEMPLATEPATH . '/email/xtemplate.jimform.php';
	// Setup Admin Thumbnail Size
	
	//register menu
	function register_menu() {
	  register_nav_menu('menu_top',__( 'menu_top' ));
	  
		register_nav_menus( array(
			'menu_top' => 'Header - Menu'
		) );
	}
	add_action( 'init', 'register_menu' );
	
	
	function get_page_id_by_slug($slug){
	    global $wpdb;
	    $id = $wpdb->get_var("SELECT ID FROM $wpdb->posts WHERE post_name = '".$slug."'AND post_type = 'page'");
	    return $id;
	}
	
	function get_post_id_by_slug($slug){
	    global $wpdb;
	    $id = $wpdb->get_var("SELECT ID FROM $wpdb->posts WHERE post_name = '".$slug."'AND post_type = 'post'");
	    return $id;
	}
	
	function get_post_id( $slug, $post_type ) {
		if(!empty($slug)){
		    $query = new WP_Query(
		        array(
		            'name' => $slug,
		            'post_type' => $post_type
		        )
		    );
		
		    $query->the_post();
		
		    return get_the_ID();
		}
	}

    function convertMonths_String($month, $flag){
        $arrayMonths_Long = array('','januari','februari','maart','april','mei','juni','juli','augustus','september','oktober','november','december');
        $arrayMonths_short = array('','jan','feb','maa','apr','mei','jun','jul','aug','sep','okt','nov','dec');
		
        return $flag ? $arrayMonths_Long[$month] : $arrayMonths_short[$month];
    }
	
	

add_action( 'current_screen', 'thisScreen' );

function thisScreen() {
    $currentScreen = get_current_screen();
	if($currentScreen->post_type == 'organisaties'){?>
		<style>
			.types_post.column-types_post, #types_post{
				display: none;
			}
			
		</style>
	<?php }
}

function change_submenu_class($menu) {  
  $menu = preg_replace('/ class="sub-menu"/','/ class="sub-wrapper" /',$menu);  
  return $menu;  
}  
add_filter('wp_nav_menu','change_submenu_class'); 