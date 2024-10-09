<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript">
    function show(){
    var birthday=prompt("请输入您的生日（例如：0121）：");    //弹出提示输入生日的对话框
    var month=birthday.substring(0,2);
    var day=parseInt(birthday.substring(2));
    var star = "";
    switch(month){
        case "01":
            if(day>19){
            	star="水瓶座"
            }else{
            	star = "摩羯座";
            }
            break;
        case "02":
            if(day>18){
            	star="双鱼座"
            }else{
            	star = "水瓶座";
            }
            break;
        case "03":
            if(day>20){
            	star="白羊座"
            }else{
            	star = "双鱼座";
            }
            break;
        case "04":
            if(day>19){
            	star="金牛座"
            }else{
            	star = "白羊座";
            }
            break;
        case "05":
            if(day>20){
            	star="双子座"
            }else{
            	star = "金牛座";
            }
            break;
        case "06":
            if(day>21){
            	star="巨蟹座"
            }else{
            	star = "双子座";
            }
            break;
        case "07":
            if(day>22){
            	star="狮子座"
            }else{
            	star = "巨蟹座";
            }
            break;
        case "08":
            if(day>22){
            	star="处女座"
            }else{
            	star = "狮子座";
            }
            break;
        case "09":
            if(day>22){
            	star="天秤座"
            }else{
            	star = "处女座";
            }
            break;
        case "10":
            if(day>23){
            	star="天蝎座"
            }else{
            	star = "天秤座";
            }
            break;
        case "11":
            if(day>20){
            	star="射手座"
            }else{
            	star = "天蝎座";
            }
            break;
        case "12":
            if(day>21){
            	star="摩羯座"
            }else{
            	star = "射手座";
            }
            break;             
    }
    alert("您的星座是"+star)
    window.status = "您的星座是"+star  // 状态栏只适用于旧版本的IE浏览器
}
</script>
<title>判断星座</title>
</head>
<body onload="show()">
</body>
</html>
