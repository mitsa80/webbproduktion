


/**
 * Pages functions
 *
 */

//function to list pages data
function listAllPages(data) {
  
  $("#content-list table tr").not(".pageTableHeads").remove();
  $("#content-list .badge ").remove();
  
  var TotalPages=data.length;
  $(".pagesTitle").prepend('<span class="badge  totalPage">' +  TotalPages +'</span>');

  // build table rows from data
  for (var i = 0; i < data.length; i++) {
		
    //create new table row
    var newTableRow = $("<tr/>");
    
    newTableRow.append('<td><strong>'+data[i].title+"</strong></td>");
    newTableRow.append('<td>'+data[i].author+"</td>");
    newTableRow.append('<td>'+data[i].created+"</td>");

    $("#content-list table ").append(newTableRow);
  }
}