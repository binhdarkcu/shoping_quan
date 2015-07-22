var arexworks;

function equalheight(container){
    var currentTallest = 0,
        currentRowStart = 0,
        rowDivs = new Array(),
        $el,
        topPosition = 0;
    container.each(function() {
        $el = jQuery(this);
        jQuery($el).height('auto')
        topPostion = $el.position().top;
        if (currentRowStart != topPostion) {
            for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
                rowDivs[currentDiv].height(currentTallest);
            }
            rowDivs.length = 0; // empty the array
            currentRowStart = topPostion;
            currentTallest = $el.height();
            rowDivs.push($el);
        } else {
            rowDivs.push($el);
            currentTallest = (currentTallest < $el.height()) ? ($el.height()) : (currentTallest);
        }
        for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
            rowDivs[currentDiv].height(currentTallest);
        }
    });
}

function equalheight2(container,class_name){
    var rowDivs = [],
        rowCount = container.find('li.item').first().children('.wrapper-item').length;
    for(var i = 0 ; i < rowCount ; i++){
        rowDivs.push(new Array());
    }
    container.find('li.item').each(function(){
        var i = 0;
        jQuery(this).children('.wrapper-item').each(function(){
            rowDivs[i].push(jQuery(this));
            i++;
        })
    });
    for(var i = 0 ; i < rowCount ; i++){
        var maxHeight = 0;
        for( var j = 0 ; j < rowDivs[i].length ; j++){
            rowDivs[i][j].find(class_name).height('auto');
            if(rowDivs[i][j].find(class_name).height() > maxHeight){
                maxHeight = rowDivs[i][j].find(class_name).height();
            }
        }
        for( var j = 0 ; j < rowDivs[i].length ; j++){
            rowDivs[i][j].find(class_name).height(maxHeight);
        }
    }
};

