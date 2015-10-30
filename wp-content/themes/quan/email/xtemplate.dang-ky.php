<?php
    
    function 	gui_noi_dung_dang_ky($ten, $dienthoai, $email, $cty, $diachi, $tp){
                include_once	'xtemplate.class.php';
                $header   	= 'Content-type: text/html; charset=utf-8\r\n';				
                $title 		= 'Khách lien he';
                $contact_email = get_option('contact_email');
                $contact_name = get_bloginfo('name');
                $date = date('d-m-Y');
                $parseTemplate	=	new XTemplate('xtemplate.dang-ky.html');
                $parseTemplate->assign('title',$title);
                $parseTemplate->assign('link', get_bloginfo('home'));
                $parseTemplate->assign('contact_name',$contact_name);
                $parseTemplate->assign('date',$date);
                $parseTemplate->assign('fullname',$ten);
                $parseTemplate->assign('phone',$dienthoai);                
                $parseTemplate->assign('email',$email);	                
                $parseTemplate->assign('cty',$cty);
                $parseTemplate->assign('diachi', $diachi);
                $parseTemplate->assign('tp', $tp);	
                $parseTemplate->parse('main');	
                $mail=wp_mail($contact_email, $title, $parseTemplate->text('main'), $title);
            }
