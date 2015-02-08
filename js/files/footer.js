
function info_footer(data){
	
	var rowAdd=$("<section class='footerBanner row'>/");
		
	rowAdd.append("<address class='text-center'>"+
		"Address:"+ data[0].address+"<br>"+
		"Emai:<a href='mailto:webmaster@example.com'>"+ data[0].mail+"</a><br>"+
		"Mobile:"+ data[0].mob+"<br>"+
		"Tel:"+ data[0].tel+
		"</address>"
		);
	$("footer").append(rowAdd);
}

