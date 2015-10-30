<?php


add_action('wp_ajax_my_price_special_action', 'ajax_modify_quanlity');
add_action('wp_ajax_nopriv_my_price_special_action', 'ajax_modify_quanlity');
	
 function ajax_modify_quanlity() {
	 if(isset($_POST['productID']))   
	{	      
      $quanlity=$_POST['quanlity'];
      $productID=$_POST['productID'];
      //$sl = get_post_meta($productID, 'so_luong', true);
      $cart = get_cart_in_session();
      if(!$cart){
      	echo 'Thời gian mua giữ giỏ hàng đã hết hoặc cookie đã xóa, vui lòng chọn lại sản phẩm!';
      }
      else 
      {
      	  
      		$result=update_cart($cart, $productID, $quanlity);
  			 if($result)
   			{
   			  
      	  	  echo number_format($result['subtotal'],0).'-'.number_format($result['total'],0) ;
      	  	  ///
       	    }
	    
	     die();
           
		 }	 
}
 }
//add cart from the user clicking	
add_action('wp_ajax_my_cart_special_action', 'ajax_add_cart');
add_action('wp_ajax_nopriv_my_cart_special_action', 'ajax_add_cart');
 function ajax_add_cart() {
 	 $productID 		= 0; 	 
 	 $price				= 0;
 	 $discount			= 0;
 	 $cart_item 		= get_cart_item_array();	 	
	 if(isset($_POST['productID']))   
	 {	
	 	$productID	=$_POST['productID'];
	 	//$soluong=get_post_meta($productID, 'so_luong', true);
	 	
	 	$number		=1;	 
	 	//$time		= get_post_meta($productID, 'thoi_gian_khuyen_mai', true);	 	
	 	$now 		= date('F j, Y');	 	
	 	$price 		= get_field('product_price',$productID);
	 }
	 	
		$cart_item['productID'] 	= $productID;	
		$callcheckbox = get_field('call_checkbox',$productID);
		if(!empty($callcheckbox)){
			$cart_item['price'] = 'Call';
		}else{
			$cart_item['price'] = $price;
		}
		$cart_item['quanlity'] 		= $number;
		$cart_item['discount']  	= $discount;
		$cart_item['subtotal']  	= get_subtotal($cart_item);
		
		if(product_exists($productID)){
			echo 'Sản phẩm này đã có trong giỏ hàng';			
		}
		else{
			if(!add_cart_to_session($cart_item))
		   {
		      echo 'Không thể bỏ vào giỏ hàng! Vui lòng liên hệ quản trị website: ' . get_option('admin_email') ;
		      
		   }
		   else 
		   {		   	
		   	echo get_count_product();
		   }
		}
		die();
 }
	 	
 
 //delete cart when click
