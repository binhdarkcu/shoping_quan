<?php

	function revcon_change_post_label() {
	    global $menu;
	    global $submenu;
	    $menu[5][0] = 'Products';
	    $submenu['edit.php'][5][0] = 'View All';
	    $submenu['edit.php'][10][0] = 'Add New';
	    $submenu['edit.php'][16][0] = 'Tags';
	    echo '';
	}
	function revcon_change_post_object() {
	    global $wp_post_types;
	    $labels = &$wp_post_types['post']->labels;
	    $labels->name = 'Products';
	    $labels->singular_name = 'Products';
	    $labels->add_new = 'Add Product';
	    $labels->add_new_item = 'Add Product';
	    $labels->edit_item = 'Edit Product';
	    $labels->new_item = 'Products';
	    $labels->view_item = 'View Product';
	    $labels->search_items = 'Search Product';
	    $labels->not_found = 'No News found';
	    $labels->not_found_in_trash = 'No News found in Trash';
	    $labels->all_items = 'All Product';
	    $labels->menu_name = 'Products';
	    $labels->name_admin_bar = 'Products';
	}
	 
	add_action( 'admin_menu', 'revcon_change_post_label' );
	add_action( 'init', 'revcon_change_post_object' );