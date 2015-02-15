function getPageByHref(data){

//console.log("page title:",data[0]["title"])

$("#pageByHref article").remove();

var article=$("<article class='page'/>");

var content=$('<h2>' +data[0]["title"]+ '</h2>'+
			 '<div class="col-md-12">'+
			 '<img style="float:left;width:200px;height:200px; margin-right:10px;" src="img/me.jpg" />'+
			 '<p>' + data[0]["body"] + '</p>' 
			 //<img src="..." class="img-responsive" >
			);
			
			article.append(content);
			$("main #pageByHref").append(article);
}

