var ec_right2 = echarts.init(document.getElementById("r2"), "dark");

var datamessage = [{"name":"肺炎","value":"12734670"},{"name":"实时","value":"12734670"},{"name":"新型","value":"12734670"}];
var option_right2 = {
	backgroundColor:'',
	title: {
		text: "今日疫情热搜",
		textStyle: {
			color: 'white'
		},
		left: 'left'
	},
	tooltip: {
		show: false
	},
	series: [{
		type: 'wordCloud',
		gridSize: 1,
		sizeRange: [12, 55], //文字范围
		//文本旋转范围，文本将通过rotationStep45在[-90,90]范围内随机旋转
		rotationRange: [-45, 0, 45, 90],
		// rotationStep: 45,
		// textRotation: [0, 45, 90, -45],
		// //形状
		// shape: 'circle',
		textStyle: {
			normal: {
				color: function() { //文字颜色的随机色
					// return 'rgb(' + [
					// 	Math.round(Math.random() * 250),
					// 	Math.round(Math.random() * 250),
					// 	Math.round(Math.random() * 250)
					// ].join(',') + ')';
					return 'rgb(' +
						Math.round(Math.random() * 255) +
						',' + Math.round(Math.random() * 255) +
						',' + Math.round(Math.random() * 255) + ')'
				}
			}
		},
		right: null,
		bottom: null,
		data: datamessage
	}]
};
//使用制定的配置项和数据显示图表
ec_right2.setOption(option_right2);

// var ec_right2_option={backgroundColor:"",title:{text:"今日疫情热搜",textStyle:{color:"white",},left:"left"},tooltip:{show:false},series:[{type:"wordCloud",gridSize:1,sizeRange:[12,55],rotationRange:[-45,0,45,90],textStyle:{normal:{color:function(){return"rgb("+Math.round(Math.random()*255)+", "+Math.round(Math.random()*255)+", "+Math.round(Math.random()*255)+")"}}},right:null,bottom:null,data:[]}]};ec_right2.setOption(ec_right2_option);