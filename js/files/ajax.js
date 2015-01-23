


/**
 * AJAX functions
 *
 */
 function getpartial(partialName){
		if(partialName=="header"){
			$.ajax({
				url:"partial/header.html",
				dataType:"html",
				success:function(data){
					$("header").prepend(data);
				}
			});
		
		}else if(partialName=="main"){
			$.ajax({
				url:"partial/main.html",
				dataType:"html",
				success:function(data){
					
					$("main").prepend(data);
					$("#content-list").hide();
					$("#admin-form").hide();
				}
			});
		}else{
			$.ajax({
				url:"partial/footer.html",
				dataType:"html",
				success:function(data){
					$("footer").prepend(data);
				}
			});
		}	
	}
	

/**
 * Pages
 */

//function to getPages.
function getPages(search_param) {
  $.ajax({
    url: "php/get_content.php",
    type: "get",
    dataType: "json",
    data: {
      //if search_param is NULL (undefined), the if-statement 
      //in get_content.php will be false
      "search_param": search_param
    },
    //on success, execute listAllPages function
    //listAllPages has been moved to helpers.js
    success: listAllPages,
    error: function(data) {
      console.log("getPages error: ", data.responseText);
    }
  });
}


//function to insert a new page into the DB
function insertNewPage(adminFormData) {
  $.ajax({
    url: "php/save_content.php",
    type: "post",
    dataType: "json",
    data: {
      //this request must have data to get through the 
      //if-statement in save_content.php
      "page_data" : adminFormData
    },
    success: function(data) {
      console.log("insertNewPage success: ", data);
      //on success, goTo() the contentList url
      goTo("content-list");
    },
    error: function(data) {
      console.log("insertNewPage error: ", data);
    }
  });
}


/**
 * Menus
 */

//function to getMenuLinks.
function getMenuNames() {
  $.ajax({
    url: "php/get_menu_content.php",
    type: "get",
    dataType: "json",
    //on success, execute listMenuNames() function in helpers.js
    success: listMenuNames,
    error: function(data) {
      console.log("getMenuLinks error: ", data.responseText);
    }
  });
}


//function to getMenuLinks.
function getMenuLinks(menu_name) {
  $.ajax({
    url: "php/get_menu_content.php",
    type: "get",
    dataType: "json",
    data: {
      //menu_name must be provided
      "menu_name": menu_name
    },
    //on success, execute listAllMenuLinks() function in helpers.js
    success: listMenuLinks,
    error: function(data) {
      console.log("getMenuLinks error: ", data.responseText);
    }
  });
}