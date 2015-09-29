<?php get_header();?>
	<div class="main-container col1-layout">
	    <div class="main">
	        <div class="container">
	            <div class="row">
	                <div class="col-main col-xs-12 col-sm-12 col-md-12" style="padding: 50px 0;">
	                	<div class="col-xs-12 col-sm-5 col-md-5">
	                		<h3>Thông tin liên hệ</h3>
	                		<?php
                                $strip = array('<p>','</p>'); // search for <p>
                            ?>
	                		<p>
	                			<label>Hotline:</label>
	                			<span><?php echo str_replace($strip,'',get_field('hotline','option'));?></span>
	                		</p>
	                		<p>
	                			<label>Tại Tp. Hồ Chí Minh:</label>
	                			<span><?php echo str_replace($strip,'',get_field('company_address','option'));?></span>
	                		</p>
	                		<p>
	                			<label>Điện thoại:</label>
	                			<span><?php echo str_replace($strip,'',get_field('phone_number','option'));?></span>
	                		</p>
	                		<p>
	                			<label>Chat - yahoo:</label>
	                			<span><?php echo str_replace($strip,'',get_field('sale_email','option'));?></span>
	                		</p>
	                		<p>
	                			<label>Skype:</label>
	                			<span><?php echo str_replace($strip,'',get_field('link_skype','option'));?></span>
	                		</p>
	                		<p>
	                			<label>Email:</label>
	                			<span>
                                            Email: <?php echo str_replace($strip,'',get_field('company_email','option'));?></span>
	                		</p>

	                		
	                	</div>
	                	<div class="col-xs-12 col-sm-7 col-md-7 contactcol">
	                		<h3>Form Liên hệ</h3>
	                		<?php echo do_shortcode( '[contact-form-7 id="105" title="Contact form 1"]' ); ?>
	                	</div>
	                	<div class="col-xs-12" style="padding-top: 40px;">
	                		<h3>Bản đồ</h3>
	                		<?php 

							$location = get_field('google_map','option');

							if( !empty($location) ):
							?>
							<div class="acf-map" style="height: 400px;">
								<div class="marker" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>"></div>
							</div>
							<?php endif; ?>
	                	</div>
	                </div>
	            </div>
	        </div>
	    </div>
    </div>
<?php get_footer();?>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script type="text/javascript">
(function($) {

/*
*  new_map
*
*  This function will render a Google Map onto the selected jQuery element
*
*  @type	function
*  @date	8/11/2013
*  @since	4.3.0
*
*  @param	$el (jQuery element)
*  @return	n/a
*/

function new_map( $el ) {
	
	// var
	var $markers = $el.find('.marker');
	
	
	// vars
	var args = {
		zoom		: 16,
		center		: new google.maps.LatLng(0, 0),
		mapTypeId	: google.maps.MapTypeId.ROADMAP
	};
	
	
	// create map	        	
	var map = new google.maps.Map( $el[0], args);
	
	
	// add a markers reference
	map.markers = [];
	
	
	// add markers
	$markers.each(function(){
		
    	add_marker( $(this), map );
		
	});
	
	
	// center map
	center_map( map );
	
	
	// return
	return map;
	
}

/*
*  add_marker
*
*  This function will add a marker to the selected Google Map
*
*  @type	function
*  @date	8/11/2013
*  @since	4.3.0
*
*  @param	$marker (jQuery element)
*  @param	map (Google Map object)
*  @return	n/a
*/

function add_marker( $marker, map ) {

	// var
	var latlng = new google.maps.LatLng( $marker.attr('data-lat'), $marker.attr('data-lng') );

	// create marker
	var marker = new google.maps.Marker({
		position	: latlng,
		map			: map
	});

	// add to array
	map.markers.push( marker );

	// if marker contains HTML, add it to an infoWindow
	if( $marker.html() )
	{
		// create info window
		var infowindow = new google.maps.InfoWindow({
			content		: $marker.html()
		});

		// show info window when marker is clicked
		google.maps.event.addListener(marker, 'click', function() {

			infowindow.open( map, marker );

		});
	}

}

/*
*  center_map
*
*  This function will center the map, showing all markers attached to this map
*
*  @type	function
*  @date	8/11/2013
*  @since	4.3.0
*
*  @param	map (Google Map object)
*  @return	n/a
*/

function center_map( map ) {

	// vars
	var bounds = new google.maps.LatLngBounds();

	// loop through all markers and create bounds
	$.each( map.markers, function( i, marker ){

		var latlng = new google.maps.LatLng( marker.position.lat(), marker.position.lng() );

		bounds.extend( latlng );

	});

	// only 1 marker?
	if( map.markers.length == 1 )
	{
		// set center of map
	    map.setCenter( bounds.getCenter() );
	    map.setZoom( 16 );
	}
	else
	{
		// fit to bounds
		map.fitBounds( bounds );
	}

}

/*
*  document ready
*
*  This function will render each map when the document is ready (page has loaded)
*
*  @type	function
*  @date	8/11/2013
*  @since	5.0.0
*
*  @param	n/a
*  @return	n/a
*/
// global var
var map = null;

$(document).ready(function(){

	$('.acf-map').each(function(){

		// create map
		map = new_map( $(this) );

	});

});

})(jQuery);
</script>
<style>
.screen-reader-response{
	display: none!important;
}
.contactcol p span[role="alert"]{
	color: red;
	padding-top: 3px;
}
</style>