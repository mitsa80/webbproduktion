


/**
 * bootUp() sets up event handlers
 *
 */

function bootUp() {
  //setup history push/pop-state
  pushPopListeners();
 
 
  /**
   * Search   */
   $("body").on("click",'.searchForm input[type="text"]',function(){
		goTo("content-list");
   });
   
  $('body').on('submit','.searchForm',function(){
  
    var searchText = $(this).find('input[type="text"]').val();
    // get pages with matching titles
	$("#content-list").show();
    getSearchPages(searchText);
	$(this).find(".searchInput").val("");
	
	$("ul#mainMenu").find("li").removeClass("active");
	
    return false;
  });


  /**
   * Admin form 
   */

  //adminForm add menu checkbox clickhandler to show/hide add menu fields
  
  $("body").on('click','.addToMenu input[type="checkbox"]',function() {
  //$('.addToMenu input[type="checkbox"]').click(function() {
    if ($(this).is(":checked")) {
      $("#admin-form .menuLinkFields").fadeIn(500);
    } else {
      $("#admin-form .menuLinkFields").fadeOut(500);
    }
  });

  
  //adminForm add picture checkbox clickhandler to show/hide add picture fields
  
  $("body").on('click','.addPicture input[type="checkbox"]',function() {
	if ($(this).is(":checked")) {
      $("#admin-form .picLinkFields").fadeIn(500);
    } else {
      $("#admin-form .picLinkFields").fadeOut(500);
    }
	
 });
 
/* 
 $("body").on('change','.addPicture input[type="file"]',function(){
	//alert("fffffff");
	// function is in the ajax.js
	savePicture();
 });
 */ 

  //adminForm form submitHandler
  $("body").on('submit','#admin-form form',function() {
  //$("#admin-form form").submit(function() {
    //prepare adminFormData to be sent with AJAX
    var adminFormData = {
      ":title" : $(this).find("#page_title").val(),
      ":body" : $(this).find("#page_body").val(),
      ":path" : generateMachineName( $(this).find("#page_title").val() )
      //":user_id" : 1 //this has been moved to PHP
    };

    //if the user has asked to add page to menu
    if ($('.addToMenu input[type="checkbox"]').is(":checked")) {

      adminFormData.menuData = {};
	  //get selected menu parent data
      adminFormData.menuData["parent"] = $( "#menuDropdown option:selected" ).val();
      //get menu link title
      adminFormData.menuData["title"] = $('.addToMenu #menu_title').val();
      //get menu link order
    }
	
	//if the user has asked to add page to Picture
	
	if ($('.addPicture input[type="checkbox"]').is(":checked")) {

      //get selected menu parent data
      adminFormData.picData = {};
      //get menu link title
      adminFormData.picData["title"] = $('.addPicture #pic_title').val();
      //get menu link order
      adminFormData.picData["path"] = $('#pictureDropdown option:selected').val();
    }
	
	
    console.log("adminFormData: ", adminFormData);

    //send adminFormData with AJAX to DB
    insertPage(adminFormData);
	
	//$("admin-form").hide();
	//$("content-list").show();
	 
	this.reset();
    return false;
  });
  
  
  
  
  
  
  
  
}