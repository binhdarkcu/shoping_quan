<?php
    /*update_option('siteurl','http://georgia-bc.be');
    update_option('home','http://georgia-bc.be');*/
    function ses_init() {
      if (!session_id())
	      session_start();
	}
	add_action('init','ses_init');
   
    //add theme support
    add_theme_support('post-thumbnails',array('post','page','slider','advertises','three_product_home','hot_news'));
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
	include TEMPLATEPATH . '/email/smtp.php';
	include TEMPLATEPATH . '/email/xtemplate.payment.php';
	//include TEMPLATEPATH . '/email/xtemplate.forgotpassword.php';
	
	include 'orders/page_orders.php';
	//contact form

	add_filter( 'posts_where', 'title_like_posts_where', 10, 2 );
	function title_like_posts_where( $where, &$wp_query ) {
	    global $wpdb;
	    if ( $post_title_like = $wp_query->get( 'post_title_like' ) ) {
	        $where .= ' AND ' . $wpdb->posts . '.post_title LIKE \'' . esc_sql( like_escape( $post_title_like ) ) . '%\'';
	    }
	    return $where;
	}
	//include TEMPLATEPATH . '/email/xtemplate.jimform.php';
	// Setup Admin Thumbnail Size
	function custom_list_categories( $args = '' ) {
	  $defaults = array(
	    'taxonomy' => 'category',
	    'show_option_none' => '',
	    'echo' => 1,
	    'depth' => 2,
	    'wrap_class' => '',
	    'level_class' => '',
	    'parent_title_format' => '%s',
	    'current_class' => 'current'
	  );
	  $r = wp_parse_args( $args, $defaults );
	  if ( ! isset( $r['wrap_class'] ) ) $r['wrap_class'] = ( 'category' == $r['taxonomy'] ) ? 'categories' : $r['taxonomy'];
	  extract( $r );
	  if ( ! taxonomy_exists($taxonomy) ) return false;
	  $categories = get_categories( $r );
	  $output = "<ul class='" . esc_attr( $wrap_class ) . "'>" . PHP_EOL;
	  if ( empty( $categories ) ) {
	    if ( ! empty( $show_option_none ) ) $output .= "<li>" . $show_option_none . "</li>" . PHP_EOL;
	  } else {
	    if ( is_category() || is_tax() || is_tag() ) {
	      $current_term_object = get_queried_object();
	      if ( $r['taxonomy'] == $current_term_object->taxonomy ) $r['current_category'] = get_queried_object_id();
	    }
	    $depth = $r['depth'];
	    $walker = new My_Category_Walker;
	    $output .= $walker->walk($categories, $depth, $r);
	  }
	  $output .= "</ul>" . PHP_EOL;
	  if ( $echo ) echo $output; else return $output;
	}
	//register menu
	function register_menu() {
	  register_nav_menu('menu_top',__( 'menu_top' ));
	  
		register_nav_menus( array(
			'menu_top' => 'Header - Menu'
		) );
	}
	add_action( 'init', 'register_menu' );
	
	function get_content_by_id($id){
		$content_post = get_post($id);
		$content = $content_post->post_content;
		$content = apply_filters('the_content', $content);
		$content = str_replace(']]>', ']]&gt;', $content);
		return $content;
	}
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