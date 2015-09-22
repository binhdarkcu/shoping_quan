<?php
    //session_start();
    //echo session_id();
    function 	payment_form($name, $phone, $email, $address, $product){
                include_once	'xtemplate.class.php';
                $header   	= 'Content-type: text/html; charset=utf-8\r\n';				
                $title 		= 'Xác nhận mua hàng';
                $contact_email = $email;
                $contact_name = $name;
				//echo $contact_email;
                $date = date('d-m-Y');
                $parseTemplate	=	new XTemplate('xtemplate.payment.html');
                $parseTemplate->assign('name',$name);
                $parseTemplate->assign('phone',$date); 
                $parseTemplate->assign('date',$date);             
                $parseTemplate->assign('email',$email);	
                $parseTemplate->assign('address',$date); 
				$parseTemplate->assign('product',$product);	
                $parseTemplate->parse('main');	
                return wp_mail($contact_email, $title, $parseTemplate->text('main'), $title);
            }
