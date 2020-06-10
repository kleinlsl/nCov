//初始化echarts实例
var ec_center = echarts.init(document.getElementById("c2"),"dark");
var mydata = []
var optionMap = {
		backgroundColor:'rgba(255, 255, 255, 0)',
		title: {
			text: '',
			subtext: '',
			x: 'left'
		},
		tooltip: {
			trigger: 'item'
		},

		//左侧小导航图标
		visualMap: {
			show: true,
			x: 'left',
			y: 'bottom',
			textStyle: {
				fontSize: 8
			},
			splitList: [
				{
					start: 1,
					end: 9
				},
				{
					start: 10,
					end: 99
				},
				{
					start: 100,
					end: 499
				},
				{
					start: 500,
					end: 999
				},
				{
					start:1000,
					end:49999
				},
				{
					start:50000
				}
			],
			color:["#95002f","#bd003b","#e03355","#ff6f6f","#ffbaba","#ffe8e8"]
		},
		//配置属性
		series: [
			{
			name: '累积确诊人数',
			type: 'map',
			mapType: 'china',
			roam: false,

			itemStyle:{
				normal:{
					borderColor:"rgba(0, 0, 0, 0.2)",
				},
				emphasis:{
					borderWidth:0.5,
					borderColor:"#4b0082",
					areaColor:"#c7fffd",
				}
			},
			label:{
				normal:{
					show:true,
					fontSize:8,
				},
				emphasis:{
					show:true,
					fontSize:8,
				}
			},
			data: mydata //数据
		}]
	};

//使用制定的配置项和数据显示图表
ec_center.setOption(optionMap);

// var ec_center=echarts.init(document.getElementById("c2"),"dark");
// var mydata=[{"name":"上海","value":318},{"name":"云南","value":162}];
// var ec_center_option={
// backgroundColor:"",
// title:{text:"",subtext:"",x:"left"},
// tooltip:{trigger:"item"},
// visualMap:{show:true,x:"left",y:"bottom",textStyle:{fontSize:8,},
// splitList:[{start:1,end:9},{start:10,end:99},{start:100,end:499},{start:500,end:999},{start:1000,end:4999},{start:50000}],color:["#95002f","#bd003b","#e03355","#ff6f6f","#ffbaba","#ffe8e8"],},
//
// series:[{name:"累计确诊人数",type:"map",
// mapType:"china",roam:false,
// itemStyle:{normal:{borderColor:"rgba(0, 0, 0, 0.2)",},emphasis:{borderWidth:0.5,borderColor:"#4b0082",areaColor:"#c7fffd",}},label:{normal:{show:true,fontSize:8,},emphasis:{show:true,fontSize:8,}},data:[]}]};ec_center.setOption(ec_center_option);