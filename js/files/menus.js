
/**
 * Menu functions
 *
 */
 

 function makeMenu(data, activePath){
	
		
	$("ul#mainMenu > *").not('.home').remove();
	
	var fa=[],sp=[] ,fo=[] ,he=[];
	// sort sub menus and add to a main menu link array
	 $.each(data, function(index, date) {	 
	 
		 if(date.mm_name=="family"){
			fa.push("<li class='"+date.path+"'><a href='"+date.path+"'> "+date.title +"</a></li>");
		 }else if(date.mm_name=="sport"){
			sp.push("<li class='"+date.path+"'><a href='"+date.path+"'> "+date.title +"</a></li>");
		 }else if(date.mm_name=="food"){
			fo.push("<li class='"+date.path+"'><a href='"+date.path+"'> "+date.title +"</a></li>");
		 }else{
			he.push("<li class='"+date.path+"'><a href='"+date.path+"'> "+date.title +"</a></li>");
		 }
	 }); 
	//console.log(fa.length ,sp.length,fo.length ,he.length);
	
	renderMenu(fa, "family");
	renderMenu(sp, "sport");
	renderMenu(fo, "food");
	renderMenu(he, "health");
	
	$(".active").removeClass("active");
	$("a[href='"+activePath+"']").parents("li").addClass("active");

}

// make family menu 

function renderMenu(x,y){
	//console.log(x,y)
		
	if(x.length>0){
				
		var li=$('<li role="presentation" class="dropdown" id="'+ y +'">' +
		'<a class="dropdown-toggle " data-toggle="dropdown" href="#" role="button" aria-expanded="false">'+ y +' <span class="caret"></span></a></li>');
		var li_x=$('<ul class="dropdown-menu '+ x +'" role="menu"></ul>');
		var ml=$("ul#mainMenu").append(li);
		$("li#"+y).append(li_x);
			
		for(var k=0; k<x.length; k++){
			li_x.append(x[k]);
		}	
	}
		
}
	
	