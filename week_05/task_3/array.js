/*
 传入数组 并将结果存入对象中 并将对象返回
 可能的返回结果
 obj = {  
		max:[a],
		a:[2,5,9],
		b:[0,3],
	}
*/
function sortFun(array) {
	var x = 0;

	var obj = { //最终结果储存在该对象中
		max: [], //存放
	}
	for (var i in array) { //遍历数组
		var y = 0;
		if (array[i] in obj) { //将每个出现过的字母作为键值 存放其在原数组中的位置
			y = obj[array[i]].push(i);
		} else {             //若对象中没有该字母键值则创建一个新键值
			obj[array[i]] = [];
			y = obj[array[i]].push(i);

		}
		if (x < y) {  //记录出现的最大次数
			x = y;

			// obj[max][0] =array[i];
			;
			obj["max"].length = 0;

			obj["max"].push(array[i]);
			
		} else if (x == y) {
			obj["max"].push(array[i]);
		};
	}
//输出结果
console.log("出现次数最多的字母如下：")
var letter;
while(letter=obj["max"].pop()){
  console.log(letter+":");
  console.log("其出现"+x+"次,位置下标为"+obj[letter]);
}
	return 0;
}  //函数结束

var source = ["a", "x", "b", "d", "m", "a", "k", "m", "p", "j", "a"];
console.log("要查找的数组：",source)
var result = sortFun(source);
