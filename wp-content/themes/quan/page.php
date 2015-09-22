<?php get_header();?>
	<div class="main-container col1-layout">
	    <div class="main">
	        <div class="container">
	            <div class="row">
	                <div class="col-main col-xs-12 col-sm-12 col-md-12" style="padding: 50px 0;">
	                	<h3><?php echo get_the_title();?></h3>
	                	<?php if(have_posts()) : while(have_posts()) : the_post(); ?>
							<div id="post">
							<?php the_content(); ?>
							</div> <!-- .post -->
						<?php endwhile; endif;?>
	                	<a href="<?php echo bloginfo('home')?>" style="text-decoration: underline;">Quay về trang chủ</a>
	                </div>
	            </div>
	        </div>
	    </div>
    </div>
<?php get_footer();?>