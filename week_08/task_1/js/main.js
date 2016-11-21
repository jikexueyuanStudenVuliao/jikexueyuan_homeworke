$(function() {
	var curItem = 0;

	function main() {
		GetData("recommend");
		EventHandler();

	};

	// url: "server.php?id="+$(this).find("span").eq(0).attr('id'),
	function EventHandler() {
		$("#nav_items td").click(function() {
			curItem = $(this).index();
			$("#nav_items .cur").removeClass("cur");
			$(this).find("span").addClass("cur");

			GetData($(this).find("span").eq(0).attr('id'));

		});
	}

	function GetData(msgId){
		$.ajax({
				type: "GET",
				url: "test.php?id=" + msgId,
				dataType: "json",
				success: function(data) {
					var html = '';
					if (data.success) {
						//data.msg  
						 console.log(data.result);
						var dataMsg = data.result;
						for(var Index in dataMsg){
							 var htmlImg =  '<img src=\"'+dataMsg[Index].newsImg+'\" >' ;
							 var htmlSpan = '<span>'+ dataMsg[Index].newsTitle+'</span>';
							  htmlSpan += '<span>'+ dataMsg[Index].newsContent+'</span>';
							  var htmlP = '<p>'+htmlSpan+'</p>'
							   html += '<div class=\"'+msgId+'\">'+htmlImg + htmlP+'</div>';
						}

						$(".content").html(html);



					}
				},
				error: function(jqXHR) {
					alert("发生错误：" + jqXHR.status);
				}
			});


	}

	main();
});