add_action('wp_ajax_my_delete_special_action', 'ajax_delete_product');
add_action('wp_ajax_nopriv_my_delete_special_action', 'ajax_delete_product');
 function ajax_delete_product() {
 	 $productID 		= 0; 	 
	 if(isset($_POST['productID']))   
	 {
	 	$productID	=$_POST['productID'];
	 	$total =delete_cart($productID);
         if($total)
         {
            echo number_format($total,0) . '-' . get_count_product();
            
         }
         else 
         {
         	echo '0';
         }
          die();
	
		}
		
 }
	function get_count_product(){
		$c =0;
		$order_details=get_order_details_in_session();
		if(is_array($order_details))
		{			
			$c = count($order_details);			
		}

		return $c;
	}
 	
 	function delete_cart($productID){
 		$cart = get_cart_in_session();
 		$order = get_order_in_session();
 		$order_details = get_order_details_in_session();
 		foreach ($order_details as $key => $cart_item) {
 			if($cart_item['productID'] ==$productID)
 			{
 				$order_details[$key] = null;
 				$order_details = remove_array_null_or_empty_values($order_details);
 				$order['total'] = get_total($order_details);
 				$cart['order'] = $order;
 				$cart['order_details'] = $order_details;
 				$_SESSION[session_id()] = $cart; 				
				if($_SESSION[session_id()])				
					return $order['total'];
					
				else 
					return false; 				
 			}
 			
 			
 		}
 	}
 
 
  function remove_array_null_or_empty_values($array)
	  {
	    $new_array = array();
	       foreach ($array as $key => $value)
	        {
	            if($value=='' || empty($value))
	            continue; //continue loop without getting value
	            $new_array[$key] = $value;	           
	        }
	       return $new_array;
	  }
	  
 	function update_cart($cart, $productID,$quanlity){
 		 
 		$order = $cart['order'];
 		$order_details = $cart['order_details'];
 		
 		foreach ($order_details as $key => $cart_item) {
 			if($cart_item['productID'] ==$productID ){
 				$cart_item['quanlity'] = $quanlity ;
 				$subtotal			   = get_subtotal($cart_item);
 				$cart_item['subtotal'] = $subtotal;	
 				$order_details[$key]   = $cart_item; 					
 				$total 				   = get_total($order_details);
 				$order['total']		   = $total;
				$cart['order']		   = $order;
				$cart['order_details'] = $order_details;				
				$_SESSION[session_id()] = $cart;
				if($_SESSION[session_id()])
					return array('total'=>$total,'subtotal'=>$subtotal);
				else 
					return false;		
 			}
 		}		
 	}
	function get_subtotal($cat_item=array('ID'=>0,'orderID'=>0,'productID'=>0,'price'=>0,'quanlity'=>1,'discount'=>0,'subtotal'=>0)){
		print_r($cart_item);
		$callcheckbox = get_field('call_checkbox',$productID);
		if(!empty($callcheckbox)) {
			$price = 1;
		}else{
			$price  = get_discount_price($cat_item['price'],$cat_item['discount']/100);
		}
		
		$subtotal = $price * $cat_item['quanlity'];
		return $subtotal;		
	}
	
	function get_cart_array(){
		$order= get_order_array();
		$order_details = get_order_details_array();
		$cart = array('order'=>$order,'order_details'=>$order_details);
		return $cart;		
	}
	
	function get_order_details_array(){
		$order_details = array('cat_item'=>array('ID'=>0,'orderID'=>'','productID'=>0,'price'=>0,'quanlity'=>1,'discount'=>0,'subtotal'=>0));
		return $order_details;
	}
	
	function get_order_array(){
		$userID =1;
		$user=get_current_user_id();
		 if($user)
		 {
		    $userID=$user;
		 }
		 else 
		 {
		    $userID=1;//admin user
		 }
		$time = time()+7*3600;
		$order=array('ID'=>0,'userID'=>$userID,'sessionID'=>session_id(),'total'=>0, 'datetime'=>$time);		
		return  $order;
	}
	
	function get_cart_item_array(){
		$cat_item=array('ID'=>0,'orderID'=>0,'productID'=>0,'price'=>0,'quanlity'=>1,'discount'=>0,'subtotal'=>0);
		return  $cat_item;
	}
	
	function get_discount_price($price,$discount){
		
		$discount_price =  $price *(1-$discount);
		return $discount_price;
	}
	
	
	function cart_exists(){
		$cart =(array) $_SESSION[session_id()];		
		if((is_array($cart) && ($cart['order'] && $cart['order_details']))){
			return $cart;
		}
		return false;
	}
	
	function get_cart_in_session(){		
		$cart = cart_exists() ;
		return $cart;
	}
	function get_order_in_session(){
		$cart = get_cart_in_session();
		$order = $cart['order'];
		return $order;
	}
	
	function get_order_details_in_session(){
		$cart = get_cart_in_session();
		$order_details = $cart['order_details'];
		return $order_details;
	}

	function product_exists($productID=0){
		$temp =(array) $_SESSION[session_id()];
		if(!(is_array($temp) && ($temp['order'] && $temp['order_details']))){
			return false;
		}
		$order_details 	= $temp['order_details'];
		foreach ($order_details as $key => $cart_item) {
			if($cart_item['productID'] ==$productID){
				return true;
			}			
		}
		return  false;
	}
	function add_cart_to_session($cart_item){
		$order_details 	= array();
 	    $order 			= get_order_array(); 	     	    
 	    $cart 			= get_cart_array();
 	 
		$temp =(array) $_SESSION[session_id()];
		
		if(!(is_array($temp) && ($temp['order'] && $temp['order_details']))){
			$order_details[] 	 = $cart_item;
		}
		else{
			$order_details 	= $temp['order_details'];
			$order_details[]= $cart_item;
			$order 			= $temp['order'];
			
		}
		
		$order['total']				= get_total($order_details);
		$cart['order']				= $order;
		$cart['order_details']		= $order_details;
		
		$_SESSION[session_id()] = $cart;
		if($_SESSION[session_id()])
			return true;
		else 
			return false;
		
	}
	
	function get_order_details_with_id( $order_details = array('cat_item'=>array('ID'=>0,'orderID'=>'','productID'=>0,'price'=>0,'quanlity'=>1,'discount'=>0,'subtotal'=>0))){
		$orderdetails = array();
		foreach ($order_details as $key => $cat_item) {			
			$cat_item['orderID']=get_order_id_with_session()->ID;
			$orderdetails[$key]= $cat_item;
		}		
		return $orderdetails;
	}
	
	function get_total($order_details = array(array('ID'=>0,'orderID'=>'','productID'=>0,'price'=>0,'quanlity'=>1,'discount'=>0,'subtotal'=>0))){
		$total = 0;
		foreach ($order_details as $key => $cat_item) {
			$total += $cat_item['subtotal'];
		}
		return $total;
	}