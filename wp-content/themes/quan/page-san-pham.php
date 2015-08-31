<?php get_header('category');?>

<div class="main-container col2-left-layout">
    <div class="arw_breadcrumbs">
        <div class="container">
                <div class="breadcrumbs">
                    <ul>
                        <li class="home">
                                <a href="<?php echo get_bloginfo('home')?>" title="Go to Home Page">Trang chủ</a>
                                            <span><i class="fa fa-caret-right"></i></span>
                            </li>
                        <li class="category3">
                                <strong>Tất cả các sản phẩm</strong>
                        </li>
                   </ul>
                </div>
            </div>
        </div>

        <div class="main">
           <div class="container">
                <div class="row">
                   <div class="col-main col-xs-12 col-sm-12 col-md-9 col-md-push-3">
                       <div class="page-title category-title">
                            <h1>Sản phẩm</h1>
                       </div>
                        <div class="category-products">
                            <div class="toolbar">
                                <div class="sorter">
                                     <p class="view-mode">
                                         <label>View as:</label>
                                         <strong data-toggle="tooltip" title="" class="grid" data-original-title="View as Grid">
                                            <i class="icon_grid-3x3"></i>
                                         </strong>
                                         <a data-toggle="tooltip" href="http://m2.arexmage.com/arw_dots/tv-video.html?mode=list" title="" class="list" data-original-title="View as List">
                                            <i class="icon_ul"></i>
                                         </a>
                                    </p>
                                    
                                    <div class="sort-by">
                                        <select title="" data-toggle="tooltip" onchange="arwFilter.setAjaxLocation(this.value)" style="display: none;" class="hasInstall" data-original-title="Sort By">
                                            <option value="http://m2.arexmage.com/arw_dots/tv-video.html?dir=asc&amp;order=position" selected="selected">Position</option>
                                            <option value="http://m2.arexmage.com/arw_dots/tv-video.html?dir=asc&amp;order=name">Name</option>
                                            <option value="http://m2.arexmage.com/arw_dots/tv-video.html?dir=asc&amp;order=price">Price</option>
                                        </select>
                                        <div class="btn-group bootstrap-select">
                                            <button type="button" class="btn dropdown-toggle selectpicker btn-default" data-toggle="dropdown" title="Position"><span class="filter-option pull-left">Position</span>&nbsp;<span class="caret"></span></button>
                                            <div class="dropdown-menu open">
                                                <ul class="dropdown-menu inner selectpicker" role="menu">
                                                    <li data-original-index="0" class="selected"><a tabindex="0" class="" data-normalized-text="<span class=&quot;text&quot;>Position</span>"><span class="text">Position</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li>
                                                    <li data-original-index="1"><a tabindex="0" class="" data-normalized-text="<span class=&quot;text&quot;>Name</span>"><span class="text">Name</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li>
                                                    <li data-original-index="2"><a tabindex="0" class="" data-normalized-text="<span class=&quot;text&quot;>Price</span>"><span class="text">Price</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <a data-toggle="tooltip" href="http://m2.arexmage.com/arw_dots/tv-video.html?dir=desc&amp;order=position" title="" data-original-title="Set Descending Direction">
                                            <i class="fa fa-long-arrow-up"></i>
                                        </a>
                                    </div>
                                </div>
                                
                            </div>
                        <ul class="products-grid arw-3-col arw-row" id="product-list-2046808">
                            <?php
                                //$query_category = get_category_post($category->name);
                                query_posts( array ( 'post_type'      => 'post', 'posts_per_page' => -1 ) );
                                while (have_posts()) : the_post();
                                //if(have_posts($query_category->$post)): while(have_posts($query_category->$post)): the_post($query_category->$post);
                                    $url = get_field('image_for_slider',get_the_ID());
                                    $bigImg = wp_get_attachment_url( get_post_thumbnail_id(get_the_ID()) );
                                    $price = get_field('product_price',get_the_ID());
                                    $price = number_format( $price, 0, ',', '.');
                            ?>
                            <li class="arw-col item">
                                <div class="wrapper-item">
                                    <input type="hidden" value="1" name="product">
                                    <div class="wrapper-item-inner  transform-effect vertical-effect skin1-effect">
                                        <div class="outer-image">
                                            <a href="<?php echo get_the_permalink($newhome->ID)?>" title="<?php echo get_the_title($newhome->ID);?>" class="product-image">
                                                <img class="front product-collection-image" src="<?php echo $bigImg;?>" alt="<?php echo get_the_title($newhome->ID);?>" />
                                                <?php
                                                // check if the repeater field has rows of data
                                                if( have_rows('description_image') ){
                                                    while ( have_rows('description_image') ) : the_row();
                                                    $image_desc = get_sub_field('product_images_sub');
                                                ?>
                                                <img class="back" src="<?php echo $image_desc;  ?>" alt="" />
                                                <?php  endwhile; }?>
                                            </a>
                                        </div>
                                        <div class="actions">
                                            <button data-toggle="tooltip" data-placement="left" onclick="return false;" class="button btn-cart" title="" amEvent="setLocation('http://m2.arexmage.com/arw_dots/checkout/cart/add/uenc/aHR0cDovL20yLmFyZXhtYWdlLmNvbS9hcndfZG90cy90di12aWRlby5odG1s/product/1/form_key/rw9pascLkSeB53uc/')" data-original-title="Add to Cart">
                                                <span><span class="icon_bag"></span></span>
                                            </button>
                                            <a data-toggle="tooltip" data-placement="left" href="http://m2.arexmage.com/arw_dots/wishlist/index/add/product/1/form_key/rw9pascLkSeB53uc/" class="button link-wishlist" title="" data-original-title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                            <a data-toggle="tooltip" data-placement="left" href="http://m2.arexmage.com/arw_dots/catalog/product_compare/add/product/1/uenc/aHR0cDovL20yLmFyZXhtYWdlLmNvbS9hcndfZG90cy90di12aWRlby5odG1s/form_key/rw9pascLkSeB53uc/" class="button link-compare" title="" data-original-title="Add to Compare"><span class="fa fa-bar-chart"></span></a>
                                            <a data-toggle="tooltip" data-placement="left" href="http://m2.arexmage.com/arw_dots/arexworks/quickview/index/product_id/1/" class="button link-quickview" title="" data-original-title="Quick View"><span class="fa fa-search-plus"></span></a>                        
                                        </div>
                                    </div>
                                    <div class="product-info">
                                        <div class="row no-margin">
                                            <div class="col-xs-8 arw-info-separator">
                                                <h2 class="product-name">
                                                    <a href="<?php echo get_the_permalink($newhome->ID)?>" title="SW3 SmartWatch 3">
                                                        <span title="SW3 SmartWatch 3"><?php echo get_the_title($newhome->ID);?></span>
                                                    </a>
                                                </h2>
                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <div class="rating" style="width:0%"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-4 no-padding">
                                                <div class="price-box">
                                                    <span class="regular-price" id="product-price-22" style="padding: 0 10px; margin-top: 15px;">
                                                        <span class="price" content="<?php echo $price;?>"><?php echo $price;?> VNĐ</span>
                                                    </span>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <?php endwhile;?>
                        </ul>
        <div class="toolbar-bottom">
            <div class="toolbar">
                    <div class="sorter">
                                    <p class="view-mode">
                                                                            <label>View as:</label>
                                                                                                                                <strong data-toggle="tooltip" title="" class="grid" data-original-title="View as Grid"><i class="icon_grid-3x3"></i></strong>
                                                                                                                                                                <a data-toggle="tooltip" href="http://m2.arexmage.com/arw_dots/tv-video.html?mode=list" title="" class="list" data-original-title="View as List"><i class="icon_ul"></i></a>
                                                                                                        </p>
                
                <div class="sort-by">
                    <select title="" data-toggle="tooltip" onchange="arwFilter.setAjaxLocation(this.value)" class="hasInstall" data-original-title="Sort By" style="display: none;">
                                                    <option value="http://m2.arexmage.com/arw_dots/tv-video.html?dir=asc&amp;order=position" selected="selected">Position</option>
                                                    <option value="http://m2.arexmage.com/arw_dots/tv-video.html?dir=asc&amp;order=name">Name</option>
                                                    <option value="http://m2.arexmage.com/arw_dots/tv-video.html?dir=asc&amp;order=price">Price</option>
                                            </select><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle selectpicker btn-default" data-toggle="dropdown" title="Position"><span class="filter-option pull-left">Position</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner selectpicker" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" data-normalized-text="<span class=&quot;text&quot;>Position</span>"><span class="text">Position</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" data-normalized-text="<span class=&quot;text&quot;>Name</span>"><span class="text">Name</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" data-normalized-text="<span class=&quot;text&quot;>Price</span>"><span class="text">Price</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
                                            <a data-toggle="tooltip" href="http://m2.arexmage.com/arw_dots/tv-video.html?dir=desc&amp;order=position" title="" data-original-title="Set Descending Direction">
                            <i class="fa fa-long-arrow-up"></i>
                        </a>
                                    </div>
            </div>
                <div class="pager-select">
            <p class="amount">
                                    9 Item(s)                            </p>
            <div class="limiter">
                <select onchange="arwFilter.setAjaxLocation(this.value)" class="hasInstall" style="display: none;">
                                            <option value="http://m2.arexmage.com/arw_dots/tv-video.html?limit=12" selected="selected">12 items/page</option>
                                            <option value="http://m2.arexmage.com/arw_dots/tv-video.html?limit=24">24 items/page</option>
                                            <option value="http://m2.arexmage.com/arw_dots/tv-video.html?limit=36">36 items/page</option>
                                    </select><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle selectpicker btn-default" data-toggle="dropdown" title="12 items/page"><span class="filter-option pull-left">12 items/page</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner selectpicker" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" data-normalized-text="<span class=&quot;text&quot;>12 items/page</span>"><span class="text">12 items/page</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" data-normalized-text="<span class=&quot;text&quot;>24 items/page</span>"><span class="text">24 items/page</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" data-normalized-text="<span class=&quot;text&quot;>36 items/page</span>"><span class="text">36 items/page</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
            </div>
            
    
    
    
    
    
        </div>
    </div>
    </div>
    <script type="text/javascript">
        jQuery(document).ready(function(){
            arexworks.Frontend.initOwlGalleryImage(jQuery('#product-list-2046808 .product-image.product-image-slideshow .wrapper-slideshow'));
                        jQuery(document).trigger('configurable-media-images-init');
        });
    </script>
