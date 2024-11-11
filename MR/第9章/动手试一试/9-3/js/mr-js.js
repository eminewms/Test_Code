// JavaScript Document
    var imgcan = document.getElementById("imgcan"),
    glasscan = document.getElementById("glasscan"),
    imgContext = imgcan.getContext("2d");
    glassContext = glasscan.getContext("2d");
    img = new Image(),
    mouse = captureMouse(imgcan);
    img.src = "images/sj.png";
    img.onload = function(){
        imgContext.drawImage(img,50,50);
    }
    //获取元素内鼠标位置
    function captureMouse(element){
        var  mouse = {x:0 , y:0};
        element.addEventListener('mousemove' , function(event){
            var x , y;
            if(event.pageX || event.pageY){
                x = event.pageX;    //使用文档坐标而非窗口坐标
                y = event.pageY;
            }else{
                x = event.clientX + (document.body.scrollLeft ||
                        document.documentElement.scrollLeft);
                y = event.clientY + (document.body.scrollTop ||
                        document.documentElement.scrollTop);
            }
			//event.clientX  鼠标相对于浏览器窗口可视区的横坐标，可视区不包括工具栏和滚动条
			//document.body.scrollLeft滚动条滚动到右侧时，隐藏在滚动条左侧的宽度
            x -= element.offsetLeft;
            y -= element.offsetTop;
            mouse.x = x-620;
            mouse.y = y-70;
        } , false)
        return mouse;
    }
    //给画布绑定鼠标移动事件
    imgcan.onmousemove = function(){
		//在坐标原点出绘制一个和glasscan大小重合的矩形
        glassContext.clearRect(0,0,glasscan.width,glasscan.height);
        glasscan.style.left = mouse.x+200 + 'px';
		//glasscan的位置在鼠标位置向右200像素，向上80像素
        glasscan.style.top = mouse.y + 20+'px';
        glasscan.style.display = "block";
		//drawImage(image, sx, sy, sWidth, sHeight, dx, dy, dWidth, dHeight)
        var drawWidth = 50,drawHeight = 50;
		
    glassContext.drawImage(img,mouse.x-drawWidth/4,mouse.y-drawHeight/4,drawWidth,drawHeight,0,0,drawWidth*4,drawHeight*4);   //实现放大镜     
    };
	
    //绑定鼠标移出事件
    imgcan.onmouseout = function(){
		//当鼠标移出画布时，放大镜被隐藏
        glasscan.style.display = "none";
    }
