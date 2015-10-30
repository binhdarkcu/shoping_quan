<?php
    //session_start();
    //echo session_id();
    function 	gui_noi_dung_lien_he($ten, $email, $chude, $noidung){
                include_once	'xtemplate.class.php';
                $header   	= 'Content-type: text/html; charset=utf-8\r\n';				
                $title 		= 'Khách lien he';
                $contact_email = get_option('contactemail');
                $contact_name = get_bloginfo('name');
                $date = date('d-m-Y');
                $parseTemplate	=	new XTemplate('xtemplate.lien-he.html');
                $parseTemplate->assign('title',$title);
                $parseTemplate->assign('link', get_bloginfo('home'));
                $parseTemplate->assign('contact_name',$contact_name);
                $parseTemplate->assign('date',$date);
                $parseTemplate->assign('fullname',$ten);                
                $parseTemplate->assign('email',$email);	
                $parseTemplate->assign('tieude',$chude);
                $parseTemplate->assign('noidung',$noidung);              	
                $parseTemplate->parse('main');	
                $mail=wp_mail($contact_email, $title, $parseTemplate->text('main'), $title);
            }
