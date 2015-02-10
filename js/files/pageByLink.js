function getPageByHref(data){

console.log("page title:",data[0]["title"])

$("#pageByHref article").remove();

var article=$("<article class='page'/>");

var content=$('<h2>' +data[0]["title"]+ '</h2>'+
			 '<p>' + data[0]["body"] + '</p>' 
			 //<img src="..." class="img-responsive" alt="Responsive image">
			);
			
			article.append(content);
			$("main #pageByHref").append(article);
}