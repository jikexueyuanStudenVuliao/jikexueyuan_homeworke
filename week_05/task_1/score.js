/*
 计算得分所在的等级；
  score ：要输入的成绩；
 返回等级数字 若出错返回-1；
*/
function scoreLeave(score) {

	if (score < 0 || score > 100) {
		return -1;
	};

	var num = (score - score % 10) / 10; //不了解 js如何取整 暂时用此方法取得十位上的数字

	var leave = 10 - num;
	if (0 == leave)
		leave = 1; //100分属于等级1

	return leave;
}



var score = 75;                             // 在此为学生的成绩赋值
console.log("该学生的成绩为:", score);

var theLeave = scoreLeave(score);

if (-1 == theLeave) {
	console.log("得分赋值有误")
} else {
	var result = "该学生为 " + theLeave + " 等生";
	console.log(result);
}

// var score = 97;                             // 在此为学生的成绩赋值
// console.log("该学生的成绩为:", score);

// var theLeave = scoreLeave(score);

// if (-1 == theLeave) {
// 	console.log("得分赋值有误")
// } else {
// 	var result = "该学生为 " + theLeave + " 等生";
// 	console.log(result);
// }