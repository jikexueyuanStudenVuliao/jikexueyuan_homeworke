$(document).ready(function(){

	$('#showmore,.showmoreList').hover(function(){
				$('.showmoreList').stop(true,true).fadeIn(0);
				$('#showmore').css({"background-color":"#f9f9f9","color":"#000"});
			},function(){
				$('.showmoreList').stop(true,true).fadeOut(200);
				$('#showmore').stop(true,true).delay(500).css({"background-color":"#398BFB","color":"#fff"});
			});

	$('.mainNav a').click(function(){
				if(!$(this).hasClass('active')){
					$('.mainNav a').removeClass('active').eq($(this).index()).addClass('active');
					$('.navSet').stop(true,true).hide(200).eq($(this).index()).show(300);
				}
			});

	//当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消失  
        $(function () {  
            $(window).scroll(function(){  
                if ($(window).scrollTop()>100){  
                    $("#back-to-top").fadeIn(1500);  
                }  
                else  
                {  
                    $("#back-to-top").fadeOut(1500);  
                }  
            });  
  
            //当点击跳转链接后，回到页面顶部位置  
  
            $("#back-to-top").click(function(){  
                $('body,html').animate({scrollTop:0},1000);  
                return false;  
            });  
        }); 
})