</div>
   </div>
   <div class="col-left sidebar col-xs-12 col-sm-12 col-md-3 col-md-pull-9">
        <div class="arw-toggle-sidebar" data-id="col-left"><span><i class="fa fa-angle-right"></i></span></div>
           <div class="sidebar-content">
                <?php get_template_part('tpl','category');?>
                <!-- navigation EOF -->
                <div class="block block-layered-nav">
                    <div class="block-title">
                        <strong><span>Shop By</span></strong>
                    </div>
                    <div class="block-content">
                        <p class="block-subtitle">Shopping Options</p>
                        <dl id="narrow-by-list">
                            <dt class="odd">Price</dt>
                            <dd class="odd">
                                <div id="slider-ee1cc0309985f3e93f6cd75869390d8d" class="price-slider">
                                    <div id="slider-ee1cc0309985f3e93f6cd75869390d8d-min" class="price-slider-handle min selected" style="left: 0px;"></div>
                                    <div id="slider-ee1cc0309985f3e93f6cd75869390d8d-max" class="price-slider-handle max" style="left: 169px;"></div>
                                    <div id="slider-ee1cc0309985f3e93f6cd75869390d8d-span" class="price-slider-span" style="left: 0px; width: 169px;"></div>
                                </div>
                                <div class="layer-price">
                                    $<span id="layer-price-min">0</span>&nbsp;&nbsp;-&nbsp;&nbsp;$<span id="layer-price-max">4000</span>
                                </div>
                            </dd>
                            <dt class="last even">ARW Brand</dt>
                            <dd class="last even">
                                <ol>
                                    <li>
                                        <a href="http://m2.arexmage.com/arw_dots/tv-video.html?arw_brand=57">All Brands</a>
                                                (9)
                                    </li>
                                </ol>
                            </dd>
                    </dl>
                    <script type="text/javascript">decorateDataList('narrow-by-list')</script>
                  </div>
            </div>
            <div class="block block-banner">
                <div class="block-content">
                                <a href="http://m2.arexmage.com/arw_dots/checkout/cart/" title="Our customer service is available 24/7. Call us at (555) 555-0123.">
                                <img src="http://m2.arexmage.com/arw_dots/skin/frontend/arw_dots/default/images/media/col_left_callout.jpg" alt="Our customer service is available 24/7. Call us at (555) 555-0123.">
                            </a>
                        </div>
            </div>
            <div class="block block-tags">
                <div class="block-title">
                    <strong><span>Popular Tags</span></strong>
                </div>
                <div class="block-content">
                    <ul class="tags-list">
                                        <li><a href="http://m2.arexmage.com/arw_dots/tag/product/list/tagId/8/" style="font-size:110%;">RAW</a></li>
                                        <li><a href="http://m2.arexmage.com/arw_dots/tag/product/list/tagId/11/" style="font-size:75%;">Waterproof</a></li>
                                        <li><a href="http://m2.arexmage.com/arw_dots/tag/product/list/tagId/5/" style="font-size:145%;">camera</a></li>
                                        <li><a href="http://m2.arexmage.com/arw_dots/tag/product/list/tagId/4/" style="font-size:75%;">deal</a></li>
                                        <li><a href="http://m2.arexmage.com/arw_dots/tag/product/list/tagId/7/" style="font-size:110%;">hd</a></li>
                                        <li><a href="http://m2.arexmage.com/arw_dots/tag/product/list/tagId/3/" style="font-size:75%;">hot</a></li>
                                        <li><a href="http://m2.arexmage.com/arw_dots/tag/product/list/tagId/10/" style="font-size:75%;">product-images</a></li>
                                        <li><a href="http://m2.arexmage.com/arw_dots/tag/product/list/tagId/2/" style="font-size:110%;">review</a></li>
                                        <li><a href="http://m2.arexmage.com/arw_dots/tag/product/list/tagId/9/" style="font-size:110%;">shooting</a></li>
                                        <li><a href="http://m2.arexmage.com/arw_dots/tag/product/list/tagId/1/" style="font-size:75%;">simple</a></li>
                                        <li><a href="http://m2.arexmage.com/arw_dots/tag/product/list/tagId/6/" style="font-size:110%;">ultra</a></li>
                                </ul>
                    <div class="actions">
                        <a href="http://m2.arexmage.com/arw_dots/tag/list/">View All Tags</a>
                    </div>
                </div>
            </div>
            <div class="block block-subscribe">
                <div class="block-title">
                    <strong><span>Newsletter</span></strong>
                </div>
                <form action="http://m2.arexmage.com/arw_dots/newsletter/subscriber/new/" method="post" id="newsletter-validate-detail">
                    <div class="block-content">
                        <h2 class="form-subscribe-title">Newsletter</h2>
                        <div class="form-subscribe-header">
                            <label for="newsletter">Sign Up for Our Newsletter</label>
                        </div>
                        <p class="form-subscribe-subtitle">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium...</p>
                        <div class="input-box">
                           <input type="text" name="email" id="newsletter" title="Sign up for our newsletter" class="input-text required-entry validate-email">
                        </div>
                        <div class="actions">
                            <button type="submit" title="Subscribe" class="button"><span><span>Subscribe</span></span></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
                </div>
            </div>
        </div>
    </div>
</div>
        
<?php get_footer();?>
