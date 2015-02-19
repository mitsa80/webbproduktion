
/**
 * bootUp() sets up event handlers
 *
 */

function bootUp() {
  //setup history push/pop-state
  pushPopListeners();
 
 
  /**
   * Search  
   *
   */
   
   $("body").on("click",'.searchForm input[type="text"]',function(){
		goTo("content-list");
   });
   
   
  $('body').on('submit','.searchForm',function(){
    var searchText = $(this).find('input[type="text"]').val();
    // get pages with matching titles
    getSearchPages(searchText);
	$(this).find(".searchInput").val("");
    return false;
  });


  /**
   * Admin form 
   */

  //adminForm add menu checkbox clickhandler to show/hide add menu fields
  
  $("body").on('click','.addToMenu input[type="checkbox"]',function() {
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
 


  //adminForm form submitHandler
  $("body").on('submit','#admin-form form',function() {
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
    }
	
	//if the user has asked to add page to Picture
	adminFormData.picData = {};
	
	
	if ($('.addPicture input[type="checkbox"]').is(":checked")) {

      adminFormData.picData = {};
      adminFormData.picData["title"] = $('.addPicture #pic_title').val();
      adminFormData.picData["path"] = $('#pictureDropdown option:selected').val();
    }
	
	
    console.log("adminFormData: ", adminFormData);

    //send adminFormData with AJAX to DB
    insertPage(adminFormData);
	
	this.reset();
    return false;
  });
  
  
  
  
  
  
  
  
}