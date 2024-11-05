/**
 * Created by Administrator on 2018/6/6.
 */
function addb() {
    var ne = document.getElementById('ne').value;
    var vip = document.getElementById('vip').value;
    var vipnum = /^[0-9]{1,12}$/
    if ((ne.length == 0) || (vip.length == 0)) {
        alert('请输入完整信息');
    }
    else if (!vipnum.test(vip)) {
        alert('请正确输入')
    }
    else {
        var tb = document.getElementsByTagName('table')[0];
        var tr = document.createElement('tr');
        tb.appendChild(tr);
        var td1 = document.createElement('td');
        tr.appendChild(td1)
        td1.innerHTML = ne;
        var td2 = document.createElement('td');
        tr.appendChild(td2);
        td2.innerHTML = vip;
        var td3 = document.createElement('td');
        tr.appendChild(td3);
        td3.innerHTML = "<input type='button' onclick='dele(this)' value='删除'/>";
    }
}
function dele(c) {
    var tb = document.getElementsByTagName('table')[0];
    tb.removeChild(c.parentNode.parentNode)
}
