<?php
/*
Template Name: Shopping Cart Template
Author: Unknow
 */
?>
<form method="post" action="" style="float:left;">
	<table border="1" align="left" cellspacing="0" cellpadding="0" width="600px">
		  <tr style="border: 1px;">
		    <td>Stt</td>
		    <td>Tên SP</td>
		    <td>Đơn giá</td>
		    <td>Giảm giá (%)</td>
		    <td>Số lượng</td>
		    <td>Thành tiền</td>
		  </tr>
<?php 
$cart = $_SESSION['cart'];
//print_r($cart);
$stt=0;
$total = 0; $i= 0;
if($cart){
foreach ($cart as $key=>$value){
	//global $post;
	$stt = $stt + 1;
	$price = get_post_meta($key, 'price',true);
	$discount = get_post_meta($key, 'discount',true);
	if(!$discount){
		$discount = 0;
	}
	$name = get_the_title($key);
	$quanlity = $value;
	$subtotalPrice = $quanlity * $price *( 1- $discount/100);
	$total += $subtotalPrice;
	if(isset($key)){
		$check = true;
	}//Check cart to have any item
	if($check == true){
	?>
	
		  <tr>
		  
		    <td><?php _e($stt); ?></td>
		    <td><?php _e($name);?></td>
		    <td><?php _e($price); ?></td>
		    <td><?php _e($discount); ?></td>
		    <td><input type="text" name="quanlity[<?php _e($key);?>]" value="<?php _e($value); ?>"/></td>
		    <td><?php _e($subtotalPrice);  ?></td>
		    <td><a href="<?php bloginfo('url');?>/cart?act=del&id=<?php _e($key);?>">Delete</a></td>
		    <td><input type="hidden" name="id" value ="<?php _e($key);?>"/></td>
		  </tr>
	<?php }
	else{
		_e("<tr>");
		_e("<td colspan = '6'>");
		_e("Ban chua chon san pham nao");
		_e("</td>");
		_e("</tr>");
		break;
	} 
}// END Foreach
}//END If
?>
		<tr>
			<td colspan='5'>
			Tổng tiền
			</td>
			<td>
			<?php 
			_e($total);
			?>
			</td>
		</tr>
		<tr>
			<td colspan= '6'>
			<input type="submit" name="update" value ="Update"/>
			<?php wp_nonce_field('submit', 'updatecart');//send request?>  
			</td>
		</tr>
	</table>
</form>
<div class="clear:left;"></div>
<table>
	<tr><?php if(is_user_logged_in()){?>
		<td>
			<form action="" method="POST" name="checkout">
				<input type="hidden" name="act" value="checkout" />
				<input type="submit" name="submit" value="Check Out"/>
			</form>				
		</td>
		<td>
								
			<?php 
			/**
			 * Send Info to Paypal to checkout
			 */
			
			$title = "Successful Business";
			$mailorders = "spirit_1315384047_biz@gmail.com";
			$shipping = "2";
			$i=0;
			?>
			<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
				<input type="hidden" name="cmd" value="_cart">
				<input type="hidden" name="upload" value="1">
				<input type="hidden" name="business" value="<?php echo $mailorders?>">								
				<?php 
					foreach ($cart as $key=>$value){
						$i++;
						$price = get_post_meta($key, 'price',true);
						$discount = get_post_meta($key, 'discount',true);
						if(!$discount){
							$discount = 0;
						}
						$name = get_the_title($key);
						$quanlity = $value;
						$subtotalPrice = $quanlity * $price *( 1- $discount/100);
				?>
				<input type="hidden" name="item_name_<?php echo $i; ?>" value="<?php _e($name); ?>">
				<input type="hidden" name="item_number_<?php echo $i; ?>" value="<?php _e($key); ?>">
				<input type="hidden" name="amount_<?php echo $i; ?>" value="<?php echo $subtotalPrice; ?>">
				<?php }	?>
				<input type="hidden" name="currency_code" value="USD">
				<input type="hidden" name="lc" value="US">
				<input type="hidden" name="rm" value="2">
				<input type="hidden" name="shipping_1" value="<?php echo $shipping; ?>">
				<input type="hidden" name="return" value="<?php bloginfo('url');?>/paypal?result=success">									
				<input type="hidden" name="notify_url" value="<?php bloginfo("url");?>/paypal">
				<input  type="submit" name="pay now" value="Check Out with Paypal" />
			</form>
		</td>
		<?php }
			else{
			_e('You must login to check out');
			}?>
	</tr>
</table>



<div class="clear:left;"></div>

<div style="float: left;">
<a href="<?php bloginfo('url');?>/cart?act=reset">Chọn Lại</a>
<a href="<?php bloginfo('url');?>">let Shopping</a >

<?php
		if(!is_user_logged_in()){
			$args = array(
			'redirect' => get_bloginfo('url'),
	        'echo' => true,
	        'form_id' => 'loginform',
	        'label_username' => __( 'Username' ),
	        'label_password' => __( 'Password' ),
	        'label_remember' => __( 'Remember Me' ),
	        'label_log_in' => __( 'Log Me In' ),
	        'id_username' => 'user_login',
	        'id_password' => 'user_pass',
	        'id_remember' => 'rememberme',
	        'id_submit' => 'wp-submit',
	        'remember' => true,
			);
				
			wp_login_form($args);
		}
		else{?>
			<?php
			global $current_user;
			if($current_user -> display_name){ ?>
			<p>Welcome, <?php echo $current_user -> display_name;?></p>
			<a href="<?php echo wp_logout_url(home_url()); ?>" title="Logout">Logout</a>
			<?php }?>
			
		<?php } ?>
</div>