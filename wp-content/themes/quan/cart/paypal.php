<?php
	/*
	 	Template Name: Paypal template
	 */	
?>
<?php
			//TRUY VẤN THÔNG TIN VỀ NGƯỜI MUA TỪ HỆ THỐNG DATABASE CỦA WEBSITE
			$mail_buyer = "khoatd21@gmail.com";


				//doc cac gia tri tra ve tu sandbox  va add vao cmd
				$req = 'cmd=_notify-validate';
				
				//NHẬN THÔNG TIN VỀ GIAO DỊCH TỪ SANDBOX GỬI VỀ THEO PHƯƠNG THỨC POST
				
				/*
					*Các thông tin về người mua hàng
					*id
					*tên
					*địa chỉ
					*ngay mua
				*/
				$payerid = $_POST['payer_id'];
				$addressname = $_POST['address_name'];
				$addressstreet = $_POST['address_street'];
				$addresscity = $_POST['address_city'];
				$addresscontry = $_POST['address_country'];				
				$paymentdate = $_POST['payment_date'];
				$payermail = $_POST['payer_email'];
				
				//TRẠNG THÁI GIAO DỊCH HIỆN TẠI Completed hoặc Pending, Process ,Fail
				$paymentstatus = $_POST['payment_status'];	// trang thai sau khi thanh toan			
				
				// Số lượng tiền thanh toán của khách hàng trước khi bị trừ
				$mcgross = $_POST['mc_gross'];				
				//email chủ tài khoản bản các sản phẩm
				$sellermail = $_POST['business'];			
				//tên của sản phẩm giao dịch
				$itemname = $_POST['item_name'];
				//Loại Đồng tiền thanh toán hiện tại   USD
				$mccurrency = $_POST['mc_currency'];
				// số lượng sản phẩm dduwwc giao dịch
				$itemnumber = $_POST['item_number'];
				// số lượng tiền thanh toán của khách hàng đã giao dịch
				$paymentgross = $_POST['payment_gross'];
				
				//mail buyer
					$tobuyer      = $mail_buyer;
					$subjectbuyer = 'The Payment';					
					$headersbuyer = 'From: webmaster@example.com' . "\r\n" .
							'Reply-To: webmaster@example.com' . "\r\n" .
							'X-Mailer: PHP/' . phpversion();

				//mail seller
					$toseller      = 'khoatd21@gmail.com';
					$subjectseller = 'The Payment';
					$messageseller = 'hello Seller';
					$headersseller = 'From: webmaster@example.com' . "\r\n" .
							'Reply-To: webmaster@example.com' . "\r\n" .
							'X-Mailer: PHP/' . phpversion();
				
			if(strcmp($paymentstatus,'Completed')== 0)
			{
					create_order($_POST);  //luu cac thong tin ve giao dich xuong database
					
					//send mail to buyer					
					$messagebuyer = 'hello Buyer the payment is Success';
					mail($tobuyer, $subjectbuyer, $messagebuyer, $headersbuyer);					
					mail($toseller, $subjectseller, $messageseller, $headersseller);				
					//wp_mail('dbthanhbinh@yahoo.com.vn', 'hello thanh binh', 'payment success');
			}
			else
			{
					$messagebuyer = 'hello Buyer the payment is Failure';
					//mail($toseller, $subjectseller, $messageseller, $headersseller);				
					mail($tobuyer, $subjectbuyer, $messagebuyer, $headersbuyer);					
			}	
			
			
			//Ham này dùng để insert dữ liệu xuống database
			function create_order()
			{
				
			}
?>
