<?php
	_e("<h1>Chi Tiết Hóa Đơn</h1>");
	$ordersDetail = getOrdersDetails($orderID);
	
	$order = getOrders($orderID);
	
  
	foreach ($order as $info){
		$user_info = get_userdata($info->userID);
		$total=get_total_from_db($info->ID);
		$infor_user=explode('-', $info->name);
		
		_e('Hóa đơn lập lúc: '.date('h:i d-m-Y',$info->datetime)."<br/>");
		_e('Khách hàng: <strong>'.$infor_user[0]."</strong><br/>");
		_e('Email: <strong>'.$user_info->user_email."</strong><br/>");
		_e('Điện Thoai: <strong>'.$infor_user[1]."</strong><br/>");
		_e('Địa Chỉ: <strong>'.$infor_user[2]."</strong>");
	}
	$num = 0 ;
	?>
	<table id="insured_list" class="tablesorter center"> 
	<thead>
	  <tr class="center">
	    <th> STT </th>
	    <th> Tên Sản phẩm </th>
	    <th style="width: 150px;"> Đơn giá (VND)</th>
	    <th style="width: 100px;"> Giảm giá (%)</th>
	    <th style="width: 150px;"> Số lượng (cái)</th>
	    <th style="width: 150px;"> Thành tiền (VND) </th>
	  </tr>
	  </thead>
	  <tbody>
	  <?php foreach ($ordersDetail as $detail){ 
	  	$num++;
	  	$post_info = get_post($detail->productID);
	  	
	  	?>
	  <tr>
	    <td style="text-align:center;"><?php _e($num);?></td>
	    <td style="text-align:center;"><?php _e($post_info->post_title);?></td>
	    <td style="text-align:center;"><?php _e(number_format(($detail->price),0));?></td>
	    <td style="text-align:center;"><?php _e($detail->discount);?></td>
	    <td style="text-align:center;"><?php _e($detail->quanlity);?></td>
	    <td style="text-align:center;"><?php _e(number_format($detail->subtotal,0));?></td>
	  </tr>
	  <?php }//End foreach ?>
	  <tr style="border:1px solid #666;">
	  	<td style="text-align:center;" colspan="4"><h2>Tổng tiền  : <strong><?php echo number_format($total,0).' (VND)'; ?></strong></h2></td>
	  	
	  </tr>
	  </tbody>
	</table>

<?php 