function arw_equal_height(container){
    equalheight(container);
    jQuery(window).resize(function(){
        equalheight(container);
    })
}
(function($) {
    'use strict';
    if(typeof arexworks === 'undefined'){
        arexworks = {}
    }
    var frontend = arexworks.Frontend = {
        init : function(){
            this.jQueryExtensions();
            this.equalHeight();
            this.selectBox();
            this.initTooltip();
            this.initOwlCarousel();
            this.toggleSidebarMenu();
            this.reviewFormClick();
            this.stickNavigation();
            this.scrollToTop();
            this.minusAndPlusQty();
            this.initToggleMenuTopLink();
            this.initToggleSidebar();
            this.countdown();
            this.another();
        },
        jQueryExtensions : function(){
            $.fn.extend({
                isTouchDevice : function(){
                    return ('ontouchstart' in window || navigator.maxTouchPoints > 0 || navigator.msMaxTouchPoints > 0);
                },
                isEmail : function(email){
                    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                    return re.test(email);
                },
                arwAccordionMenu: function(options) {
                    var defaults = {
                        accordion: 'true',
                        speed: 300,
                        closedSign: 'collapse',
                        openedSign: 'expand',
                        mouseType: 1
                    };
                    var opts = $.extend(defaults, options);
                    var $this = $(this);
                    $this.find("li").each(function() {
                        if($(this).find("ul").size() != 0){
                            $(this).find("a:first").after("<span class='"+ opts.closedSign +"'>"+ opts.closedSign +"</span>");
                            if($(this).find("a:first").attr('href') == "#"){
                                $(this).find("a:first").click(function(){return false;});
                            }
                        }
                    });
                    $this.find("li.active").each(function() {
                        $(this).parents("ul").slideDown(opts.speed, opts.easing);
                        $(this).parents("ul").parent("li").find("a:first").next().html(opts.openedSign).removeClass(opts.closedSign).addClass(opts.openedSign);
                        $(this).find("ul:first").slideDown(opts.speed, opts.easing);
                        $(this).find("a:first").next().html(opts.openedSign).removeClass(opts.closedSign).addClass(opts.openedSign);
                    });
                    if(opts.mouseType==0){
                        $this.find("li span").click(function() {
                            if($(this).parent().find("ul").size() != 0){
                                if(opts.accordion){
                                    //Do nothing when the list is open
                                    if(!$(this).parent().find("ul").is(':visible')){
                                        var parents = $(this).parent().parents("ul"),
                                            visible = $this.find("ul:visible");
                                        visible.each(function(visibleIndex){
                                            var close = true;
                                            parents.each(function(parentIndex){
                                                if(parents[parentIndex] == visible[visibleIndex]){
                                                    close = false;
                                                    return false;
                                                }
                                            });
                                            if(close){
                                                if($(this).parent().find("ul") != visible[visibleIndex]){
                                                    $(visible[visibleIndex]).slideUp(opts.speed, function(){
                                                        $(this).parent("li").find("a:first").next().html(opts.closedSign).removeClass(opts.openedSign).addClass(opts.closedSign);
                                                    });
                                                }
                                            }
                                        });
                                    }
                                }
                                if($(this).parent().find("ul:first").is(":visible")){
                                    $(this).parent().find("ul:first").slideUp(opts.speed, opts.easing, function(){
                                        $(this).parent("li").find("a:first").next().delay(opts.speed+1000).html(opts.closedSign).removeClass(opts.openedSign).addClass(opts.closedSign);
                                    });
                                }else{
                                    $(this).parent().find("ul:first").slideDown(opts.speed, opts.easing, function(){
                                        $(this).parent("li").find("a:first").next().delay(opts.speed+1000).html(opts.openedSign).removeClass(opts.closedSign).addClass(opts.openedSign);
                                    });
                                }
                            }
                        });
                    }
                    if(opts.mouseType>0){
                        $this.find("li a").mouseenter(function() {
                            if($(this).parent().find("ul").size() != 0){
                                if(opts.accordion){
                                    if(!$(this).parent().find("ul").is(':visible')){
                                        var parents = $(this).parent().parents("ul"),
                                            visible = $this.find("ul:visible");
                                        visible.each(function(visibleIndex){
                                            var close = true;
                                            parents.each(function(parentIndex){
                                                if(parents[parentIndex] == visible[visibleIndex]){
                                                    close = false;
                                                    return false;
                                                }
                                            });
                                            if(close){
                                                if($(this).parent().find("ul") != visible[visibleIndex]){
                                                    $(visible[visibleIndex]).slideUp(opts.speed, function(){
                                                        $(this).parent("li").find("a:first").next().html(opts.closedSign).addClass(opts.closedSign);
                                                    });
                                                }
                                            }
                                        });
                                    }
                                }
                                if($(this).parent().find("ul:first").is(":visible")){
                                    $(this).parent().find("ul:first").slideUp(opts.speed, function(){
                                        $(this).parent("li").find("a:first").next().delay(opts.speed+1000).html(opts.closedSign).removeClass(opts.openedSign).addClass(opts.closedSign);
                                    });
                                }else{
                                    $(this).parent().find("ul:first").slideDown(opts.speed, function(){
                                        $(this).parent("li").find("a:first").next().delay(opts.speed+1000).html(opts.openedSign).removeClass(opts.closedSign).addClass(opts.openedSign);
                                    });
                                }
                            }
                        });
                    }
                },
                megamenu : function(options){
                    options = $.extend({
                        animation: "show",
                        mm_timeout: 0
                    }, options);
                    var megamenu_object = this;
                    megamenu_object.find("li.parent").each(function(){
                        var cat_icon = '<i class="item-has-sub fa fa-angle-right"></i>';
                        if($(this).hasClass('level0')){
                            cat_icon = '<i class="item-has-sub fa fa-angle-down"></i>';
                        }
                        $(this).children('a').append(cat_icon);
                        var mm_item = $(this).children('div');
                        mm_item.hide();
                        mm_item.wrapInner('<div class="list_item_dropdown clearfix"></div>');
                        var timer = 0;
                        $(this).bind('mouseenter', function(e){
                            $(this).children('a').addClass('arw-hover');
                            var mm_item_obj = $(this).children('div');
                            clearTimeout(timer);
                            var check_menu = $(this).find('div.list_item_dropdown');
                            if(mm_item.length >0 && check_menu.length >0){
                                if(check_menu.html().length>1){
                                    timer = setTimeout(function(){
                                        switch(options.animation) {
                                            case "show":
                                                mm_item_obj.show().addClass("shown-sub");
                                                break;
                                            case "slide":
                                                mm_item_obj.height("auto");
                                                mm_item_obj.stop().slideDown('fast', function(){
                                                    mm_item_obj.css("overflow","inherit");
                                                }).addClass("shown-sub");
                                                break;
                                            case "fade":
                                                mm_item_obj.stop().fadeTo('fast', 1).addClass("shown-sub");
                                                break;
                                        }
                                        setTimeout(function(){
                                            arw_equal_height(mm_item.find('.products-grid li.item .product-info'));
                                        },200)
                                    }, options.mm_timeout);
                                }
                            }
                        });
                        $(this).bind('mouseleave', function(e){
                            var mm_item_obj = $(this).children('div');
                            $(this).children('a').removeClass('arw-hover');
                            clearTimeout(timer);
                            switch(options.animation) {
                                case "show":
                                    mm_item_obj.hide().removeClass('shown-sub');
                                    break;
                                case "slide":
                                    mm_item_obj.stop().removeClass('shown-sub').slideUp( 'fast',  function() {});
                                    break;
                                case "fade":
                                    mm_item_obj.stop().removeClass('shown-sub').fadeOut( 'fast', function() {});
                                    break;
                            }
                        });
                    });
                    this.show();
                }
            });
        },
        equalHeight : function(){
            setTimeout(function(){
                arw_equal_height($('.element_equal_height'));
            },1000);
        },
        selectBox : function(){
            if(typeof $.fn.selectpicker === 'function'){
                var selectpickerEl = [
                    '.header-link select',
                    '.sort-by select',
                    '.limiter select',
                    '.search-select-cat'
                ];
                selectpickerEl.each(function(index){
                    var obj = $(index);
                    if(!obj.hasClass('hasInstall')){
                        obj.selectpicker();
                        obj.addClass('hasInstall');
                    }
                })
            }
        },
        initTooltip : function(){
            $('[data-toggle="tooltip"]').tooltip();
        },
        minusAndPlusQty : function(){
            var minus = $('.arw-box-quantity .wrap').find('.qty-minus'),
                plus = $('.arw-box-quantity .wrap').find('.qty-plus');
            if(minus.length > 0){
                minus.on('click',function(){
                    var value = parseInt($(this).parent().children('.qty').val());
                    if(value > 0){
                        value = value - 1;
                    }
                    $(this).parent().children('.qty').val(value).trigger('onchange');
                })
            }
            if(plus.length > 0){
                plus.on('click',function(){
                    var value = parseInt($(this).parent().children('.qty').val());
                    value = value + 1;
                    $(this).parent().children('.qty').val(value).trigger('onchange');
                })
            }
        },
        initOwlCarousel : function(){
            function changePositionControl($owl){
                var _item_height = $owl.find('.outer-image').eq(0).innerHeight(),
                    _margin_top = Math.round((_item_height - 40) / 2) + 1;
                $owl.find('.owl-nav').css('top',_margin_top);
            }
            if(typeof $.fn.owlCarousel !== 'undefined'){

                $('.arw-carousel').each(function(){
                    var responsive = '';
                    if($(this).data('responsive')){
                        responsive = '"0":{"items":1}';
                        var str = $(this).data('responsive');
                        var tmp2 = str.split(",");
                        if(tmp2 != null && tmp2.length > 0){
                            for(var i = 0 ; i < tmp2.length ; i++){
                                var tmp3 = tmp2[i].split(":");
                                if(tmp3.length > 1){
                                    responsive += ',"' + tmp3[0] + '":';
                                    responsive += '{"items":'+tmp3[1]+'}';
                                }else{
                                    responsive = '';
                                }
                            }
                        }
                        responsive = '{' + responsive + '}';
                    }
                    var opts = {
                        autoplay : $(this).data('autoplay') ? Boolean($(this).data('autoplay')) : false,
                        nav:$(this).data('nav') ? Boolean($(this).data('nav')) : false,
                        loop:$(this).data('loop') ? Boolean($(this).data('loop')) : false,
                        dots:$(this).data('dot') ? Boolean($(this).data('dot')) : false,
                        items:$(this).data('item') ? parseInt($(this).data('item')) : 1,
                        margin:$(this).data('margin') ? parseInt($(this).data('margin')) : 0,
                        themeClass:$(this).data('theme_class') ? $(this).data('theme_class') : 'owl-theme'
                    };
                    if(responsive != ''){
                        opts.responsive = JSON.parse(responsive)
                    }
                    if($(this).data('autoplaytimeout')){
                        opts.autoplayTimeout = parseInt($(this).data('autoplaytimeout'));
                    }
                    if($(this).data('smartspeed')){
                        opts.smartSpeed = parseInt($(this).data('smartspeed'));
                    }
                    if($(this).data('autoplayspeed')){
                        opts.autoplaySpeed = parseInt($(this).data('autoplayspeed'));
                    }
                    if($(this).data('navspeed')){
                        opts.navSpeed = parseInt($(this).data('navspeed'));
                    }
                    if($(this).data('dotsspeed')){
                        opts.dotsSpeed = parseInt($(this).data('dotsspeed'));
                    }
                    var _owl = $(this);
                    _owl.owlCarousel(opts);
                    if($(this).data('btn_next')){
                        $($(this).data('btn_next')).on('click',function(){
                            _owl.trigger('next.owl.carousel');
                        })
                    }
                    if($(this).data('btn_prev')){
                        $($(this).data('btn_prev')).on('click',function(){
                            _owl.trigger('prev.owl.carousel');
                        })
                    }
                });

                $('.arw-carousel-for-product').each(function(){
                    var responsive = '' ,
                        _owl = $(this).find('.products-carousel');
                    if(_owl.length > 0){
                        if($(this).data('responsive')){
                            responsive = '"0":{"items":1}';
                            var str = $(this).data('responsive');
                            var tmp2 = str.split(",");
                            if(tmp2 != null && tmp2.length > 0){
                                for(var i = 0 ; i < tmp2.length ; i++){
                                    var tmp3 = tmp2[i].split(":");
                                    if(tmp3.length > 1){
                                        responsive += ',"' + tmp3[0] + '":';
                                        responsive += '{"items":'+tmp3[1]+'}';
                                    }else{
                                        responsive = '';
                                    }
                                }
                            }
                            responsive = '{' + responsive + '}';
                        }
                        var opts = {
                            autoplay : $(this).data('autoplay') ? Boolean($(this).data('autoplay')) : false,
                            nav:$(this).data('nav') ? Boolean($(this).data('nav')) : false,
                            navText: ["<i class='arrow_left'></i>","<i class='arrow_right'></i>"],
                            loop:$(this).data('loop') ? Boolean($(this).data('loop')) : true,
                            dots:$(this).data('dot') ? Boolean($(this).data('dot')) : false,
                            items:$(this).data('item') ? parseInt($(this).data('item')) : 1,
                            margin:$(this).data('margin') ? parseInt($(this).data('margin')) : 0,
                            themeClass:$(this).data('theme_class') ? $(this).data('theme_class') : 'owl-theme'
                        };
                        if(responsive != ''){
                            opts.responsive = JSON.parse(responsive)
                        }
                        if($(this).data('autoplaytimeout')){
                            opts.autoplayTimeout = parseInt($(this).data('autoplaytimeout'));
                        }
                        if($(this).data('smartspeed')){
                            opts.smartSpeed = parseInt($(this).data('smartspeed'));
                        }
                        if($(this).data('autoplayspeed')){
                            opts.autoplaySpeed = parseInt($(this).data('autoplayspeed'));
                        }
                        if($(this).data('navspeed')){
                            opts.navSpeed = parseInt($(this).data('navspeed'));
                        }
                        if($(this).data('dotsspeed')){
                            opts.dotsSpeed = parseInt($(this).data('dotsspeed'));
                        }
                        _owl.owlCarousel(opts);

                        if($(this).data('btn_next')){
                            $($(this).data('btn_next')).on('click',function(){
                                _owl.trigger('next.owl.carousel');
                            })
                        }
                        if($(this).data('btn_prev')){
                            $($(this).data('btn_prev')).on('click',function(){
                                _owl.trigger('prev.owl.carousel');
                            })
                        }
                    }
                });
                setTimeout(function(){
                    $('.owl-carousel').each(function(){
                        var $this = $(this);
                        changePositionControl($this);
                    })
                },500);
                $(document).on('refresh.owl.carousel','.owl-carousel',function(e){
                    var $this = $(this);
                    setTimeout(function(){
                        changePositionControl($this);
                    },1100);
                })
            }
        },
        initOwlGalleryImage : function($owl){
            $owl.each(function(i, el)
            {
                var $this = $(el),
                    $images = $this.find('.thumbnail-item');
                if($images.length > 1)
                {
                    $this.append( '<div class="catalog-owl-nav"><div class="catalog-owl-prev"><i class="arrow_left"></i></div><div class="catalog-owl-next"><i class="arrow_right"></i></div></div>' );
                    var	$nextprev = $this.find('.catalog-owl-prev, .catalog-owl-next');
                    $nextprev.on('click', function(ev)
                    {
                        ev.preventDefault();
                        var dir = $(this).hasClass('catalog-owl-prev') ? -1 : 1,
                            $curr = $images.filter(':not(.hidden-slowly)'),
                            $next = $curr.next();
                        if(dir == 1)
                        {
                            if($next.length == 0)
                                $next = $images.first();
                        }
                        else
                        {
                            $next = $curr.prev();
                            if($next.length == 0)
                                $next = $images.last();
                        }
                        $next.addClass('enter-in notrans ' + (dir == -1 ? 'ei-left' : '')).removeClass('hidden hidden-slowly hs-left hs-right');
                        $curr.addClass('hidden-slowly ' + (dir == -1 ? 'hs-left' : ''));
                        setTimeout(function(){ $next.removeClass('enter-in notrans ei-left'); }, 0);
                    });
                }
            });
        },
        toggleSidebarMenu : function(){
            var menu = $('.arw-mobile-menu'),
                body = $('body'),
                container = $('.wrapper > .page'),
                siteOverlay = $('.site-overlay,.arw-mobile-menu-header'),
                menuActiveClass = "arw-menu-open",
                menuBtn = $('.arw-btn-menu-mobile'),
                menuSpeed = 200,
                menuWidth = menu.width() + "px";

            function toggleMenu(){
                body.toggleClass(menuActiveClass);
            }

            function openMenuFallback(){
                body.toggleClass(menuActiveClass);
                menu.animate({left: "0px"}, menuSpeed);
                container.animate({left: menuWidth}, menuSpeed);
            }

            function closeMenuFallback(){
                body.removeClass(menuActiveClass);
                menu.animate({left: "-" + menuWidth}, menuSpeed);
                container.animate({left: "0px"}, menuSpeed);
            }

            var cssTransforms3d = (function csstransforms3d(){
                var el = document.createElement('p'),
                    supported = false,
                    transforms = {
                        'webkitTransform':'-webkit-transform',
                        'OTransform':'-o-transform',
                        'msTransform':'-ms-transform',
                        'MozTransform':'-moz-transform',
                        'transform':'transform'
                    };

                // Add it to the body to get the computed style
                document.body.insertBefore(el, null);

                for(var t in transforms){
                    if( el.style[t] !== undefined ){
                        el.style[t] = 'translate3d(1px,1px,1px)';
                        supported = window.getComputedStyle(el).getPropertyValue(transforms[t]);
                    }
                }

                document.body.removeChild(el);

                return (supported !== undefined && supported.length > 0 && supported !== "none");
            })();

            if(cssTransforms3d){
                menuBtn.click(function() {
                    toggleMenu();
                });
                siteOverlay.click(function(){
                    toggleMenu();
                });
            }else{
                menu.css({left: "-" + menuWidth});
                container.css({"overflow-x": "hidden"});
                var state = true;
                menuBtn.click(function() {
                    if (state) {
                        openMenuFallback();
                        state = false;
                    } else {
                        closeMenuFallback();
                        state = true;
                    }
                });
                siteOverlay.click(function(){
                    if (state) {
                        openMenuFallback();
                        state = false;
                    } else {
                        closeMenuFallback();
                        state = true;
                    }
                });
            }
        },
        reviewFormClick : function(){
            $('.product-view .rating-links a,.product-view .no-rating a').on('click',function(e){
                e.preventDefault();
                $('#product_tabs_tabreviews').trigger('click');
                var top = $('#product_tabs_tabreviews_contents').offset().top;
                $(window).scrollTop(top);
            })
        },
        stickNavigation : function(){
            if($('.header_fixed_menu').length > 0){
                var sticky_navigation_offset_top = $('.nav-primary-container').offset().top + $('.nav-primary-container').innerHeight();
                //var width_container = $('#header').children('.container').innerWidth();
                var sticky_navigation = function(){
                    var scroll_top = $(window).scrollTop();
                    if (scroll_top > sticky_navigation_offset_top && $(window).width() > 768) {
                        $('.header_fixed_menu').addClass('active-sticky')
                    } else {
                        $('.header_fixed_menu').removeClass('active-sticky')
                    }
                };
                sticky_navigation();
                $(window)
                    .scroll(function() {
                        sticky_navigation();
                    })
                    .resize(function(){
                        sticky_navigation();
                    })
            }
        },
        scrollToTop : function(){
            var html = '<div id="btn_control_totop"><a href="#" class="btn"><i class="arrow_up"></i></a></div>';
            $('body').append(html);
            var scroll_top = function(){
                if($(window).scrollTop() > $(window).height()){
                    $('#btn_control_totop > a').fadeIn();
                }else{
                    $('#btn_control_totop > a').fadeOut();
                }
            }
            scroll_top();
            $(window).scroll(function(){
                scroll_top();
            });
            $('#btn_control_totop > a').on('click',function(e){
                e.preventDefault();
                $('body,html').animate({
                    scrollTop:0
                },800);
            })
        },
        initToggleMenuTopLink : function(){
            var $btn = $('.arw-toggle-control');
            $btn.click(function(){
                $(this).closest('.arw-toggle-container').toggleClass('active');
            });
            $('body').on('click',function(e){
                if($(e.target).closest('.arw-toggle-container').length == 0){
                    $('.arw-toggle-container').each(function(){
                        $(this).removeClass('active');
                    })
                }
            })

            var $btn = $('.header-navigation .block-nav .block-title');
            $btn.click(function(){
                $(this).closest('.block-nav').toggleClass('active');
            });
            $('body').on('click',function(e){
                if($(e.target).closest('.block-nav').length == 0){
                    $('.block-nav').each(function(){
                        $(this).removeClass('active');
                    })
                }
            })
        },
        initToggleSidebar : function(){
            $('.arw-toggle-sidebar').on('click',function(){
                var sidebar = $(this).closest('.sidebar');
                if(sidebar.hasClass('active')){
                    sidebar.removeClass('active');
                }else{
                    sidebar.addClass('active');
                }
            })
            $('body').on('click',function(e){
                if($(e.target).closest('.sidebar').length == 0){
                    $('.sidebar').each(function(){
                        $(this).removeClass('active');
                    })
                }
            })
        },
        gridEqualHeight : function(){
            setTimeout(function(){
                arw_equal_height($('.products-grid:not(.products-slide) li.item .product-info'));
            },1000);
        },
        countdown : function(){
            if(typeof $.fn.countdown === "function"){
                $('.arw-countdown-for-product').each(function(){
                    if($(this).closest('.product-tab-list-mini').length > 0){
                        $(this).remove();
                    }
                })
                $('.arw-countdown-for-product').countdown({
                    dataAttr: 'cdate',
                    spaceCharacter:'',
                    template : '<div class="background-primary"><div class="c-item">%d</div><div class="c-item">%h</div><div class="c-item">%i</div><div class="c-item">%s</div></div>',
                    daysLeft : '',
                    hrsLeft : '',
                    minsLeft : '',
                    secLeft : ''
                });
            }
        },
        another : function(){
            $('ul#checkout-progress-state li').each(function(){
                if(!$(this).hasClass('active')){
                    $(this).prepend('<i class="fa fa-check"></i>');
                }
            })

            $('.search-select-cat a').on('click',function(){
                $(this).closest('.toggle-search2').addClass('active');
            });
//            if($('.toolbar-bottom .pager-select .pages').length == 0){
//                $('.toolbar-bottom').removeClass('toolbar-bottom');
//            }
            $('body').on('click',function(e){
                if($(e.target).closest('.toggle-search2').length == 0){
                    $('.toggle-search2').removeClass('active');
                }
            })
        }
    }
    var extension = arexworks.Extension = {
        init : function(){
            this.quickview();
        },
        quickview : function(){
            if(typeof $.fn.fancybox === "function"){
                $(".link-quickview")
                    .fancybox({
                        type:'iframe',
                        autoSize:false,
                        width:'80%',
                        height:'80%',
                        title : ''
                    });
                $('.arexworks-quickview-index a.link-wishlist').removeAttr('onclick');
                $('.arexworks-quickview-index a[href]').on('click',function(e){
                    var href = $(this).attr('href');
                    if($(this).hasClass('link-wishlist') || $(this).hasClass('link-compare')){
                        e.preventDefault();
                        parent.jQuery.fancybox.close();
                        parent.location.href = href;
                    }
                    if(typeof href !== typeof undefined && href !== false && href != '#' && $(this).closest('.product-img-box').length == 0 && $(this).closest('.product-options') == 0){
                        e.preventDefault();
                        parent.jQuery.fancybox.close();
                        parent.location.href = href;
                    }
                });
            }
            if(typeof $.fn.owlCarousel === 'function'){
                $('.arexworks-quickview-index .arw-carousel').owlCarousel({
                    dots : true,
                    nav : false,
                    autoplay : true,
                    items : 1
                })
            }
        }
    }
    $(function() {
        arexworks.Frontend.init();
        arexworks.Extension.init();
        if($.fn.isTouchDevice()){
            $('.megamenu .parent > a').on('click',function(e){
                if(!$(this).hasClass('click-go-go')){
                    $(this).addClass('click-go-go');
                    e.preventDefault();
                }
            })
        }
    });
    $(window).load(function(){
        arexworks.Frontend.gridEqualHeight();
    })
})(jQuery);

