
var tim = new Date(); //创建事件对象
var hour1 = tim.getHours(); //获取当前时间的小时数
var min1 = tim.getMinutes(); //获取当前时间的分钟数
var sec1 = tim.getSeconds(); //获取当前时间的秒数
var maxtime = 3600 - min1 * 60 - sec1; //计算当前时间与下一个整点相差的秒数
function CountDown() {
    document.all.time2.innerHTML = (hour1 + 2) < 23 ? ((hour1 + 2) + ":00") : "0" + (hour1 - 22) + ":00";//下一场活动的时间
    document.all.time3.innerHTML = (hour1 + 3) < 23 ? ((hour1 + 3) + ":00") : "0" + (hour1 - 21) + ":00";//下下场活动的时间
    document.all.time4.innerHTML = (hour1 + 4) < 23 ? ((hour1 + 4) + ":00") : "0" + (hour1 - 20) + ":00";//最后一场活动的时间
    if (maxtime >= 0) {
        minutes = Math.floor((maxtime) / 60);//计算还剩多少分
        seconds = Math.floor(maxtime % 60);//计算还剩多少秒
        msg =  minutes + "分" + seconds + "秒";
        document.all.time1.innerHTML = msg;
        if (maxtime == 5 * 60) alert('注意，还有5分钟!');
        --maxtime;
    }
    else {
        clearInterval(timer);
        alert("时间到，结束!");
    }
}

timer = setInterval("CountDown()", 1000);

function handle(oEvent) {
    if (window.event) oEvent = window.event;     //处理兼容性，获得事件对象
    var oTarget;
    if (oEvent.srcElement)               		//处理兼容性，获取事件目标
        oTarget = oEvent.srcElement;
    else
        oTarget = oEvent.target;
    alert(oTarget.tagName);               		 //弹出目标的标记名称
}

window.onload = function () {
    var oImg = document.getElementsByTagName("img")[0];
    oImg.onclick = handle;
}