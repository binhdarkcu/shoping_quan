<?php get_header();?>
<?php
	$produdct_Arr = array();
	$product_id = !empty($_GET['product_id']) ? $_GET['product_id']:"";
	$product_price = get_field('product_price', $product_id);
	//$amount_select = !empty($_GET['amount_select']) ? $_GET['amount_select']:"";
	
	$price = number_format( $product_price, 0, ',', '.');
	$cart = get_cart_in_session();

?>
<?php
	if(wp_verify_nonce($_POST['action_contact'], 'contact'))
	{	
		global $wpdb;
		$errors=array();
		$cart_tt=get_cart_in_session();
		$ten=$_POST['fullname'];
		$dienthoai=$_POST['phone'];
		$diachi=$_POST['address'];
		$email=$_POST['khachemail'];
		$chitiet=$_POST['message'];
		$order=$wpdb->prefix.'order';
		$userID=$current_user->ID;	
		if($cart_tt)
		{
			 if(insert_cart_to_db())
			 {
			 	$orderid=get_order_id_with_session();						 	
			 	gui_noi_dung_don_hang_admin($ten, $dienthoai, $diachi, $email, $chitiet, $orderid);
			 	gui_noi_dung_don_hang_khach($ten, $dienthoai, $diachi, $email, $chitiet, $orderid);
			 	$wpdb->get_results( "UPDATE {$order} SET email='{$email}' WHERE ID='{$orderid}'");
			 	 //session_regenerate_id();
				 session_unset();
				 //echo '<script>alert("Đặt hàng thành công. Vui lòng kiểm tra email !");</script>';
				 ?>
				  <script type="text/javascript">
                    	function AAA()
						{
							location.href="<?php bloginfo('url');?>/success"
						}
                    	setTimeout("AAA()",1)                    	
 					</script>
				 <?php 
				 exit();					
			 }
			 else{
			 	echo '<script>alert("Hiện tại không thể lưu !");</script>';
			 }
		}
	}
