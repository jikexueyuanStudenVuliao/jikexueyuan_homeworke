/**
使用了单例模式 避免了jQuery对相同DOM元素的多次查找
*/

$(document).ready(function(){

var index = {
   
    instance:function(argument) {
        var me = this;
        if(me[argument]==undefined){
           me[argument] = $(argument);
           return me[argument];
        }else{
           return me[argument];
        }
    },
    bind:function() {
        var me = this;
        // me.instance(argument);
        $('#showmore,.showmoreList').hover(function(){
                me.instance('.showmoreList').stop(true,true).fadeIn(0);
               me.instance('#showmore').css({"background-color":"#f9f9f9","color":"#000"});
            },function(){
               me.instance('.showmoreList').stop(true,true).fadeOut(200);
                me.instance('#showmore').stop(true,true).delay(500).css({"background-color":"#398BFB","color":"#fff"});
            });//hover
        me.instance('.mainNav a').click(function(){
                if(!$(this).hasClass('active')){
                    me.instance('.mainNav a').removeClass('active').eq($(this).index()).addClass('active');
                    me.instance('.navSet').stop(true,true).hide(200).eq($(this).index()).show(300);
                }
            });
        $(window).scroll(function(){  
                if ($(window).scrollTop()>10){  
                    me.instance("#back-to-top").fadeIn(1500);  
                }  
                else  
                {  
                    me.instance("#back-to-top").fadeOut(1500);  
                }  
            });  
  
            //当点击跳转链接后，回到页面顶部位置  
  
            me.instance("#back-to-top").click(function(){  
                $('body,html').animate({scrollTop:0},100);  
                return false;  
            }); 
    }//bind
}//index

index.bind();
    // $('#showmore,.showmoreList').hover(function(){
    //          $('.showmoreList').stop(true,true).fadeIn(0);
    //          $('#showmore').css({"background-color":"#f9f9f9","color":"#000"});
    //      },function(){
    //          $('.showmoreList').stop(true,true).fadeOut(200);
    //          $('#showmore').stop(true,true).delay(500).css({"background-color":"#398BFB","color":"#fff"});
    //      });

    // $('.mainNav a').click(function(){
    //          if(!$(this).hasClass('active')){
    //              $('.mainNav a').removeClass('active').eq($(this).index()).addClass('active');
    //              $('.navSet').stop(true,true).hide(200).eq($(this).index()).show(300);
    //          }
    //      });

    //当滚动条的位置处于距顶部10像素以下时，跳转链接出现，否则消失  
     
        // $(window).scroll(function(){  
        //         if ($(window).scrollTop()>10){  
        //             $("#back-to-top").fadeIn(1500);  
        //         }  
        //         else  
        //         {  
        //             $("#back-to-top").fadeOut(1500);  
        //         }  
        //     });  
  
        //     //当点击跳转链接后，回到页面顶部位置  
  
        //     $("#back-to-top").click(function(){  
        //         $('body,html').animate({scrollTop:0},100);  
        //         return false;  
        //     }); 

})

