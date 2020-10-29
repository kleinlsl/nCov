function getTime(){
    $.ajax({
        url:"/time",
        success:function(time_str){
            $("#time").html(time_str)
        }
    })
}
function get_rw_Time(){
    $.ajax({
        url:"/rw_time",
        success:function(time_str){
            console.log(time_str);
            ec_world_option.title.subtext="\n数据更新:"+time_str+"\n\n——by Xcu";
        }
    })
}
function get_lw_data(){
    $.ajax({
        url:"/lw",
        // dataType: 'jsonp',  // 请求方式为jsonp
        success:function(data){
            console.log(data)
            ecc_world_option.series[0].data=data.data;
            ecc_world.setOption(ecc_world_option)
        }
    })
}
function get_rw_data(){
    $.ajax({
        url:"/rw",
        // dataType: 'jsonp',  // 请求方式为jsonp
        success:function(data){
            legenddata=data.data;
            var source=[["Country","Confirmed","SQRT","Dead"]];
            var data=[];
            for(var i=0;i<legenddata.length && i<20;i++){
                arr=[];
                arr.push(legenddata[i].name);
                if(i!=10){
                    data.push(legenddata[i].name)
                }else{
                    data.push("")
                }
                arr.push(legenddata[i].Confirmed);
                arr.push(Math.sqrt(legenddata[i].Confirmed));
                arr.push(legenddata[i].Dead);
                source.push(arr)
            }
            ec_world_option.dataset.source=source;
            ec_world_option.legend.data=data;
            ec_world.setOption(ec_world_option)}
    })
}
getTime();
get_lw_data();
get_rw_data();
get_rw_Time();
setInterval(getTime,1000);
setInterval(get_rw_Time,1000*10);
setInterval(get_rw_data,1000*10);
window.addEventListener("resize", function(){
    ecc_world.resize();
    ec_world.resize()
});