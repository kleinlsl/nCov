var ec_world=echarts.init(document.getElementById("right"),"vintage");
var legenddata=[{name:"美国",Confirmed:85840,Dead:1296},];
var source=[["Country","Confirmed","SQRT","Dead"]];
var data=[];
var subtextData="\n数据更新\n\n——by Xcu";
var ec_world_option={
    dataset:{
        source:[]
    },
    toolbox: {
        show:false,
        feature:{
            saveAsImage:{
                show:true,
                type:"jpeg"
            }
        }
    },
    title:{
        text:"海外疫情图析",
        subtext:subtextData,
        x:"60%",
        y:"150",
        textStyle:{
            fontSize:27,
            fontWeight:"bold",
            fontFamily:"Microsoft YaHei",
            color:"#000"
        },
        subtextStyle:{
            fontStyle:"italic",
            fontSize:14
        }
    },
    legend:{
        x:"55%",
        y:"350",
        align:"left",
        orient:"vertical",
        icon:"circle",
        textStyle:{
            fontFamily:"微软雅黑",color:"#000",
        },
        data:[],
        formatter:function(params){
            for(var i=0;i<legenddata.length;i++){
                if(legenddata[i].name==params){
                    return params+"\t确诊:"+legenddata[i].Confirmed+"\t死亡:"+legenddata[i].Dead
                }
            }
        }
    },
    calculable:true,
    series:[
        {
            name:"半径模式",
            type:"pie",
            clockWise:false,
            radius:[20,400],
            center:["40%","60%"],
            roseType:"area",
            encode:{
                itemName:"Country",value:"SQRT"
            },
            itemStyle:{
                normal:{
                    color:function(params){
                        var colorList=["#a71a4f","#bc1540","#c71b1b","#d93824","#ce4018","#d15122","#e7741b","#e58b3d","#e59524","#dc9e31","#da9c2d","#d2b130","#bbd337","#8cc13f","#67b52d","#53b440","#48af54","#479c7f","#48a698","#57868c"];
                        return colorList[params.dataIndex]
                    },
                    label:{
                        position:"inside",
                        textStyle:{
                            fontWeight:"bold",
                            fontFamily:"Microsoft YaHei",
                            color:"#FAFAFA",fontSize:9
                        },
                        formatter:function(params){
                            if(params.data[1]>9000){
                                return params.data[0]+"\n"+params.data[1]+"例"+"\n"+"死亡"+params.data[3]+"例"
                            }else{
                                return""
                            }
                        },
                    },
                },
            },
        },
        {name:"透明圆圈",type:"pie",radius:[10,27],center:["40%","60%"],itemStyle:{color:"rgba(250, 250, 250, 0.3)",},data:[{value:10,name:""}]},
        {name:"透明圆圈",type:"pie",radius:[10,35],center:["40%","60%"],itemStyle:{color:"rgba(250, 250, 250, 0.3)",},data:[{value:10,name:""}]}
    ]
};
ec_world.setOption(ec_world_option);