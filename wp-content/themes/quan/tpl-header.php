<header class="header-container header_fixed_menu">
    <div id="header">
        <script type="text/javascript">
            var HOMEURL = "<?php echo home_url();?>";
            var BLOGHOME = "<?php echo site_url();?>";
            var LANG = "<?php echo $curlang;?>";
        </script>
        <div class="header-main header-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                        <div class="header-logo">
                            <h1 class="logo"><a href="<?php echo get_bloginfo('home')?>" title="<?php echo get_bloginfo('name')?>" class="logo"><img src="<?php echo get_field('header_logo','option')?>"/></a></h1>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 col-lg-offset-1">
                        <div class="arw-search-container data-width-3">
                            <?php
                                if (isset( $_GET['search'] ) && wp_verify_nonce($_GET['search'], 'act_search') ){
                                    global $wpdb;

                                    if (!empty($_GET['cat']) && !empty($_GET['q'])) {
                                         $link = site_url().'/search/?category='.$_GET['cat'].'&q='.$_GET['q'];
                                         echo "<script>setTimeout(function(){window.location.href = '$link';},1);</script>";
                                    } else if (!empty($_GET['cat']) && empty($_GET['q'])) {
                                        $link = get_category_link($_GET['cat']);
                                        echo "<script>setTimeout(function(){window.location.href = '$link';},1);</script>";
                                    }else{
                                        $link = site_url().'/search/?q='.$_GET['q'];
                                        echo "<script>setTimeout(function(){window.location.href = '$link';},1);</script>";
                                    }
                                }
                            ?>
                            <form id="search_mini_form" action="" method="get">
                                <div class="form-search">
                                    <select class="search-select-cat" name="cat">
                                        <option value="0">Danh mục</option>
                                        <?php 
                                         $i=0;
                                         $args_category = array(
                                            'orderby'                  => 'name',
                                            'order'                    => 'ASC',
                                            'exclude'                  => '',
                                            'include'                  => '',
                                            'taxonomy'                 => 'category'

                                        ); 
                                          $categories = get_categories($args_category); 
                                          foreach ( $categories as $category ) {
                                            $i++;
                                        ?>
                                        <option value="<?php echo $category->term_id;?>"><?php echo $category->name;?></option>
                                        <?php
                                            }
                                         ?>
                                    </select>
                                    <input id="search" placeholder="Tìm kiếm sản phẩm" type="text" name="q" value="" class="input-text" maxlength="128" />
                                    <button type="submit" title="Search" class="btn btn2"><span><span><i class="fa fa-search"></i></span></span></button>
                                    <?php wp_nonce_field('act_search','search');?>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-navigation">
            <div class="container">
                <div style="position: relative;">
                    <nav class="nav-primary-container">
                        <div class="arw-toggle-menu-mobile visible-xs">
                            <div class="arw-btn-menu-mobile">
                                <label>Menu</label>
                                <span class="icon_menu"></span>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="nav-container hidden-xs">
                            <?php

                            $defaults = array(
                                'theme_location'  => 'menu_top',
                                'menu'            => '',
                                'container_class' => '',
                                'container_id'    => '',
                                'menu_class'      => 'megamenu',
                                'menu_id'         => 'arw_nav',
                                'echo'            => true,
                                'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>'
                            );

                            wp_nav_menu( $defaults );

                            ?>
                            <script type="text/javascript">
                                jQuery(function () {
                                    jQuery(".megamenu").megamenu({
                                        'animation': 'show',
                                        'mm_timeout': 0
                                    });
                                });
                            </script>
                            <!--ul id="arw_nav" class="megamenu">
                                <li class="level0 home level-top  active m-dropdown ">
                                    <a href="http://m2.arexmage.com/arw_dots/" class="level-top"><span>Home</span></a>
                                </li>
                                <li class="level0 nav-1 level-top first parent parent">
                                    <a class="level-top" href="http://m2.arexmage.com/arw_dots/tv-video.html">
                                        <span>TV &amp; Video</span>
                                    </a>
                                    <div class="level0 sub-wrapper shown-sub" style="display:none; height:auto;">
                                        <div class="arwmenu-block arwmenu-block-center menu-items grid12-12 itemgrid itemgrid-4col">
                                            <ul class="level0">
                                                <li class="level1 groups item nav-1-1 first">
                                                    <a class="title-group" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-type.html">
                                                        <span>TVs by Type</span>
                                                    </a>
                                                    <div class="groups-wrapper">
                                                        <ul class="level1">
                                                            <li class="level2 no-child nav-1-1-1 first">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-type/4k-ultra-hd-tvs.html">
                                                                    <span>4K Ultra HD TVs</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-1-2">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-type/curved-tvs.html">
                                                                    <span>Curved TVs</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-1-3">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-type/led-lcd-tvs.html">
                                                                    <span>LED &amp; LCD TVs</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-1-4">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-type/oled-tvs.html">
                                                                    <span>OLED TVs</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-1-5 last">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-type/smart-tvs.html">
                                                                    <span>Smart TVs</span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="level1 groups item nav-1-2">
                                                    <a class="title-group" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-screen-size.html">
                                                        <span>TVs by Screen Size</span>
                                                    </a>
                                                    <div class="groups-wrapper">
                                                        <ul class="level1">
                                                            <li class="level2 no-child nav-1-2-6 first">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-screen-size/32-inches-and-under.html">
                                                                    <span>32 Inches and Under</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-2-7">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-screen-size/33-to-43-inches.html">
                                                                    <span>33 to 43 Inches</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-2-8">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-screen-size/44-to-49-inches.html">
                                                                    <span>44 to 49 Inches</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-2-9">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-screen-size/50-to-59-inches.html">
                                                                    <span>50 to 59 Inches</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-2-10 last">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-screen-size/60-inches-and-up.html">
                                                                    <span>60 Inches and Up</span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="level1 groups item nav-1-3">
                                                    <a class="title-group" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-price.html">
                                                        <span>TVs by Price</span>
                                                    </a>
                                                    <div class="groups-wrapper">
                                                        <ul class="level1">
                                                            <li class="level2 no-child nav-1-3-11 first">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-price/under-500.html">
                                                                    <span>Under $500</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-3-12">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-price/500-to-999.html">
                                                                    <span>$500 to $999</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-3-13">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-price/1-000-to-1-999.html">
                                                                    <span>$1,000 to $1,999</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-3-14">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-price/2-000-to-2-999.html">
                                                                    <span>$2,000 to $2,999</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-3-15 last">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/tvs-by-price/3-000-and-above.html">
                                                                    <span>$3,000 and Above</span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="level1 groups item nav-1-4 last">
                                                    <a class="title-group" href="http://m2.arexmage.com/arw_dots/tv-video/videos.html">
                                                        <span>Videos</span>
                                                    </a>
                                                    <div class="groups-wrapper">
                                                        <ul class="level1">
                                                            <li class="level2 nav-1-4-16 first parent">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/videos/streaming-media-players.html">
                                                                    <span>Streaming Media Players</span>
                                                                </a>
                                                                <div class="level2 sub-wrapper shown-sub" style="display:none; height:auto;">
                                                                    <ul class="level2">
                                                                        <li class="level3 no-child nav-1-4-16-1 first">
                                                                            <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/videos/streaming-media-players/stream-content.html">
                                                                                <span>Stream Content</span>
                                                                            </a>
                                                                        </li>
                                                                        <li class="level3 no-child nav-1-4-16-2">
                                                                            <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/videos/streaming-media-players/enhance-live-tv.html">
                                                                                <span>Enhance Live TV</span>
                                                                            </a>
                                                                        </li>
                                                                        <li class="level3 no-child nav-1-4-16-3">
                                                                            <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/videos/streaming-media-players/cast-content-to-your-tv.html">
                                                                                <span>Cast Content to Your TV</span>
                                                                            </a>
                                                                        </li>
                                                                        <li class="level3 no-child nav-1-4-16-4 last">
                                                                            <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/videos/streaming-media-players/best-sellers.html">
                                                                                <span>Best Sellers</span>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </li>
                                                            <li class="level2 no-child nav-1-4-17">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/videos/blu-ray-players.html">
                                                                    <span>Blu-ray Players</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-4-18">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/videos/projectors.html">
                                                                    <span>Projectors</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-4-19">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/videos/home-audio.html">
                                                                    <span>Home Audio</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-1-4-20 last">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/tv-video/videos/accessories.html">
                                                                    <span>Accessories</span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="level0 nav-2 level-top parent parent">
                                    <a class="level-top" href="http://m2.arexmage.com/arw_dots/computers.html">
                                        <span>Computers</span>
                                    </a>
                                    <div class="level0 sub-wrapper shown-sub" style="display:none; height:auto;">
                                        <div class="arwmenu-block arwmenu-block-center menu-items grid12-6 itemgrid itemgrid-2col">
                                            <ul class="level0">
                                                <li class="level1 groups item nav-2-1 first">
                                                    <a class="title-group" href="http://m2.arexmage.com/arw_dots/computers/laptops-tablets.html">
                                                        <span>Laptops &amp; Tablets</span>
                                                    </a>
                                                    <a href="http://m2.arexmage.com/arw_dots/computers/laptops-tablets.html" class="category_image"><img src="http://m2.arexmage.com/arw_dots/media/catalog/category/laptop_tablet.jpg" alt="" /></a>
                                                    <div class="groups-wrapper">
                                                        <ul class="level1">
                                                            <li class="level2 no-child nav-2-1-1 first">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/computers/laptops-tablets/laptops.html">
                                                                    <span>Laptops</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-2-1-2">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/computers/laptops-tablets/tablets.html">
                                                                    <span>Tablets</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-2-1-3">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/computers/laptops-tablets/2-in-1-computers.html">
                                                                    <span>2 in 1 Computers</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-2-1-4 last">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/computers/laptops-tablets/accessories.html">
                                                                    <span>Accessories</span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="level1 groups item nav-2-2 last">
                                                    <a class="title-group" href="http://m2.arexmage.com/arw_dots/computers/desktops-monitors.html">
                                                        <span>Desktops &amp; Monitors</span>
                                                    </a>
                                                    <a href="http://m2.arexmage.com/arw_dots/computers/desktops-monitors.html" class="category_image"><img src="http://m2.arexmage.com/arw_dots/media/catalog/category/desktop_monitor.jpg" alt="" /></a>
                                                    <div class="groups-wrapper">
                                                        <ul class="level1">
                                                            <li class="level2 no-child nav-2-2-5 first">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/computers/desktops-monitors/desktops.html">
                                                                    <span>Desktops</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-2-2-6">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/computers/desktops-monitors/monitors.html">
                                                                    <span>Monitors</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-2-2-7">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/computers/desktops-monitors/computer-accessories.html">
                                                                    <span>Computer Accessories</span>
                                                                </a>
                                                            </li>
                                                            <li class="level2 no-child nav-2-2-8 last">
                                                                <a class="" href="http://m2.arexmage.com/arw_dots/computers/desktops-monitors/pc-components.html">
                                                                    <span>PC Components</span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="menu-static-blocks arwmenu-block arwmenu-block-right grid12-6">
                                            <a href="#" title=""><img src="http://m2.arexmage.com/arw_dots/media/wysiwyg/arw/dots/_banners/computer_banner.jpg" alt="" /></a>
                                        </div>
                                    </div>
                                </li>
                                <li class="level0 level-top custom-cms-page  ">
                                    <a href="http://m2.arexmage.com/arw_dots/brands" class="level-top">
                                        <span>Shop By Brands</span>
                                    </a>
                                </li>
                            </ul-->
                        </div>
                        
                    </nav>
                    
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="advHeader">
            <img src="images/adv.jpg" border="0" style="width: 100%;">
        </div>
    </div>
</header>