


/**
 * Pages functions
 *
 */

//function to list pages data
function listAllPages(data) {
  console.log("listAllPages success: ", data);
  //remove all table rows in .contentList that does not 
  //have the .pageTableHeads class
  $("#content-list table tr").not(".pageTableHeads").remove();

  //and build new table rows from data
  for (var i = 0; i < data.length; i++) {
    //create new table row
    var newTableRow = $("<tr/>");
    //append important page data to newTableRow
    newTableRow.append('<td><span class="badge">'+data[i].pid+"</span></td>");
    newTableRow.append('<td><strong>'+data[i].title+"</strong></td>");
    newTableRow.append('<td>'+data[i].author+"</td>");
    newTableRow.append('<td>'+data[i].created+"</td>");

    //then append newTableRow to the contentList table
    $("#content-list table").append(newTableRow);
  }
}