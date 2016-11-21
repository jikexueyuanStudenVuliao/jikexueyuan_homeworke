// dao/userSqlMapping.js
// CRUD SQL语句
var user = {
  insert:'(newsid, newsTitle,newsImg, newsContent) VALUES(0,?,?,?)',
  update:' set newsTitle=?, newsImg=?,newsContent=? where newsid=?',
  delete: 'delete from jokes where newsid=?',
  queryById: 'select * from jokes where newsid=?',
  queryAll: 'select * from '
};

module.exports = user;