// override class ARWFilter
if(typeof ARWFilter != 'undefined'){
    var oldARWFilter = ARWFilter;
    ARWFilter = function () {
        oldARWFilter.apply(this, arguments);
        if (this.config.enable){
            document.observe('dom:loaded', function(){
                jQuery('[onchange^="setLocation"]').each(function(){
                    var onchange = jQuery(this).attr('onchange');
                    onchange = onchange.replace(/setLocation/g,'arwFilter.setAjaxLocation');
                    jQuery(this).attr('onchange',onchange);
                })
            }.bind(this));
        }
        this.sendRequest = function(url, success, error){
            if (this.config.enable){
                if (this.config.bar) NProgress.start();
                new Ajax.Request(url, {
                    parameters: this.getParams(),
                    onSuccess: function(transport){
                        try{
                            var response = transport.responseText.evalJSON(),
                                main = response.main ? response.main.replace(/setLocation/g, this.name+'.setAjaxLocation') : null,
                                layer = response.layer || null;

                            if (main && this.container) this.container.update(main);
                            if (layer && this.layer) this.layer.replace(layer);
                            setTimeout(function(){
                                this.collect();
                            }.bind(this));
                            if (success) success(transport);
                        }catch(e){
                            console.log(e.message);
                        }
                    }.bind(this),
                    onFailure: function(transport){
                        if (error) error(transport);
                    },
                    onComplete: function(){
                        if (this.config.bar) NProgress.done();
                        ajaxCartShoppCartLoad('.btn-cart');
                        ajaxCartShoppCartLoad('.link-cart');
                        jQuery(document).trigger('configurable-media-images-init');
                        arexworks.Frontend.selectBox();
                        arexworks.Frontend.gridEqualHeight();
                        arexworks.Frontend.countdown();
                    }.bind(this)
                });
            }else{
                setLocation(url);
            }
        }
    };
    ARWFilter.prototype = oldARWFilter.prototype;
}