?>
<div class="main-container col1-layout" style="margin-top: 30px;">
    <div class="main">
    	<div class="container">
            <div class="row">
                <div class="col-main col-xs-12 col-sm-12 col-md-12">
                    <div class="cart">
					    <div class="page-title title-buttons">
					        <h1>Thanh toán</h1>
		            	</div>
        			<form action="" method="post" id="payment_form">
        					<div>
            					<fieldset>
                					<table id="shopping-cart-table" class="data-table cart-table">
                                        <thead>
						                    <tr class="top">
								              <td class="sp" width="5%">STT</td>
								              <td class="sp" width="30%">Sản Phẩm</td>
								              <td class="dg" width="20%">Đơn giá &nbsp;&nbsp;&nbsp;(1.000 VNĐ)</td>
								              <td class="sl" width="10%">Số lượng</td>
								              <td class="tt" width="20%">Thành tiền (1.000 VNĐ)</td>
								              <td class="xoa" width="5%">Xóa</td>
								            </tr>
                                        </thead>
                                        <?php
                                        	if($cart){
                                        		$order_details=$cart['order_details'];
										    	$total = get_total($order_details);
										    	$i=0;
										     	foreach ($order_details as $key=>$cart_item){
										     		$i++;
										     		$productID = $cart_item['productID']; 
										     		$bigImg = wp_get_attachment_url( get_post_thumbnail_id($productID) );
										     		$callcheckbox = get_field('call_checkbox',$productID);
										     		if(!empty($callcheckbox)) {
														$price_product = 'Call';
													}else{
														$price_product = number_format($cart_item['price'],0);;
													}
                                        ?>
                    					<tbody>
                                            <tr id="productID-<?php echo $productID ;?>" >
								              <td><?php echo $i;?></td>
								              <td class="sp"><a href="<?php echo get_permalink($productID);?>"><?php echo get_the_title($productID);?></a></td>
								              <td class="dg"><?php echo $price_product;?><b>&nbsp;</b></td>
								              <td class="sl quanlity-<?php echo $productID; ?>"><input type="text" name="quanlity-<?php echo $productID;?>" id="tt-<?php echo $productID;?>" value="<?php _e($cart_item['quanlity']); ?>"  class="quanlity" /></td>
								              <td class="tt subtotal-<?php echo $productID;?>"><span><?php _e(number_format($cart_item['subtotal'],0));?></span><b>&nbsp;</b></td>
								              <td class="removeItemProduct"><a href="javascript:void(0)" data-productID="<?php _e($productID);?>"><img alt="" src="images/x.jpg"  /></a>
								              <input type="hidden" id="productID" value ="<?php _e($productID);?>"/>
								              
								              </td>
								            </tr>
                                        </tbody>
                                        <?php } }?>
                                        
                    				<tfoot>

					                    <tr class="first last">
					                        <td colspan="50" class="a-right last">
					                            <h3>Tổng tiền:<span class="totalmoney"><?php _e(number_format($total,0)); ?></span><b>&nbsp;VNĐ</b></span></h3>
					                        </td>
					                    </tr>
					                    <tr class="first last">
					                        <td colspan="50" class="a-right last">
					                            <a href="<?php echo bloginfo('home')?>/san-pham"><button type="button" title="Hủy bỏ" class="button btn-continue"><span><span>Tiếp tục mua hàng</span></span></button></a>
					                           
					                        </td>
					                    </tr>
					                    </tfoot>
					                </table>
					                <script type="text/javascript">decorateTable('shopping-cart-table')</script>
					            </fieldset>
        					</div>
        				
					    <div class="cart-collaterals">
					        <div class="row">
					            <div class="col-xs-12 col-sm-12 col-md-8">
                                <div class="shipping">
								    <h2>Thông tin thanh toán</h2>
								    <div class="shipping-form">
								    	<form action="" method="post" name="form_contact_us" id="form_contact_us">
        									<p>Vui lòng nhập thông tin quý khách để thực hiện mua sản phẩm</p>
						                	<p>
						                    	<label>Tên của bạn<b class="text_red">*</b> : </label>
						                        <input type="text" name="fullname" value="<?php echo $_POST['fullname'];?>" />
						                    </p>
						                    <p>
						                    	<label>Điện thoại<b class="text_red">*</b> :</label>
						                        <input type="text" name="phone" value="<?php echo $_POST['phone'];?>"/>
						                    </p>
						                    <p>
						                    	<label>Email<b class="text_red">*</b> :</label>
						                        <input type="text"  name="khachemail" value=""/>
						                    </p>
						                    <p>
						                    	<label>Địa chỉ<b class="text_red">*</b> :</label>
						                        <input type="text" name="address" value="<?php echo $_POST['address'];?>"/>
						                    </p>
						                    <p>
						                    	<label>Nội dung<b class="text_red">*</b> :</label>
						                        <textarea cols="" rows="" name="message"><?php echo $_POST['message'];?></textarea>                        
						                    </p>
						                    
						                     <?php wp_nonce_field('contact', 'action_contact'); ?>
						                </form>
									</div>
								</div>
            				</div>
				            <div class="col-xs-12 col-sm-12 col-md-4">
				                <div class="cart-totals">
				                    <h2>Tóm tắt</h2>
				                    <div class="totals">
				                        <table id="shopping-cart-totals-table">
									        <colgroup>
									        	<col><col width="1">
									        </colgroup>
									        
									        <tfoot>
									            <tr>
												    <td style="width: 35%" class="a-right" colspan="1">
												    	Tổng tiền
												    </td>
												    <td style="" class="a-right">
												    	<input type="hidden" value="" name="total_price_input"/>
												        <strong><span class="price" id="total_price_after"><?php _e(number_format($total,0)); ?> VNĐ</span>   </strong> 
												   	</td>
												</tr>
									        </tfoot>
									       
									    </table>
				                    </div>
				                </div>
                                <div class="totals">
                        <ul class="checkout-types">
                        		<button type="submit" title="Thanh toán" class="button btn-proceed-checkout btn-checkout"><span><span>Thanh Toán</span></span></button>
							</li>
                        </ul>
                    </div>
                </div>
            </form>
            <div class="col-xs-12 col-sm-12 col-md-4"></div>
        </div>
    </div>
