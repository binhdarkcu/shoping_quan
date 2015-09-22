<?php get_header('category');?>
<?php
    while ( have_posts() ) : the_post();
        $post = get_post(get_the_ID());
?>
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
                            <h2 class="product-name">
                                <span><?php echo get_the_title(get_the_ID())?></span>
                            </h2>
                        <div class="post_content">
                            <?php the_content();?>
                        </div>
</div>
   </div>
   <div class="col-left sidebar col-xs-12 col-sm-12 col-md-3 col-md-pull-9">
        <?php get_sidebar('san-pham')?>
    </div>
</div>
 <?php endwhile;?>       
<?php get_footer();?>
