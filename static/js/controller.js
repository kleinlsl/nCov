function gettime() {
	$.ajax({
		url: "/time",
		timeout: 10000, //超时时间设置为10秒；
		success: function(data) {
			$("#tim").html(data)
		},
		error: function(xhr, type, errorThrown) {

		}
	});
}

function get_c1_data() {
	$.ajax({
		url: "/c1",
		success: function(data) {
			$(".num h1").eq(0).html(data.confirm)
			$(".num h1").eq(1).html(data.suspect)
			$(".num h1").eq(2).html(data.heal)
			$(".num h1").eq(3).html(data.dead)
			$(".num h1").eq(4).html(data.importedCase)
		},
		error: function(xhr, type, errorThrown) {

		}
	})
}
function get_c2_data() {
	$.ajax({
		url:"/c2",
		success: function(data) {
			optionMap.series[0].data = data.data
			ec_center.setOption(optionMap)
		},
		error: function(xhr, type, errorThrown) {
		
		}
	})
}

function get_l1_data() {
	$.ajax({
		url:"/l1",
		success: function(data) {
			option_left1.xAxis.data = data.day
			option_left1.series[0].data = data.confirm
			option_left1.series[1].data = data.suspect
			option_left1.series[2].data = data.heal
			option_left1.series[3].data = data.dead
			option_left1.series[4].data = data.importedCase
			ec_left1.setOption(option_left1)
		},
		error: function(xhr, type, errorThrown) {

		}
	})
}



function get_l2_data() {
	$.ajax({
		url:"/l2",
		success: function(data) {
			option_left2.xAxis.data = data.day
			option_left2.series[0].data = data.confirm_add
			option_left2.series[1].data = data.suspect_add
			option_left2.series[2].data = data.heal_add
			option_left2.series[3].data = data.dead_add
			option_left2.series[4].data = data.importedCase_add
			ec_left2.setOption(option_left2)
		},
		error: function(xhr, type, errorThrown) {

		}
	})
}


function get_r1_data() {
	$.ajax({
		url:"/r1",
		success: function(data) {
			option_right1.xAxis.data = data.city
			console.log("city_r1"+data.city)
			option_right1.series[0].data = data.confirm
			ec_right1.setOption(option_right1)
		},
		error: function(xhr, type, errorThrown) {

		}
	})
}


function get_r2_data() {
	$.ajax({
		url:"/r2",
		success: function(data) {
			option_right2.series[0].data = data.kws
			ec_right2.setOption(option_right2)
		},
		error: function(xhr, type, errorThrown) {

		}
	})
}

gettime()
get_c1_data()
get_c2_data()
get_l1_data()
get_l2_data()
get_r1_data()
get_r2_data()

//设置循环调用，间隔单位：秒
setInterval(gettime, 1000)
setInterval(get_c1_data, 1000*10)
setInterval(get_c2_data, 1000*10)
setInterval(get_l1_data, 1000*10)
setInterval(get_l2_data, 1000*10)
setInterval(get_r1_data, 1000*10)
setInterval(get_r2_data, 1000*5)
