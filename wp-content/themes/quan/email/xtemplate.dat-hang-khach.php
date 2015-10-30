<?php
 
    function gui_noi_dung_don_hang_khach($ten, $dienthoai, $diachi, $email, $chitiet, $orderid){
			
    		  include_once	'xtemplate.class.php';
                $header   	= 'Content-type: text/html; charset=utf-8\r\n';				
                $title 		= get_bloginfo('name');
                $url		= get_bloginfo('url').'/chi-tiet-hoa-don/?orderID='.encrypt($orderid);
                $date = date('d-m-Y');
                $contact_email = get_option('contactemail');
                $contact_name = get_bloginfo('name');  
                $parseTemplate	=	new XTemplate('xtemplate.dat-hang-khach.html');
                $parseTemplate->assign('fullname',$ten);
                $parseTemplate->assign('link', get_bloginfo('home'));
                $parseTemplate->assign('website', get_bloginfo('name')); 
                $parseTemplate->assign('date',$date);
                $parseTemplate->assign('url', $url);	             
                $parseTemplate->assign('contact_email',$contact_email);  
                $parseTemplate->assign('contact_name',$contact_name);                  					
                $parseTemplate->parse('main');
                $mail=wp_mail($email, $title, $parseTemplate->text('main'), $title);             
    	
            }
