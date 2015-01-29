


/**
 * AJAX functions
 *
 */
 
 
 
 function getpartial(partialName){
		
			$.ajax({
				url:"partial/" + partialName + ".html",
				dataType:"html",
				success:function(data){
					$(partialName).prepend(data);
					if(partialName=="main"){
						$("#content-list").hide();
						$("#admin-form").hide();
					}
					
				}
			});
	}
	

/**
 * Pages
 */

//function to getPages.
function getSearchPages(search_param) {
  $.ajax({
    url: "php/get_content.php",
    type: "get",
    dataType: "json",
    data: {
      "search_param": search_param
    },
    success: listAllPages,
    error: function(data) {
      console.log("getPages error: ", data.responseText);
    }
  });
}


//function to insert a new page into the DB
function insertPage(adminFormData) {
  $.ajax({
    url: "php/save_content.php",
    type: "post",
    dataType: "json",
    data: {
	
      "page_data" : adminFormData
    },
    success: function(data) {
      console.log("insertPage success: ", data);
      //on success, goTo() the contentList url
      goTo("content-list");
    },
    error: function(data) {
      console.log("insertPage error: ", data);
    }
  });
}


/**
 * Menus
 */

//function to getMenuLinks.
/*
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
*/

//save picture
function savePicture(){
	$.ajax({
    url: "php/pic.php",
    type: "post",
	dataType:"json",
    success: function(data){
		console.log("jhjh",data);
	},
    error: function(data) {
      console.log("pictureError", data.responseText);
    }
  });



}
	