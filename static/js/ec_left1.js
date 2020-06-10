var ec_left1 = echarts.init(document.getElementById("l1"),"dark");

var option_left1 = {

      	backgroundColor:'',

      	title: {
      		text: '全国累计趋势',
      		// subtext: '模拟数据',
      		// x: 'center',
			textStyle: {

			},
			left: 'left'
      	},

      	legend: {
      		// orient 设置布局方式，默认水平布局，可选值：'horizontal'（水平） ¦ 'vertical'（垂直）
      		// orient: 'horizontal',
			// orient: 'vertical',
      		// x 设置水平安放位置，默认全图居中，可选值：'center' ¦ 'left' ¦ 'right' ¦ {number}（x坐标，单位px）
      		// x: 'left',
      		// y 设置垂直安放位置，默认全图顶端，可选值：'top' ¦ 'bottom' ¦ 'center' ¦ {number}（y坐标，单位px）
      		// y: 'top',

			type:'scroll',
			width:300,
      		data: ['累计确诊', '现有疑似', '累计治愈','累计死亡','境外输入'],
			left: '25%'
      	},

      	//  图表距边框的距离,可选值：'百分比'¦ {number}（单位px）
      	grid: {
      		top: 50, // 等价于 y: '16%'
      		left: '4%',
      		right: '6%',
      		bottom: '4%',
      		containLabel: true
      	},

      	// 提示框
      	tooltip: {
      		trigger: 'axis',
			axisPointer: {
				type: 'line',
				lineStyle: {
					color: '#7171C6'
				}
			}
      	},

      	//工具框，可以选择
      	toolbox: {
      		feature: {
      			saveAsImage: {} //下载工具
      		}
      	},

      	xAxis: {
      		// name: '周几',
      		type: 'category',
      		// axisLine: {
      		// 	lineStyle: {
      		// 		// 设置x轴颜色
      		// 		color: '#912CEE'
      		// 	}
      		// },
      		// // 设置X轴数据旋转倾斜
      		// axisLabel: {
      		// 	rotate: 30, // 旋转角度
      		// 	interval: 0 //设置X轴数据间隔几个显示一个，为0表示都显示
      		// },
      		// // boundaryGap值为false的时候，折线第一个点在y轴上
      		// boundaryGap: false,
      		data: []
      	},

      	yAxis: {
      		// name: '数值',
      		type: 'value',
      		// min: 0, // 设置y轴刻度的最小值
      		// max: 1800, // 设置y轴刻度的最大值
      		// splitNumber: 9, // 设置y轴刻度间隔个数
      		axisLine: {
				show: true
      			// lineStyle: {
      			// 	// 设置y轴颜色
      			// 	color: '#87CEFA'
      			// }
      		},
			axisLabel: {
				show: true,
				color: 'white',
				fontSize: 12,
				formatter: function(value) {
					if (value >= 1000) {
						value = value / 1000 + 'k';
					}
					return value;
				}
			},
			splitLine: {
				show: true,
				lineStyle: {
					color: '#172738',
					width: 1,
					type: 'solid'
				}
			}
      	},

      	series: [
      		{
      			name: '累计确诊',
      			data: [],
      			type: 'line',
      			// 设置小圆点消失
      			// 注意：设置symbol: 'none'以后，拐点不存在了，设置拐点上显示数值无效
      			// symbol: 'none',
      			// 设置折线弧度，取值：0-1之间
      			smooth: true,
				areaStyle:{color:new echarts.graphic.LinearGradient(0,0,0,1,[{offset:0,color:"rgba(255, 28, 119, 0.4)"},{offset:1,color:"rgba(255, 28, 119, 0)"}])},
				itemStyle:{color:"#ff1c77"}
      		},

      		{
      			name: '现有疑似',
      			data: [],
      			type: 'line',
      			// 设置折线上圆点大小
      			smooth: true,
				areaStyle:{color:new echarts.graphic.LinearGradient(0,0,0,1,[{offset:0,color:"rgba(255, 141, 25, 0.4)"},{offset:1,color:"rgba(255, 141, 25, 0.4)"}])},
				itemStyle:{color:"#ff8d19"},
      		},

      		{
      			name: '累计治愈',
      			data: [],
      			type: 'line',
      			// 设置折线上圆点大小
      			smooth: true,
				areaStyle:{color:new echarts.graphic.LinearGradient(0,0,0,1,[{offset:0,color:"rgba(56, 214, 216, 0.4)"},{offset:1,color:"rgba(56, 214, 216, 0.4)"}])},
				itemStyle:{color:"#38d6d8"}
      		},
			
			{
				name: '累计死亡',
				data: [],
				type: 'line',
				// 设置折线上圆点大小
				smooth: true,
				areaStyle:{color:new echarts.graphic.LinearGradient(0,0,0,1,[{offset:0,color:"rgba(169, 185, 203, 0.4)"},{offset:1,color:"rgba(169, 185, 203, 0.4)"}])},
				itemStyle:{
					color:"#a9b9cb"
				}
			},

			{
				name: '境外输入',
				data: [],
				type: 'line',
				// 设置折线上圆点大小
				smooth: true,
				areaStyle:{color:new echarts.graphic.LinearGradient(0,0,0,1,[{offset:0,color:"rgba(169, 185, 203, 0.4)"},{offset:1,color:"rgba(203,44,175,0.4)"}])},
				itemStyle:{
					color:"#a9b9cb"
				}
			}
      	]

      	// color: ['#00EE00', '#FF9F7F', '#FFD700']
      };
	  
ec_left1.setOption(option_left1);
// tooltip:{trigger:"axis",axisPointer:{type:"line",lineStyle:{color:"#7171C6"}},},legend:{data:["累计确诊","现有疑似","累计治愈","累计死亡"],left:"right"},grid:{left:"4%",right:"6%",bottom:"4%",top:50,containLabel:true},xAxis:[{type:"category",data:[]}],yAxis:[{type:"value",axisLabel:{show:true,color:"white",fontSize:12,formatter:function(value){if(value>=1000){value=value/1000+"k"}return value}},axisLine:{show:true},splitLine:{show:true,lineStyle:{color:"#17273B",width:1,type:"solid",}}}],series:[{name:"累计确诊",type:"line",smooth:true,areaStyle:{color:new echarts.graphic.LinearGradient(0,0,0,1,[{offset:0,color:"rgba(255, 28, 119, 0.4)"},{offset:1,color:"rgba(255, 28, 119, 0)"}])},itemStyle:{color:"#ff1c77"},data:[]},{name:"现有疑似",type:"line",smooth:true,areaStyle:{color:new echarts.graphic.LinearGradient(0,0,0,1,[{offset:0,color:"rgba(255, 141, 25, 0.4)"},{offset:1,color:"rgba(255, 141, 25, 0.4)"}])},itemStyle:{color:"#ff8d19"},data:[]},{name:"累计治愈",type:"line",smooth:true,areaStyle:{color:new echarts.graphic.LinearGradient(0,0,0,1,[{offset:0,color:"rgba(56, 214, 216, 0.4)"},{offset:1,color:"rgba(56, 214, 216, 0.4)"}])},itemStyle:{color:"#38d6d8"},data:[]},{name:"累计死亡",type:"line",smooth:true,areaStyle:{color:new echarts.graphic.LinearGradient(0,0,0,1,[{offset:0,color:"rgba(169, 185, 203, 0.4)"},{offset:1,color:"rgba(169, 185, 203, 0.4)"}])},itemStyle:{color:"#a9b9cb"},data:[]}]};ec_left1.setOption(ec_left1_Option);