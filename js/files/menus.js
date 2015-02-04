
/**
 * Menu functions
 *
 */
 
 
 $.ajax({
	url:"php/get_menu.php",
	dataType:"json",
	success:makeMenu,
	error:function(data) {
      console.log("getMenuLinks error: ", data.responseText);
    }
 });
 
 function makeMenu(data){
	var fa=[],sp=[] ,fo=[] ,he=[];
	
	 $.each(data, function(index, date) {	 
	 console.log(date.mm_name);
	 
		 if(date.mm_name=="family"){
			fa.push("<li><a href='"+date.path+"'> "+date.title +"</a></li>");
		 }else if(date.mm_name=="sport"){
			sp.push("<li><a href='"+date.path+"'> "+date.title +"</a></li>");
		 }else if(date.mm_name=="food"){
			fo.push("<li><a href='"+date.path+"'> "+date.title +"</a></li>");
		 }else{
			he.push("<li><a href='"+date.path+"'> "+date.title +"</a></li>");
		 }
	 });
	
	console.log(fa.length ,sp.length,fo.length ,he.length)
	
	// make family menu 
	
	
	
	if(fa.length>0){
		li_fa=$('<ul class="dropdown-menu fa" role="menu"></ul>');
		var li=('<li role="presentation" class="dropdown" id="family">' +
		'<a class="dropdown-toggle " data-toggle="dropdown" href="#" role="button" aria-expanded="false">Family <span class="caret"></span></a></li>');
		var ml=$("ul#mainMenu").append(li);
		$("li#family").append(li_fa);
		for(var k=0; k<fa.length; k++){
				console.log("family",fa[k])
				li_fa.append(fa[k]);
			}	
	}
	
	//make sport menu
	
	if(sp.length>0){
		li_sp=$('<ul class="dropdown-menu sp" role="menu"></ul>');
		var li=('<li role="presentation" class="dropdown" id="sport">' +
		'<a class="dropdown-toggle " data-toggle="dropdown" href="#" role="button" aria-expanded="false">Sport <span class="caret"></span></a></li>');
		var ml=$("ul#mainMenu").append(li);
		$("li#sport").append(li_sp);
		for(var i=0; i<sp.length; i++){
				console.log("sport",sp[i])
				li_sp.append(sp[i]);
			}	
	}
	
	//make food menu
	if(fo.length>0){
		li_fo=$('<ul class="dropdown-menu fo" role="menu"></ul>');
		var li=('<li role="presentation" class="dropdown" id="food">' +
		'<a class="dropdown-toggle " data-toggle="dropdown" href="#" role="button" aria-expanded="false">Food<span class="caret"></span></a></li>');
		var ml=$("ul#mainMenu").append(li);
		$("li#food").append(li_fo);
		for(var j=0; j<fo.length; j++){
				console.log("food",fo[j])
				li_fo.append(fo[j]);
			}	
	}
	
	//make helthy menu
	
 }
 