</div>
</div>
                    </div>
                </div>
            </div>
        </div>
<?php get_footer();?>

<!-- update -->
<script type="text/javascript">
  jQuery(document).ready(function(){
	           
	         jQuery(function(){

	        	 jQuery('.sl .quanlity').bind('keypress', function(e) {		        	
	        		 var  keycode = (e.keyCode ? e.keyCode : e.which);
	        		 if(keycode<48 || keycode>57  ){
		        		 if(!(keycode == 9  ||keycode == 8  || keycode ==46 || keycode ==37|| keycode ==38|| keycode ==39|| keycode ==40)){	
			        	 	return false;	 
		        		 }
		        	}
	        		
	        		 
		        });
	        	 
    			 jQuery('.sl .quanlity').live('keyup',function(){

    				    
    						$quanlity=jQuery(this).val();
    						if($quanlity==0)
    						{
    							$quanlity=1;
    						}    						
    						$ID=jQuery(this).attr('id').replace('tt-',' ');
    						$productID= jQuery.trim($ID);
    						//alert($quanlity);
    						//alert($productID);
								jQuery.ajax
		    					({
		    						url:'<?php bloginfo("url");?>/wp-admin/admin-ajax.php',
		    			   			 type:'POST',
		    			    		data:'action=my_price_special_action&productID='+$productID+'&quanlity='+ $quanlity,
		    		       		 	success:function(results)
		    		      			  {    
                                         if(isNaN(results)==false)
                                         {
                                        	 alert('Số lượng bạn đặt mua lớn hơn số lượng trong kho. Chúng tôi chỉ còn '+results+' sản phẩm');
                                         }
                                         else
                                         {
	    		      			          $kq=results.split('-');
	    		      			          $tt='<span>'+	$kq[0]+'</span>';    		      			          
		    			    		      jQuery('.subtotal-'+$productID).html($tt);
		    			    		      $st='<span>'+	$kq[1]+'</span><b>&nbsp;</b>'
									      jQuery('.totalmoney').html($st);
                                         }     
											
		    			   			 }                            
		    					});
								
				    	});
            		 
			    	});

  });
  </script>
<!-- delete -->
<script type="text/javascript">

  jQuery(document).ready(function(){
	          
	         jQuery(function(){
	        
    			 jQuery('.removeItemProduct').live('click',function(){
                            
    				 		$productID=jQuery(this).find('a').attr('data-productid');   		 	
   	   	   				 	jQuery('#productID-'+$productID).remove();
   	   				 		 
								jQuery.ajax
		    					({
		    						url:'<?php bloginfo("url");?>/wp-admin/admin-ajax.php',
		    			   			 type:'POST',
		    			    		data:'action=my_delete_special_action&productID='+$productID,
		    		       		 	success:function(results)
		    		      			  {    
                                         
	    		      			          // alert(results);
		    			    		      $rs=results;
		    			    		     // alert($rs);
		    			    		      
		    			    		      if($rs==0)
		    			    		      {
                                                jQuery('#cart').remove(); 
                                                jQuery('#product_count').text(0);
                                                
                                                jQuery('table').remove(); 
                                                jQuery('.capnhat').remove(); 
                                                jQuery('.tieptheo').remove(); 
                                                jQuery('#sotien').remove(); 
                                                
                                               
			    			    		   }
		    			    		      else
		    			    		      {
		    			    		    	 		
		    			    		    	  $rs = results.split('-');
		    			    		    	 
											  jQuery('.sotien').html($rs[0] + '<b class="vnd"> VNĐ </b>');
											  jQuery('#sotien').html($rs[0]); 
											  jQuery("#product_count").text($rs[1]);
											  jQuery('#productID-' + $productID).remove(); 
											  
			    			    		   }		    			    		  
		    			    		     
											
		    			   			 }                            
		    					});

                           return false;
								
				    	});
            		 
			    	});

  });


  </script>