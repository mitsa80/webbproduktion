


/**
 * Navigation & history push/pop-state
 *
 */

//function to show/hide sections
function switchToSection(sectionId) {

	console.log("sectionId: ", sectionId);
	
	  if (!sectionId) {
		sectionId = "home";
	  }
	  
	  
	  
	  //console.log("sectionId: ", sectionId);
	  
	  
	  //hide all sections in main .row except section.mySidebar
	  $("main .row").children().not(".mySidebar").hide();
	  //then show the requested section
	  $('section#'+sectionId).fadeIn(500);
	  
	  //if needed get data using AJAX
	  if (sectionId == "content-list") {
		getSearchPages();
	  } else if (sectionId == "admin-form") {
		$("#admin-form .menuLinkFields").hide();
		$("#admin-form .picLinkFields").hide();
		
	  } else if(sectionId!="home"){
			$("#pageByHref").show();
			getPage(sectionId);
		}
		
		
		
	  //find any links in body pointing to the sectionId,
	  $("body").find('a[href="'+sectionId+'"]').each(function() {
	  
	  
		console.log("sectionId: ", sectionId);
		
		
		// create active class for menu and sub menue
		var aHref = $(this).parents("li");
		//console.log(aHref.html())
		aHref.siblings().removeClass("active");
		//console.log(aHref.length) show level
		var myActiveParent = aHref.eq(aHref.length-1);
		//console.log( myActiveParent.html());
		
		myActiveParent.siblings().removeClass("active");
		myActiveParent.siblings().find("li").removeClass("active");
		
		//myActiveParent.addClass("active");
		aHref.addClass("active");
	  });
}


//"go to page" function
function goTo(href) {
  // Show a section with an id corresponding
  // to the link's href
  switchToSection(href);

  // Add the current "state/page" to our history
  history.pushState(null,null,href);
}


//setup push/pop-state pushPopListeners for <a> tags
function pushPopListeners() {
  // When we click a link
  $(document).on("click","a",function(event){
  
	var hr=$(this).attr("href");
    //if the user clicks a real http:// || https:// link,
	//internal href="rahra-sdas"
	//external href="http(s)://)"
    if (hr.indexOf("://") >=0) {
      //assume they are leaving the site
      return;
    }

    //prevent "empty" urls from affecting browsing
    if (hr && hr !== "#") {
	
      goTo(hr);
	 
    }
	
    event.preventDefault();
  });


  // Add a pop state listener
  // (listen to forward/backward buttons in the browser)
  addEventListener("popstate",onPopAndStart);

  //and run once immediately (this function runs at DOM ready)
  onPopAndStart();

  // Run this function on popstate and initial load
  function onPopAndStart(){
  
    var l = location.href;
	//console.log(l);
    //http://localhost/.../hash
    var pageName = l.substring(l.lastIndexOf("/")+1);

    // if no pageName set pageName to false
    pageName = pageName || false;
    //and switchToSection
    switchToSection(pageName);
  }
}