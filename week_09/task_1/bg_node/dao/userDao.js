// dao/userDao.js
// 实现与MySQL交互
var mysql = require('mysql');
var $conf = require('../conf/db');
// var $util = require('../util/util');
var $sql = require('./userSqlMapping');

// 使用连接池，提升性能
var pool  = mysql.createPool($conf.mysql);

// 向前台返回JSON方法的简单封装
var jsonWrite = function (res, ret) {
  if(typeof ret === 'undefined') {
    res.json({
      code:'1',
      msg: '操作失败'
    });
  } else {
     var data ={
            success:1,
            result:ret
        }
    res.json(data);
  }
};

module.exports = {
  add: function (req, res, next) {
    pool.getConnection(function(err, connection) {
      // 获取前台页面传过来的参数
      var param = req.query || req.params;
      // 建立连接，向表中插入值
      // 'INSERT INTO user(id, name, age) VALUES(0,?,?)',
      var insertWord = 'INSERT INTO '+param.fromName+$sql.insert;
      console.log(insertWord);
      connection.query(insertWord, [param.newsTitle,param.newsImg, param.newsContent], function(err, result) {
        if(result) {
          result = {
            code: 200,
            msg:'增加成功'
          };    
        }

        // 以json形式，把操作结果返回给前台页面
        jsonWrite(res, result);

        // 释放连接 
        connection.release();
      });
    });
  },

  delete: function (req, res, next) {
    // delete by Id
    pool.getConnection(function(err, connection) {
      var id = +req.query.newsId;
      // 'delete from jokes where newsid=?'
      var deleteWord =  'delete from '+req.query.fromName +' where newsid=?';
      connection.query(deleteWord, id, function(err, result) {
        if(result.affectedRows > 0) {
          result = {
            code: 200,
            msg:'删除成功'
          };
        } else {
          result = void 0;
        }
        jsonWrite(res, result);
        connection.release();
      });
    });
  },
  update: function (req, res, next) {
    // update by id
    // 为了简单，要求同时传name和age两个参数
       console.log("tesste update");
    var param = req.body;
    // if(param.newsTitle == null || param.newsContent == null || param.newsId == null) {
    //   jsonWrite(res, undefined);
    //   return;
    // }
    var queryWord = "update "+param.fromName +$sql.update;
    pool.getConnection(function(err, connection) {
      connection.query(queryWord, [param.newsTitle, param.newsImg,param.newsContent, +param.newsId], function(err, result) {
        // 使用页面进行跳转提示
         console.log(err);
        if(result.affectedRows > 0) {
          jsonWrite(res, result);
        } else {
           jsonWrite(res, undefined);
        return;
        }

        connection.release();
      });
    });

  },
  // queryById: function (req, res, next) {
  //   var id = +req.query.id; // 为了拼凑正确的sql语句，这里要转下整数
  //   pool.getConnection(function(err, connection) {
  //     connection.query($sql.queryById, id, function(err, result) {
  //       jsonWrite(res, result);
  //       connection.release();

  //     });
  //   });
  // },
  queryAll: function (req, res, next) {
    pool.getConnection(function(err, connection) {
      var fromName = req.query.fromName;
      connection.query($sql.queryAll+fromName,function(err, result) {
       
        jsonWrite(res, result);
        connection.release();
      });
    });
  }

};