<?php get_header();?>
<?php
	$product_id = !empty($_GET['product_id']) ? $_GET['product_id']:"";
	$product_price = !empty($_GET['product_price']) ? $_GET['product_price']:"";
	//$amount_select = !empty($_GET['amount_select']) ? $_GET['amount_select']:"";
	$bigImg = wp_get_attachment_url( get_post_thumbnail_id($product_id) );
	$price = number_format( $product_price, 0, ',', '.');
	$_SESSION['product'][$product_id] = array('price' => $product_price, 'amount' => $amount_select);
	//print_r($_SESSION['product'][$product_id]);
?>
<?php
	if (isset( $_POST['paymnent'] ) && wp_verify_nonce($_POST['paymnent'], 'act_payment') ){
		global $wpdb;
		$data['id_product'] = $product_id;
		$data['price'] = $_SESSION['product'][$product_id]['price'];
        //$data['amount'] = $_SESSION['product'][$product_id]['amount'];
        $data['customer_name'] = $_POST['fullname'];
        $data['customer_phone'] = $_POST['phonenumber'];
        $data['customer_email'] = $_POST['youremail'];
        $data['customer_address'] = $_POST['address'];
        $data['customer_comment'] = $_POST['yournote'];
        $data['price_total'] = $_POST['total_price_input'];
        $data['buy_date'] = date('Y-m-d');
	    $data['delivery_date'] = date('Y-m-d');
	    $data['order_status'] = 0;
	        
        if (!empty($data['id_product'])) {
			$results = $wpdb->insert('wp_orders', $data);
			 if($results){
			 	$product_name = 'Tên sản phẩm: '.get_the_title($data['id_product']).' -Số lượng'.$data['amount'];
				//payment_form($data['customer_name'], $data['customer_phone'],$data['customer_email'],$data['customer_address'],  );
	            $link = get_site_url().'/success';
	            echo "<script>setTimeout(function(){window.location.href = '$link';},1);</script>";
	        }
	        else{
	        	
	            $message = "Register failed";
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
						                    <tr class="first last">
						                        <th rowspan="1">&nbsp;</th>
						                        <th class="a-left" rowspan="1"><span class="nobr">Tên sản phẩm</span></th>
						                        <th rowspan="1" class="a-center">Mêu tả</th>
						                        <th class="a-center" colspan="1"><span class="nobr">Giá tiền</span></th>
						                        
						                        
						                        <th class="a-center" colspan="1">Tổng giá tiền</th>
						                    </tr>
                                        </thead>
                    					<tbody>
                                            <tr class="first last odd">
											    <td>
											    	<a href="<?php echo get_the_permalink($product_id);?>" title="<?php echo get_the_title($product_id);?>" class="product-image">
											    		<img src="<?php echo $bigImg;?>" width="75" height="75" alt="<?php echo get_the_title($product_id);?>">
											    	</a>
											    </td>
											    <td class="a-left">
											        <h3 class="product-name">
									                    <a href="<?php echo get_the_permalink($product_id);?>"><?php echo get_the_title($product_id);?></a>
									                </h3>
	                                            </td>
	                                            <td style="text-align: left;" width="50%">
	                                            	<?php echo wp_trim_words(get_content_by_id($product_id), 50);?>	
	                                            </td>
											    <td class="a-center">
											        <span class="cart-price">
											       	<input type="hidden" name="product_price" value="<?php echo $product_price;?>">
											        <span class="price"><?php echo $price;?> VNĐ</span>                
											            </span>
												</td>
												<!--td><a href="javascript:void(0)" id="edit_amount">Cập nhật</a></td>
											        <!-- inclusive price starts here -->
											    <!--td class="a-center">
											        <input id="product_amount_label" name="product_amount" value="<?php echo $amount_select;?>" size="4" title="Qty" class="input-text qty" maxlength="12">
											    </td-->

										    <!--Sub total starts here -->
										        <td class="a-center">
										            <span class="cart-price">
										        		<span class="price" id="total_price"></span>                            
										        	</span>
	            								</td>
											</tr>
                                        </tbody>
                                        <script type="text/javascript">
                                        	jQuery(document).ready(function(){
                                        		function numberWithCommas(x) {
    												return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
												}
                                        		var product_amount = 1;//jQuery('input[name="product_amount"]').val();
                                        		var product_price = jQuery('input[name="product_price"]').val();
                                        		var total_price = numberWithCommas(parseInt(product_price)*parseInt(product_amount));
                                        		jQuery('#total_price, #total_price_after').text(total_price+' VMĐ');
                                        		jQuery('input[name="total_price_input"]').val(parseInt(product_price)*parseInt(product_amount));

                                        		jQuery('#edit_amount').on('click',function(){
                                        			var product_amount = 1;//jQuery('input[name="product_amount"]').val();
	                                        		var product_price = jQuery('input[name="product_price"]').val();
	                                        		var total_price = numberWithCommas(parseInt(product_price)*parseInt(product_amount));
	                                        		jQuery('#total_price, #total_price_after').text(total_price+' VMĐ');
	                                        		jQuery('input[name="total_price_input"]').val(parseInt(product_price)*parseInt(product_amount));
                                        		});

                                        		jQuery('#product_amount_label').on('change',function(){
                                        			if(jQuery(this).val() <=0){
                                        				alert('Số lượng phải lớn hơn 0');
                                        				jQuery(this).val(1);
                                        			}
                                        			var numberRegex = /^[+-]?\d+(\.\d+)?([eE][+-]?\d+)?$/;
                                        			if(!numberRegex.test(jQuery(this).val())) {
                                        				alert('Số lượng phải là số');
                                        				jQuery(this).val(1);
                                        			}
                                        		});
                                        	});
                                        </script>
                    				<tfoot>

					                    <tr class="first last">
					                        <td colspan="50" class="a-right last">
					                            <a href="<?php echo bloginfo('home')?>/san-pham"><button type="button" title="Hủy bỏ" class="button btn-continue"><span><span>Hủy bỏ</span></span></button></a>
					                           
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
								       <form action="http://m2.arexmage.com/arw_dots/checkout/cart/estimatePost/" method="post" id="shipping-zip-form">
								            <p>Vui lòng nhập thông tin quý khách để thực hiện mua sản phẩm</p>
								            <ul class="form-list">
								                <li class="col-xs-12 col-sm-12 col-md-8" style="padding-left: 0;">
								                    <label for="fullname" class="required"><em>*</em>Họ và tên</label>
								                    <div class="input-box">
								                        <input type="text" name="fullname" id="fullname" class="validate-select" title="Họ và tên" value=""/>
								                    </div>
								                </li>
								                <li class="col-xs-12 col-sm-12 col-md-8" style="padding-left: 0;">
								                    <label for="phonenumber">Số điện thoại</label>
								                    <div class="input-box">
								                        <input type="tel" name="phonenumber" id="phonenumber" class="validate-select" title="Số điện thoại" value=""/>
								                    </div>
								                </li>
								                <li class="col-xs-12 col-sm-12 col-md-8" style="padding-left: 0;">
								                    <label for="youremail">Email</label>
								                    <div class="input-box">
								                        <input type="email" name="youremail" id="email" class="validate-select" title="Email" value=""/>
								                    </div>
								                </li>
								                <li>
								                    <label for="youraddress">Địa chỉ giao hàng</label>
								                    <div class="input-box">
								                        <input type="text" name="address" id="youraddress" class="validate-select" title="Địa chỉ giao hàng" value=""/>
								                    </div>
								                </li>
								                <li>
								                    <label for="yournote">Ghi chú</label>
								                    <div class="input-box">
								                        <textarea class="input-text validate-postcode"id="yournote" name="yournote"></textarea>
								                    </div>
								                </li>
								            </ul>
								            
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
												        <strong><span class="price" id="total_price_after"></span>   </strong> 
												   	</td>
												</tr>
									        </tfoot>
									        <tbody>
									            <tr>
												    <td  style="width: 35%" class="a-right" colspan="1">
												        Tên sản phẩm
												    </td>
												    <td style="font-size: 13px;" class="a-right"><?php echo get_the_title($product_id);?>
												    </td>
												</tr>
									        </tbody>
									    </table>
				                    </div>
				                </div>
                                <div class="totals">
                        <ul class="checkout-types">
                        	<li>    
                        		<?php wp_nonce_field('act_payment','paymnent');?>
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