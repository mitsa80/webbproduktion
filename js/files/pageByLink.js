function getPageByHref(data){
console.log(data[0])
//console.log("page title:",data[0]["title"])

$("#pageByHref article").remove();

var article=$("<article class='page'/>");


var content=$('<h2>' +data[0]["title"]+ '</h2>'+
			'<p> Published in :' + data[0]["created"] +'</p>'+
			 '<div class="col-md-12">'+
			 '<img class="pageImage"  alt=" '+ data[0]["alt"]+'" title="'+data[0]["alt"]+'" src="./imgs/'+ data[0]["path"]+'.jpg" />'+
			 '<div class="text"></div></div>' 
			 
			);
	
			// Replece new line with p tags (ask the user to not enter html)
			content.find('div.text').html('<p>'+data[0].body.split("\r").join("\n").split("\n").join("</p><p>")+'</p>');
			
			// Print the user input with html tags (but in a div rather than a p tag)
			//content.find('div.text').html(data[0].body);
			
			article.append(content);
			$("main #pageByHref").append(article);
}

