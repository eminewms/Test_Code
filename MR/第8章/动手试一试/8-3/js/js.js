/**
 * Created by Administrator on 2018/4/3.
 */

$(document).ready(
    $(".list li").click(function(){
        var left=$(this).offset().left+$(".list").offset().left-parseInt($(".list").css("margin-left"));
        $(".list p").css("left",left+"px")
    })
)