jQuery(document).ready(function(){
	jQuery.validator.addMethod('selectcheck', function (value) {
        return (value != '0');
    }, "");
	 jQuery("#payment_form").validate({
        rules: {
            'fullname': {
                required: true
            },
            'phonenumber': {
                required: true
            },
            'youremail':{
            	required: true,
            	email: true,
            },
            'address': {
                required: true
            }
        },
        errorPlacement: function(error, element){},
        highlight: function(element) {
            jQuery(element).addClass('error');
        },
        unhighlight: function(element, errorClass, validClass) {
            jQuery(element).removeClass(errorClass).addClass(validClass); 
        },
        submitHandler: function(form) {
            
            form.submit();
        },
	});
});