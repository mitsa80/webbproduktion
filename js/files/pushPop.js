
/**
 * Navigation & history push/pop-state
 *
 */

//function to show/hide sections
function switchToSection(sectionId) {

    //console.log("sectionId: ", sectionId);
	  if (!sectionId ||sectionId=="index.html") {
		sectionId = "home";
	  }
	  
	  //hide all sections in main .row except section.mySidebar
	  $("main .row").children().not(".mySidebar").hide();
	  $(".linksHov li ").css("background-color","");
	  
	  //then show the requested section
	  $('section#'+sectionId).fadeIn(500);
	  
	  //if needed get data using AJAX
	  if (sectionId == "content-list") {
			$(".linksHov li a").eq(0).addClass("active");
			$(".linksHov li a").eq(1).removeClass("active");
			$("ul#mainMenu").find("li").removeClass("active");
			getSearchPages();
	  } else if (sectionId == "admin-form") {
			$(".linksHov li a").eq(0).removeClass("active");
			$(".linksHov li a").eq(1).addClass("active");
			$("ul#mainMenu").find("li").removeClass("active");
			$("#admin-form .menuLinkFields").hide();
			$("#admin-form .picLinkFields").hide();
			
	  } else if(sectionId!="home"){
			$(".linksHov li a").removeClass("active");
			$("#pageByHref").show();
			getPage(sectionId);
			
		}
		
		
		
	  //find any links in body pointing to the sectionId,
	  $("body").find('a[href="'+sectionId+'"]').each(function() {
	  
	  
		console.log("sectionId: ", sectionId);
		
		
		// create active class for menu and sub menue
		var aHref = $(this).parents("li");
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
	console.log("hr",hr)
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
    //http://localhost/.../hash
    var pageName = l.substring(l.lastIndexOf("/")+1);
    // if no pageName set pageName to false
    pageName = pageName || false;
    switchToSection(pageName);
  }
}