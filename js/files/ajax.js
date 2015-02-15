
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
			bootUp();
			}else if(partialName=="footer"){
				renderFooter();
			}
			else{
				getMenuLinks();
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
	  getMenuLinks();
    },
    error: function(data) {
      console.log("insertPage error: ", data);
    }
  });
}


//save picture
function savePicture(){
	$.ajax({
    url: "php/pic.php",
    type: "post",
	dataType:"json",
    success: function(data){
		console.log("jhjh");
	},
    error: function(data) {
      console.log("pictureError", data.responseText);
    }
  });

}

//menus
function getMenuLinks() {	 
	$.ajax({
		url:"php/get_menu.php",
		dataType:"json",
		success:makeMenu,
		error:function(data) {
		  console.log("getMenuLinks error: ", data.responseText);
		}
	 });
 }
 
 //get the page
 function getPage(href){
 
	 console.log("HREF:",href)
	 
	 
		$.ajax({
		url: "php/get_page.php",
		type: "post",
		dataType: "json",
		data: {
		  "href" : href
		},
		success: getPageByHref,
		error: function(data) {
		  console.log("getPage error: ", data);
		}
	  });
	  
	 
 
 }

 //render footer
function renderFooter(){

	$.ajax({
			url: "php/get_address.php",
			dataType: "json",
			success: info_footer,
			error: function(data) {
			  console.log("footer_info: ", data.responseText);
			}
	  });

}
