<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' property='stylesheet' type='text/css'>
<link type="text/css" rel="stylesheet" href="css/settings.css?v=4.6.0" media="all" property='stylesheet' />
<link type="text/css" rel="stylesheet" href="http://m2.arexmage.com/arw_dots/revslider/index/getCssCaptions/id/1/" media="all" property='stylesheet' />
<div id='rev_slider_1_wrapper' class='rev_slider_wrapper fullwidthbanner-container' style='margin:0px auto;background-color:#E9E9E9;padding:0px;margin-top:0px;margin-bottom:30px;max-height:374px;'>
	<div id='rev_slider_1' class='rev_slider fullwidthabanner' style='display:none;max-height:374px;height:374px;'>
		<ul>
            <?php
                $i = 0;
                $args_slider = array(
                    'post_type'      => 'slider',
                    'posts_per_page' => 5,
                    'order'          => 'asc'
                );
                $querySlider = get_posts($args_slider);
                foreach ($querySlider as $slider) {
                    $i++;
                    $url = get_field('image_for_slider',$slider->ID);

            ?>
            <li data-transition='random' data-slotamount='7' data-masterspeed='500' data-saveperformance='on'>
                <div style="background: url(<?php echo $url;?>) no-repeat; background-size: cover;width: 100%; height: 100%;" ></div>
            </li>
            <?php
                }//end for
            ?>
        </ul>
        <div class="tp-bannertimer"></div></div></div>
<script type="text/javascript">delete window["console"];</script>
<script type='text/javascript' src='js/jquery.themepunch.tools.min.js?v=4.6.0'></script>
<script type='text/javascript' src='js/jquery.themepunch.revolution.min.js?v=4.6.0'></script>
<script type='text/javascript'>
    var setREVStartSize = function () {
        var tpopt = new Object();
        tpopt.startwidth = 848;
        tpopt.startheight = 374;
        tpopt.container = jQuery('#rev_slider_1');
        tpopt.fullScreen = 'off';
        tpopt.forceFullWidth = 'off';

        tpopt.container.closest('.rev_slider_wrapper').css({ height: tpopt.container.height() }); tpopt.width = parseInt(tpopt.container.width(), 0); tpopt.height = parseInt(tpopt.container.height(), 0); tpopt.bw = tpopt.width / tpopt.startwidth; tpopt.bh = tpopt.height / tpopt.startheight; if (tpopt.bh > tpopt.bw) tpopt.bh = tpopt.bw; if (tpopt.bh < tpopt.bw) tpopt.bw = tpopt.bh; if (tpopt.bw < tpopt.bh) tpopt.bh = tpopt.bw; if (tpopt.bh > 1) { tpopt.bw = 1; tpopt.bh = 1 } if (tpopt.bw > 1) { tpopt.bw = 1; tpopt.bh = 1 } tpopt.height = Math.round(tpopt.startheight * (tpopt.width / tpopt.startwidth)); if (tpopt.height > tpopt.startheight && tpopt.autoHeight != 'on') tpopt.height = tpopt.startheight; if (tpopt.fullScreen == 'on') { tpopt.height = tpopt.bw * tpopt.startheight; var cow = tpopt.container.parent().width(); var coh = jQuery(window).height(); if (tpopt.fullScreenOffsetContainer != undefined) 
            { try { 
                var offcontainers = tpopt.fullScreenOffsetContainer.split(','); 
                jQuery.each(offcontainers, function (e, t) { coh = coh - jQuery(t).outerHeight(true); 
                    if (coh < tpopt.minFullScreenHeight) coh = tpopt.minFullScreenHeight }) } catch (e) { } 
            } tpopt.container.parent().height(coh); tpopt.container.height(coh); tpopt.container.closest('.rev_slider_wrapper').height(coh); tpopt.container.closest('.forcefullwidth_wrapper_tp_banner').find('.tp-fullwidth-forcer').height(coh); tpopt.container.css({ height: '100%' }); tpopt.height = coh } else { tpopt.container.height(tpopt.height); tpopt.container.closest('.rev_slider_wrapper').height(tpopt.height); tpopt.container.closest('.forcefullwidth_wrapper_tp_banner').find('.tp-fullwidth-forcer').height(tpopt.height) };
    };

    setREVStartSize();
    var revapi1;

    jQuery(document).ready(function () {
        revapi1 = jQuery('#rev_slider_1').show().revolution({
            dottedOverlay: 'none',
            delay: 9000,
            startwidth: 848,
            startheight: 374,

            hideThumbs: 200,
            thumbWidth: 100,
            thumbHeight: 50,
            thumbAmount: 1,

            minHeight: 374,

            simplifyAll: 'off',
            navigationType: 'bullet',
            navigationArrows: '',
            navigationStyle: 'round',

            touchenabled: 'on',
            onHoverStop: 'on',
            nextSlideOnWindowFocus: 'off',

            swipe_threshold: 0.7,
            swipe_min_touches: 1,
            swipe_max_touches: 1,
            drag_block_vertical: false,

            spinner: 'spinner0',
            keyboardNavigation: 'on',

            navigationHAlign: 'center',
            navigationVAlign: 'bottom',
            navigationHOffset: 0,
            navigationVOffset: 20,

            soloArrowLeftHalign: 'left',
            soloArrowLeftValign: 'center',
            soloArrowLeftHOffset: 20,
            soloArrowLeftVOffset: 0,

            soloArrowRightHalign: 'right',
            soloArrowRightValign: 'center',
            soloArrowRightHOffset: 20,
            soloArrowRightVOffset: 0,

            shadow: 0,
            fullWidth: 'on',
            fullScreen: 'off',

            stopLoop: 'off',
            stopAfterLoops: -1,
            stopAtSlide: -1,

            shuffle: 'off',

            autoHeight: 'off',

            forceFullWidth: 'off',

            hideNavDelayOnMobile: 1500,

            hideThumbsOnMobile: 'off',
            hideBulletsOnMobile: 'off',
            hideArrowsOnMobile: 'off',
            hideThumbsUnderResolution: 0,

            hideSliderAtLimit: 0,
            hideCaptionAtLimit: 0,
            hideAllCaptionAtLilmit: 0,
            startWithSlide: 0
        });
    });
</script>