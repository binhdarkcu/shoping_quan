<?php get_header('single')?>
<?php
        while ( have_posts() ) : the_post();
        $post = get_post(get_the_ID());
        $bigImg = wp_get_attachment_url( get_post_thumbnail_id(get_the_ID()) );
        $price = get_field('product_price',get_the_ID());
        $price = number_format( $price, 0, ',', '.');
        $callcheckbox = get_field('call_checkbox',get_the_ID());
    ?>
    <div class="main-container col1-layout">
       <div class="arw_breadcrumbs"><div class="container">
            <div class="breadcrumbs">
                <ul>
                    <li class="home">
                        <a href="<?php echo get_bloginfo('home')?>" title="Go to Home Page">Trang chủ</a>
                                    <span><i class="fa fa-caret-right"></i></span>
                    </li>
                    <li class="product">
                                <strong><?php echo get_the_title(get_the_ID());?></strong>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="main">
        <div class="container">
            <div class="row">
                <div class="col-main col-xs-12 col-sm-12 col-md-12">
                    <script type="text/javascript">
                       // var optionsPrice = new Product.OptionsPrice({"productId":"31","priceFormat":{"pattern":"$%s","precision":2,"requiredPrecision":2,"decimalSymbol":".","groupSymbol":",","groupLength":3,"integerRequired":1},"includeTax":"false","showIncludeTax":false,"showBothPrices":false,"productPrice":799.99,"productOldPrice":823.95,"priceInclTax":799.99,"priceExclTax":799.99,"skipCalculate":1,"defaultTax":0,"currentTax":0,"idSuffix":"_clone","oldPlusDisposition":0,"plusDisposition":0,"plusDispositionTax":0,"oldMinusDisposition":0,"minusDisposition":0,"tierPrices":[],"tierPricesInclTax":[]});
                    </script>
                    <div class="product-view" itemscope itemtype="http://schema.org/Product">
                        <div id="messages_product_view"></div>
                        <div class="product-essential">
                            <div class="row">
                                <div class="col-main-details col-sm-12 col-md-9">
                                    <form action="" method="get" id="product_addtocart_form">
                                        <input name="form_key" type="hidden" value="FuS5jSHNsfq830IO" />
                                        <div class="no-display">
                                            <input type="hidden" name="productID" value="<?php echo get_the_ID();?>" />
                                        </div>
                                        <div class="row">
                                            <div class="product-img-box col-xs-12 col-sm-5 col-md-5">
                                                <style>
                                                    .cloud-zoom-lens {
                                                        cursor:move;
                                                    }
                                                </style>
                                                <div class="product-img-box-bottom">
                                                    <div class="product-image arw-product-image">
                                                        <?php
                                                            $selected = get_field('sale_product');
                                                            if(!empty($selected)){
                                                                if( in_array('Sale icon', $selected) ) {
                                                        ?>
                                                        <div class="arw-product-labels">
                                                            <span class="arw-product-label product-sale-label">
                                                                <span>Sale</span>
                                                                <span class="arw-label-ribbon"></span>
                                                            </span>
                                                        </div>
                                                        <?php } } ?>            
                                                        <a href='<?php echo $bigImg;?>' class='cloud-zoom' id='arw-zoom' rel="zoomWidth:300,zoomHeight:320,position:'right',adjustX:30,adjustY:0,lensOpacity:'0.5',smoothMove:3,showTitle:1,titleOpacity:0.5">
                                                            <img id="image" src="<?php echo $bigImg;?>" alt="<?php echo get_the_title(get_the_ID());?>" title="<?php echo get_the_title(get_the_ID());?>" />            
                                                        </a>
                                                    </div>
                                                       
                                                        <div class="more-views">
                                                            <div class="arw-slick-slider">
                                                                <?php
                                                                    if( have_rows('description_image') ){
                                                                        while ( have_rows('description_image') ) : the_row();
                                                                        $image_desc = get_sub_field('product_images_sub');
                                                                ?>
                                                                <div class="thumbnail-item">
                                                                    <a href="<?php echo $image_desc;?>" class="cloud-zoom-gallery" title=""
                                                                       rel="useZoom: 'arw-zoom', smallImage: '<?php echo $image_desc;?>'">
                                                                        <img src="<?php echo $image_desc;?>" alt="" />
                                                                    </a>
                                                                </div>
                                                                <?php endwhile; } ?>
                                                    </div>
                                                    <script type="text/javascript">
                                                        jQuery(document).ready(function($){
                                                            if(typeof $.fn.slick !== 'undefined'){
                                                                var _opts = $.parseJSON('{"vertical":false,"infinite":true,"speed":2000,"slidesToShow":3,"slidesToScroll":1,"autoplay":500,"responsive":[{"breakpoint":1280,"settings":{"slidesToShow":3,"slidesToScroll":1,"infinite":true}},{"breakpoint":320,"settings":{"slidesToShow":3,"slidesToScroll":1,"infinite":true}}]}'),
                                                                    extra = {
                                                                        prevArrow : '<button type="button" class="slick-prev"><span><i class="arrow_left"></i></span></button>',
                                                                        nextArrow : '<button type="button" class="slick-next"><span><i class="arrow_right"></i></span></button>'
                                                                    };
                                                                var opts = $.extend(_opts, extra);
                                                                $('.arw-slick-slider').slick(opts);
                                                            }
                                                        })
                                                    </script>
                                                </div>
                                                <script type="text/javascript">
                                                    jQuery(document).ready(function($){
                                                        $('.arw-product-image').click(function(e){
                                                            e.preventDefault();
                                                            var current_image = $(this).find('#image').attr('src');
                                                            var idx = 0;

                                                            $('.zoom-fancybox-button').each(function(index){
                                                                if( current_image == $(this).data('image')){
                                                                    idx = index;
                                                                }
                                                            });
                                                            $('.zoom-fancybox-button').eq(idx).trigger('click');
                                                        });
                                                        $('.zoom-fancybox-button').fancybox({
                                                            openEffect  : 'none',
                                                            closeEffect : 'none',
                                                            prevEffect : 'none',
                                                            nextEffect : 'none',
                                                            closeBtn  : false,
                                                            helpers : {
                                                                title : {
                                                                    type : 'inside'
                                                                },
                                                                buttons : {}
                                                            }
                                                        });
                                                    })
                                                </script>
                                    </div>

                                    <script type="text/javascript">
                                        jQuery(document).on('product-media-loaded', function() {
                                                    ConfigurableMediaImages.setImageFallback(31, jQuery.parseJSON('{"option_labels":{"gold":{"configurable_product":{"small_image":null,"base_image":null,"list_image":null,"grid_image":null,"detail_image":null,"detail_image3x":null},"products":["32","34","35"]},"gray":{"configurable_product":{"small_image":null,"base_image":null,"list_image":null,"grid_image":null,"detail_image":null,"detail_image3x":null},"products":["33"]},"silver":{"configurable_product":{"small_image":null,"base_image":null,"list_image":null,"grid_image":null,"detail_image":null,"detail_image3x":null},"products":["36"]},"space gray":{"configurable_product":{"small_image":null,"base_image":null,"list_image":null,"grid_image":null,"detail_image":null,"detail_image3x":null},"products":["37"]},"16g":{"configurable_product":{"small_image":null,"base_image":null,"list_image":null,"grid_image":null,"detail_image":null,"detail_image3x":null},"products":["32","36","37"]},"32g":{"configurable_product":{"small_image":null,"base_image":null,"list_image":null,"grid_image":null,"detail_image":null,"detail_image3x":null},"products":["33"]},"64g":{"configurable_product":{"small_image":null,"base_image":null,"list_image":null,"grid_image":null,"detail_image":null,"detail_image3x":null},"products":["34"]},"128g":{"configurable_product":{"small_image":null,"base_image":null,"list_image":null,"grid_image":null,"detail_image":null,"detail_image3x":null},"products":["35"]},"1g":{"configurable_product":{"small_image":null,"base_image":null,"list_image":null,"grid_image":null,"detail_image":null,"detail_image3x":null},"products":["32","33","34","35","36","37"]}},"grid_image":[],"list_image":[],"detail_image":{"32":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/small_image\/370x411\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0001_b00nqgp5m8_gold.jpg","33":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/small_image\/370x411\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0002_b00nqgp5m8_silver.jpg","34":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/small_image\/370x411\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0001_b00nqgp5m8_gold_1.jpg","35":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/small_image\/370x411\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0001_b00nqgp5m8_gold_2.jpg","36":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/small_image\/370x411\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0002_b00nqgp5m8_silver_1.jpg","37":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/small_image\/370x411\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0000_b00nqgp5m8_space_gray.jpg","31":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/small_image\/370x411\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0003_b00nqgp5m8_1_1.jpg"},"detail_image3x":{"32":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/small_image\/1110x1233\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0001_b00nqgp5m8_gold.jpg","33":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/small_image\/1110x1233\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0002_b00nqgp5m8_silver.jpg","34":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/small_image\/1110x1233\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0001_b00nqgp5m8_gold_1.jpg","35":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/small_image\/1110x1233\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0001_b00nqgp5m8_gold_2.jpg","36":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/small_image\/1110x1233\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0002_b00nqgp5m8_silver_1.jpg","37":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/small_image\/1110x1233\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0000_b00nqgp5m8_space_gray.jpg","31":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/small_image\/1110x1233\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0003_b00nqgp5m8_1_1.jpg"},"small_image":[],"base_image":{"32":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/image\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0001_b00nqgp5m8_gold.jpg","33":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/image\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0002_b00nqgp5m8_silver.jpg","34":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/image\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0001_b00nqgp5m8_gold_1.jpg","35":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/image\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0001_b00nqgp5m8_gold_2.jpg","36":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/image\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0002_b00nqgp5m8_silver_1.jpg","37":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/image\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0000_b00nqgp5m8_space_gray.jpg","31":"http:\/\/m2.arexmage.com\/arw_dots\/media\/catalog\/product\/cache\/1\/image\/9df78eab33525d08d6e5fb8d27136e95\/e\/p\/ep_0003_b00nqgp5m8_1_1.jpg"}}'));
                                                    jQuery(document).trigger('configurable-media-images-init', ConfigurableMediaImages);
                                        });
                                    </script>
                        </div>
                        <div class="product-shop col-xs-12 col-sm-7 col-md-7">
                            <div class="product-shop-inner">
                                <div class="product-name">
                                    <h1><span itemprop="name"><?php echo get_the_title(get_the_ID());?></span></h1>
                                </div>
                                <div class="clearfix"></div>
                                <div class="price-info">
                                    
                                    <div  itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                                        <div class="price-box">
                                            <p class="special-price">
                                                <span class="price-label">Giá bán:</span>
                                                <?php if(!empty($callcheckbox)) {?>
                                                <span class="price" itemprop="price" content="<?php echo $price;?>">
                                                    Call 
                                                </span>
                                                <?php } else {?>
                                                <span class="price" itemprop="price" content="<?php echo $price;?>">
                                                    <?php echo $price;?> VNĐ   
                                                </span>
                                                <?php }?>
                                                <input type="hidden" name="product_price" value="<?php echo get_field('product_price',get_the_ID());?>"/>
                                            </p>
                                                    
                                    
                                        </div>

                                        <meta itemprop="priceCurrency" content="VNĐ"/>
                                        <meta itemprop="availability" href="http://schema.org/InStock"/>
                                                                                
                                    </div>
                                        
                                </div>
                                <div class="short-description">
                                    <span class="description-label"></span>
                                    <div class="std" itemprop="description">
                                        <?php 
                                            $getPost = get_the_content(get_the_ID());
                                            $postwithbreaks = wpautop( $getPost, true );
                                            echo $postwithbreaks;
                                         ?>
                                         <?php
                                            $strip = array('<p>','</p>'); // search for <p>
                                        ?>
                                         <p>
                                            Nhà sản xuất :
                                            <strong><?php echo get_field('header_title','option');?></strong>
                                        </p>
                                        <p>
                                            Địa chỉ: <strong><?php echo str_replace($strip,'',get_field('company_address','option'));?></strong>
                                        </p>
                                        <p>
                                            Điện thoại: <?php echo str_replace($strip,'',get_field('phone_number','option'));?>
                                        </p>
                                        <p>
                                            Hotline: <?php echo str_replace($strip,'',get_field('hotline','option'));?>
                                        </p>
                                        <p>
                                            Chat: <?php echo str_replace($strip,'',get_field('sale_email','option'));?>
                                        </p>
                                        <p>
                                            Skype: <?php echo str_replace($strip,'',get_field('link_skype','option'));?>
                                        </p>
                                        <p>
                                            Email: <?php echo str_replace($strip,'',get_field('company_email','option'));?>
                                        </p>
                                    </div>
                                </div>
                                                                
                                
                               <!--div class="product-options" id="product-options-wrapper">
                                    <div class="clearfix"></div>                    
                                    <dt>
                                        <label class="required"><em>*</em>Số lượng</label>
                                    </dt>
                                    <dd>
                                        <div class="input-box">
                                            <?php $amount = get_field('amount_product', get_the_ID());?>
                                            <select name="amount_select" class="required-entry super-attribute-select">
                                                <?php
                                                    for ($i = 1; $i<=$amount;$i++){
                                                ?>
                                                    <option value="<?php echo $i;?>"><?php echo $i;?></option>
                                                <?php }?> 
                                              </select>
                                          </div>
                                    </dd>
                                </dl>
                                <script type="text/javascript">
                                    jQuery('input[name="amount_product"]').attr('value',jQuery('select[name="amount_select option:selected"]').text());
                                    jQuery('select[name="amount_select"]').change(function(){
                                        jQuery('input[name="amount_product"]').attr('value',jQuery(this).val());
                                    });
                                </script>
                            </div-->
            <div class="product-options-bottom">
                
                <div class="add-to-box-actions"><!-- ./ start add-to-box-actions-->
                    <a style="    background: #4cd5d3;color: #fff;padding: 8px 17px;font-weight: bold;text-transform: uppercase;" href="javascript:void()" class="button-addcart" onclick="addcart(<?php echo $id;?>);" title="Mua ngay" id="product-addtocart-button" class="button btn-cart"><span><span class="icon_bag"></span>
                        <span class="text">Order</span></span>
                    </a>
                    
                </div><!-- ./ end add-to-box-actions-->
            </div>
                                
            <div class="product-tags-wrapper">
                    <span class="label">Tags:</span>
                    <?php the_tags( '<ul class="product-tags"><li>', '</li><li>', '</li></ul>' ); ?>
                </div>
         </div>
      </div>
   </div>
                    <div class="clearer"></div>
  </form>
                <script type="text/javascript">
                    //<![CDATA[
                    var productAddToCartForm = new VarienForm('product_addtocart_form');
                    productAddToCartForm.submit = function(button, url) {
                        if (this.validator.validate()) {
                            var form = this.form;
                            var oldUrl = form.action;

                            if (url) {
                                form.action = url;
                            }
                            var e = null;
                            try {
                                this.form.submit();
                            } catch (e) {
                            }
                            this.form.action = oldUrl;
                            if (e) {
                                throw e;
                            }

                            if (button && button != 'undefined') {
                                button.disabled = true;
                            }
                        }
                    }.bind(productAddToCartForm);

                    productAddToCartForm.submitLight = function(button, url){
                        if(this.validator) {
                            var nv = Validation.methods;
                            delete Validation.methods['required-entry'];
                            delete Validation.methods['validate-one-required'];
                            delete Validation.methods['validate-one-required-by-name'];
                            // Remove custom datetime validators
                            for (var methodName in Validation.methods) {
                                if (methodName.match(/^validate-datetime-.*/i)) {
                                    delete Validation.methods[methodName];
                                }
                            }

                            if (this.validator.validate()) {
                                if (url) {
                                    this.form.action = url;
                                }
                                this.form.submit();
                            }
                            Object.extend(Validation.methods, nv);
                        }
                    }.bind(productAddToCartForm);
                    //]]>
                </script>
            </div>
            <div class="col-right-details sidebar col-xs-12 col-sm-12 col-md-3"><div class="sidebar-content"><div class="special-tab tab-icon-gift">
                <div class="arw_tab_slider">
                    <ul class="slider-tab">
                            <li data-enable-countdown="1" title="Deal Of The Day" id="tab_4_home_deal_of_the_day_tab" class=" active first">
                            <span><span>Quảng cáo</span></span>
                        </li><!--
                            -->
                    </ul>
                    <div class="one_tab" id="tab_4_home_deal_of_the_day_tab_contents">    
                        <div id="product-list-1282187763">
                            <ul class="products-grid arw-1-col arw-row">
                                <?php
                                    $args_banner = array(
                                        'post_type'      => 'advertises',
                                        'posts_per_page' => 2,
                                        'order'          => 'asc'
                                    );
                                    $queryBanner = get_posts($args_banner);
                                    foreach ($queryBanner as $ban) {
                                        $bigImg = wp_get_attachment_url( get_post_thumbnail_id($ban->ID) );
                                ?>
                                <li class="arw-col item">
                                    <div class="wrapper-item" style="display: table;margin-top:20px">
                                        <div class="arw-product-labels"><span class="arw-product-label product-sale-label"><span>Sale</span><span class="arw-label-ribbon"></span></span></div>            <input type="hidden" value="31" name="product"/>
                                        <div class="wrapper-item-inner" style="width: 240px;">
                                            <div class="outer-image">
                                                <a href="<?php echo get_the_permalink($ban->ID)?>" title="<?php echo get_the_title($ban->ID);?>" class="product-image">
                                                    <img class="front product-collection-image" src="<?php echo $bigImg;?>" alt="<?php echo get_the_title($ban->ID);?>" />
                                                    <p><h3><?php echo get_the_title($ban->ID);?></h3></p>
                                                </a>
                                            </div>
                                        </div>
                                </li>
                                <?php }?>
                                </ul>
                            </div>
                            <script type="text/javascript">
                                jQuery(document).ready(function(){
                                            arexworks.Frontend.initOwlGalleryImage(jQuery('#product-list-1282187763 .product-image.product-image-slideshow .wrapper-slideshow'));
                                    setTimeout(function(){
                                        equalheight2(jQuery('#product-list-1282187763 .products-slide'),'.product-info');
                                    },1000);
                                    jQuery(window)
                                        .load(function(){
                                            equalheight2(jQuery('#product-list-1282187763 .products-slide'),'.product-info');
                                        })
                                        .resize(function(){
                                            setTimeout(function(){
                                                equalheight2(jQuery('#product-list-1282187763 .products-slide'),'.product-info');
                                            },1000);
                                        })
                                });
                            </script>
                            </div>
                                <div class="ajax_loading_tab"></div>
                            <div class="backgroundajax_tab"></div>
                        </div>
                    </div>
                </div>
            </div>        
        </div>
    </div>
    <div class="margin-bottom-30 product-collateral-item product-collateral-right"><div class="arw_tab_slider">
        <ul class="slider-tab">
            <li data-enable-countdown="0" title="New Arrivals" id="tab_1_product_detail_new_arrival_tab" class="one_tab active first">
                <span><span>Sản phẩm liên quan</span></span>
            </li><!--
                -->
        </ul>
        <?php get_template_part('tpl','special-product')?>
        <div class="ajax_loading_tab"></div>
        <div class="backgroundajax_tab"></div>
    </div>
    </div>
    </div>
</div>
</div>
<script type="text/javascript">
    var lifetime = 3600;
    var expireAt = Mage.Cookies.expires;
    if (lifetime > 0) {
        expireAt = new Date();
        expireAt.setTime(expireAt.getTime() + lifetime * 1000);
    }
    Mage.Cookies.set('external_no_cache', 1, expireAt);
</script>
                
                                                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php   
            endwhile; 
        ?>
<?php get_footer();?>