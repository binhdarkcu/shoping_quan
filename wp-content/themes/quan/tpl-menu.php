<div class="arw-mobile-menu">
    <div class="arw-mobile-menu-header">
        <span class="arw-mobile-menu-title">
            <i class="fa fa-bars"></i><span>Menu</span>
        </span>
        <span class="arw-close-canvas"><i class="fa fa-close"></i></span>
    </div>
    <div class="sidebar-menu">
        <?php

        $defaults = array(
            'theme_location'  => 'menu_top',
            'menu'            => '',
            'container_class' => '',
            'container_id'    => '',
            'menu_class'      => 'nav-accordion nav-mobile-accordion',
            'menu_id'         => 'arw_accordionmenu',
            'echo'            => true,
            'fallback_cb'     => 'wp_page_menu',
            'before'          => '',
            'after'           => '',
            'link_before'     => '',
            'link_after'      => '',
            'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
            'depth'           => 0,
            'walker'          => ''
        );

        wp_nav_menu( $defaults );

        ?>
       
        <script type="text/javascript">
            jQuery(document).ready(function () {
                jQuery("#arw_accordionmenu").arwAccordionMenu({
                    accordion: true,
                    speed: 400,
                    closedSign: 'collapse',
                    openedSign: 'expand',
                    mouseType: 0,
                    easing: 'easeInOutQuad'
                });
            });
        </script>
    </div>
</div>