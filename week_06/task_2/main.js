var colorArray = ["#0AA770", "#3145E0", "#E7281C", "#FFCC00"];
var themeColor = null;
var theme_li = document.getElementById('theme_li').getElementsByTagName('li');

var nav_active = document.getElementById('active');
var loadFlag = false;
themeColor = localStorage.getItem("color");
if (themeColor == null) {
	themeColor = colorArray[0];
} 
	loadThemeColor();
	loadFlag = true;
for (var i = 0; i < theme_li.length; i++) {
	var theme_a = theme_li[i].parentNode;
	theme_a.style.backgroundColor = colorArray[i];
	theme_a.addEventListener("click", loadThemeColor);
};



function loadThemeColor(e) {

	var active_a = document.getElementById('active');
	// console.log(active_a.style);
	if (loadFlag) {
		themeColor = this.style.backgroundColor;
	};


	active_a.style.backgroundColor = themeColor; //改变导航栏 id="active" 的li的背景色
	var nav_ul = active_a.parentNode.parentNode;
	nav_ul.style.borderTopColor = themeColor; //改变导航栏上边框的颜色
	// nav_ul.addEventListener("click",function(e){
	// 	console.log(e.target);
	// },true)

	for (var i = 3; i < nav_ul.childNodes.length; i++) {      //导航栏添加hover 事件
		
		if (i%2 !=0) {
			var element_a =nav_ul.childNodes[i].childNodes[0];
			element_a.addEventListener("mouseover", function(e) {
				e.target.style.color = themeColor;
		});
					element_a.addEventListener("mouseout", function(e) {
				e.target.style.color = "#333";
		});
		};
		// console.log(nav_ul.childNodes.length);
		
	// console.log(nav_ul.childNodes[i].childNodes[0]);
	}

	var theme_node = document.getElementById('theme_color');
	for (var i = 0; i < 5; i++) { //改变最后一行五个 li 的文字颜色
		theme_node = theme_node.nextSibling;
		theme_node.childNodes[0].style.color = themeColor;
	};

	localStorage.setItem("color", themeColor);
}