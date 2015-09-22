<?php

	function revcon_change_post_label() {
	    global $menu;
	    global $submenu;
	    $menu[5][0] = 'Sản phẩm';
	    $submenu['edit.php'][5][0] = 'View All';
	    $submenu['edit.php'][10][0] = 'Add New';
	    $submenu['edit.php'][16][0] = 'Tags';
	    echo '';
	}
	function revcon_change_post_object() {
	    global $wp_post_types;
	    $labels = &$wp_post_types['post']->labels;
	    $labels->name = 'Sản phẩm';
	    $labels->singular_name = 'Products';
	    $labels->add_new = 'Thêm sản phẩm';
	    $labels->add_new_item = 'Thêm sản phẩm';
	    $labels->edit_item = 'Sửa sản phẩm';
	    $labels->new_item = 'Sản phẩm';
	    $labels->view_item = 'Xem sản phẩm';
	    $labels->search_items = 'Tìm kiếm sản phẩm';
	    $labels->not_found = 'No News found';
	    $labels->not_found_in_trash = 'No News found in Trash';
	    $labels->all_items = 'Tất cả sản phẩm';
	    $labels->menu_name = 'Sản phẩm';
	    $labels->name_admin_bar = 'Sản phẩm';
	}
	 
	add_action( 'admin_menu', 'revcon_change_post_label' );
	add_action( 'init', 'revcon_change_post_object' );