/*
	num1,num2:参与运算的数字
	operat:运算符
	返回运算结果， 出错返回 -1；
*/
function calculat(num1, num2, operat) {
	var result;
	num1 -= 0;
	num2 -= 0;
	switch (operat) {
		case "加":
			result = num1 + num2;
			break;
		case "减":
			result = num1 - num2;
			break;
		case "乘":
			result = num1 * num2;
			break;
		case "除":
			if (0 == num2) {
				console.log("0不能被除");
				return -1
			};
			result = num1 / num2;
			break;
		default:
			console.log("运算符输入错误");
			return -1;
	}
	if (isNaN(result)) {
		console.log("数字输入错误");
		return -1;
	};
	return result;
}

var x = 35;    //在此对运算数字赋值
var y = 5;		//在此对运算数字赋值
var op = "除";  ////在此定义运算符
var result = calculat(x, y, op);

if (-1 != result) {
	result = x + op + y + "等于" + result;
	console.log(result);
}