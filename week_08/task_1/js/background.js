$(function() {
    function main() {
        GetData("jokes");
        EnventHandle();
    }

    function GetData(msgId) {
        $.ajax({
            type: "GET",
            url: "test.php?id=" + msgId,
            dataType: "json",
            success: function(data) {
                var html = '';
                if (data.success) {
                    //data.msg  
                    // console.log(data.result);
                    var dataMsg = data.result;
                    var $table = $("#showTable");
                    $(".tableContent").remove();
                    for (var Index in dataMsg) {

                        var $tableRow = $("<tr>");
                        var $tableDiv = $("<div>");

                        $("<span>").text(dataMsg[Index].newsId).appendTo($tableDiv);
                        $("<div>").addClass("deleteRow").text("删除").appendTo($tableDiv);
                        $tableDiv.addClass("tdDiv").appendTo($tableRow);
                        // $("<td>").text(dataMsg[Index].newsId).appendTo($tableRow);
                        $("<td>").text(dataMsg[Index].newsTitle).appendTo($tableRow);
                        $("<td>").text(dataMsg[Index].newsContent).appendTo($tableRow);

                        $tableRow.addClass("tableContent").appendTo($table);
                    }


                    $(".deleteRow").click(function() {
                        var theNewsId = this.parentNode;
                        console.log($(theNewsId).find("span").text());
                        $.ajax({
                            type: "POST",
                            url: "test.php",
                            data: {
                                type: "remove",
                                newsId: $(theNewsId).find("span").text()
                            },
                            dataType: "json",
                            success: function(data) {
                                if (data.success) {

                                    GetData("jokes");
                                    console.log("success");

                                } else {
                                    $("#createResult").html("出现错误：" + data.msg);
                                }
                            },
                            error: function(jqXHR) {
                                alert("发生错误：" + jqXHR.status);
                            },
                        });
                    });
                }
            },
            error: function(jqXHR) {
                alert("发生错误：" + jqXHR.status);
            }
        });


    }

    function EnventHandle() {
        $("#add").click(function() {
            // alert("EnventHandle");
            $.ajax({
                type: "POST",
                url: "test.php",
                data: {
                    type: "add",
                    newsTitle: $("#newsTitle").val(),
                    newsContent: $("#newsContent").val()
                },
                dataType: "json",
                success: function(data) {
                    if (data.success) {

                        GetData("jokes");
                        console.log("success");

                    } else {
                        $("#createResult").html("出现错误：" + data.msg);
                    }
                },
                error: function(jqXHR) {
                    alert("发生错误：" + jqXHR.status);
                },
            });
        });
        $("#modify").click(function() {
            $.ajax({
                type: "POST",
                url: "test.php",
                data: {
                    type: "modify",
                    newsId: $("#newsId").val(),
                    newsTitle: $("#newsTitle").val(),
                    newsContent: $("#newsContent").val()
                },
                dataType: "json",
                success: function(data) {
                    if (data.success) {

                        GetData("jokes");
                        console.log("success");

                    } else {
                        $("#createResult").html("出现错误：" + data.msg);
                    }
                },
                error: function(jqXHR) {
                    alert("发生错误：" + jqXHR.status);
                },
            });
        });

    }

    main();
});
