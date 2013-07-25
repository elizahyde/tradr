$(document).ready(function() {
  var refresh_stocks_table = fucntion(){
    $.ajax({
      datatype: "script",
      type: "get",
      url: "/stocks/refresh_table.js"
    });
  };
  setInterval(refresh_stocks_table, 1000);

});