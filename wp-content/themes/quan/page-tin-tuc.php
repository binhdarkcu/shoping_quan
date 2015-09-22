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
                                <strong>Tin tức</strong>
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
                            <h1>Tin tức</h1>
                       </div>
                        <div class="category-products">
                            
                        <ul class="products-list" id="product-list-2046808">
                            <?php
                                //$query_category = get_category_post($category->name);
                                query_posts( array ( 'post_type'      => 'hot_news', 'posts_per_page' => -1 ) );
                                while (have_posts()) : the_post();
                                //if(have_posts($query_category->$post)): while(have_posts($query_category->$post)): the_post($query_category->$post);
                                    $url = get_field('image_for_slider',get_the_ID());
                                    $bigImg = wp_get_attachment_url( get_post_thumbnail_id(get_the_ID()) );
                                    $price = get_field('product_price',get_the_ID());
                                    $price = number_format( $price, 0, ',', '.');
                            ?>
                            <li class="item">
                                <input type="hidden" value="4" name="product">
                                <div class="inner-item">
                                    <div class="outer-image">
                                        <a href="<?php echo get_the_permalink(get_the_ID())?>" title="<?php echo get_the_title(get_the_ID())?>" class="product-image">
                                            <img class="front product-collection-image" src="<?php echo $bigImg;?>" alt="<?php echo get_the_title(get_the_ID())?>">
                                        </a>
                                    </div>
                                        <div class="product-shop">
                                            <div class="f-fix">
                                                <h2 class="product-name">
                                                    <a href="<?php echo get_the_permalink(get_the_ID())?>" title="<?php echo get_the_title(get_the_ID())?>">
                                                        <span><?php echo get_the_title(get_the_ID())?></span>
                                                    </a>
                                                </h2>


                                            <div class="desc std">
                                                  <p><?php echo wp_trim_words(get_content_by_id(get_the_ID()), 50);?>    </p>                               
                                                  <a href="<?php echo get_the_permalink(get_the_ID())?>" title="<?php echo get_the_title(get_the_ID())?>" class="link-learn">Chi tiết</a>
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
        <?php get_sidebar('san-pham')?>
    </div>
</div>
        
<?php get_footer();?>
