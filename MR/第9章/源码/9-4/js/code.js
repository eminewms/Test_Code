

(function(){
    var Code = (function(){
        var canvas,ctx,W,H,picWidth,gap,codeInfo,vCode = [],sources = {};
        var init = function(){
            W = 293;
            H = 190;
            L=260;
            var codeContainer = document.createElement("div");
            codeContainer.style.cssText=";width:"+W+"" +
                "px;height:"+H+"px;position:relative;"+";margin-left:"+L+"px";
            codeContainer.id = "codeContainer";
            canvas = document.createElement("canvas");
            ctx = canvas.getContext("2d");
            picWidth = 70;
            gap = 3;
            canvas.width = W;
            canvas.height = H;
            codeContainer.appendChild(canvas);
            document.body.appendChild(codeContainer);
            sources = [
                { "name" : "ant" ,"title" : "蚂蚁" , "count" : 2},
                { "name" : "bee" ,"title" : "蜜蜂" , "count" : 2},
                { "name" : "fan" ,"title" : "电风扇" , "count" : 1},
                { "name" : "flower" ,"title" : "花儿" , "count" : 2},
                { "name" : "hopper" ,"title" : "蚂蚱" , "count" : 2}
            ];
            generateCode();
            createRefreshButton();
        }
        var generateCode = function(){
            clear();
            codeInfo = getTarget();
            var pics = getPics();
            drawTitle(codeInfo.title);
            particlePics(pics);
        }
        var createRefreshButton = function(){
            var d = document.createElement("div");
            d.className = 'refresh';
            canvas.parentNode.appendChild(d);
        }
        var drawTitle = function(name){
            var pre = "请点击下图中",middle = "所有的";
            ctx.fillStyle = "#000";
            ctx.font = "16px Arial";
            ctx.fillText(pre,2,16);
            ctx.fillStyle = "#f00";
            ctx.fillText(middle,textWidth(pre,16)+rand(1,3),16);
            ctx.fillStyle = randC();
            ctx.font = "20px Arial";
            ctx.fillText(name,textWidth(pre+middle,16)+rand(2,5),16);
            drawLine();
        }
        var drawLine = function(){
            ctx.beginPath();
            ctx.moveTo(0,25);
            ctx.lineTo(W,25);
            ctx.stroke();
        }
        var getPics = function(){
            var codeCount = Math.round(Math.random()*(codeInfo.count<8?codeInfo.count:8)),itemArr = [],extraArr = [],pics = [];
            codeCount = codeCount ? codeCount: codeCount + 1;
            var extraCount = 8 - codeCount;
            for(var i=0;i<codeInfo.count;i++){
                var src = "images/"+ codeInfo.name + "/" + (i+1) +".jpg";
                var im  = new Image();
                im.src = src;
                itemArr.push({
                    'img' : im,
                    'name' : codeInfo.name
                });
            }
            while(codeCount>0){
                var index = Math.floor(Math.random()*itemArr.length),src = itemArr[index];
                pics.push(src);
                itemArr.splice(index,1);
                codeCount--;
            }
            for(var index in sources){
                var item = sources[index];
                if(item.name!=codeInfo.name){
                    for(var i=0;i<item.count;i++){
                        var src = "images/"+ item.name + "/" + (i+1) +".jpg";
                        var im  = new Image();
                        im.src = src;
                        extraArr.push({
                            'img' : im,
                            'name' : item.name
                        });
                    }
                }
            }
            while(extraCount>0){
                var index = Math.floor(Math.random()*extraArr.length),src = extraArr[index];
                pics.push(src);
                extraArr.splice(index,1);
                extraCount--;
            }
            return pics;
        }
        var particlePics = function(pics){
            var pics = randArray(pics);
            for(var i=0,l=pics.length;i<l;i++){
                (function(i){
                    var item = pics[i],im = item.img,x = (i%4)*(picWidth+gap),y=((i/4)>>0)*(picWidth+gap)+35;
                    if(item.name===codeInfo.name){
                        vCode.push({
                            'x' : x,
                            'y' : y
                        })
                    }
                    im.onload = function(){
                        ctx.drawImage(im,x,y);
                    }
                })(i);
            }
        }
        var verify = function(select,callback){
            var len = vCode.length;
            callback && callback();
            if(select.length!==len){
                alert("验证失败！");
                reload();
                return;
            }
            var count = 0;
            for(var i=0,l=select.length;i<l;i++){
                var item = select[i];
                vCode.map(function(row){
                    if(item.x>=row.x&&item.x<=row.x+picWidth&&item.y>=row.y&&item.y<=row.y+picWidth){
                        count++;
                    }
                })
            }
            if(count!==len){
                alert("验证失败！");
                reload();
                return;
            }else{
                alert("验证成功！");
                reload();
                return;
            }
        }
        var reload = function(){
            vCode.length = 0;
            generateCode();
        }
        var clear = function(){
            ctx.clearRect(0,0,W,H);
        }
        var getTarget = function(){
            return sources[Math.floor(Math.random()*sources.length)];
        }
        var textWidth = function(string,size){
            ctx.font = size + "px Arial";
            return ctx.measureText(string).width;
        }
        var rand = function(min,max){
            return Math.random() * (max - min) + min;
        }
        var randC = function(){
            return "rgb(" + ((Math.random() * 255)>>0) + "," + ((Math.random() * 255)>>0) + "," +((Math.random() * 255)>>0) +")";
        }
        var randArray = function(arr){
            return arr.sort(function(a,b){
                return Math.random()>0.5?true:false;
            });
        }
        return {
            init : init,
            verify : verify,
            reload : reload
        }
    })();
    window.Code = window.Code || Code;
})();