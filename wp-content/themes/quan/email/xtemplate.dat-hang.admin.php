<?php
 
    function gui_noi_dung_don_hang_admin($ten, $dienthoai, $diachi, $email, $chitiet, $orderid){
			
    		  include_once	'xtemplate.class.php';
                $header   	= 'Content-type: text/html; charset=utf-8\r\n';				
                $title 		= 'Thông tin đơn hàng';
                $url		= get_bloginfo('url').'/chi-tiet-hoa-don/?orderID='.encrypt($orderid);                
                $contact_email = get_option('contactemail');
                $contact_name = get_bloginfo('name');
                $date = date('d-m-Y');
                $parseTemplate	=	new XTemplate('xtemplate.dat-hang.admin.html');
                $parseTemplate->assign('title',$title);
                $parseTemplate->assign('link', get_bloginfo('home'));
                $parseTemplate->assign('contact_name',$contact_name);
                $parseTemplate->assign('date',$date);
                $parseTemplate->assign('fullname',$ten);                
                $parseTemplate->assign('email',$email);	
                $parseTemplate->assign('phone',$dienthoai);
                $parseTemplate->assign('add',$diachi);
                $parseTemplate->assign('chitiet', $chitiet);
                $parseTemplate->assign('url', $url);
                $parseTemplate->assign('so', $orderid);	
                $parseTemplate->parse('main');	
                $mail=wp_mail($contact_email, $title, $parseTemplate->text('main'), $title);
    	
            }
