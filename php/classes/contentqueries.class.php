<?php

//inherits all public PDOHelper methods
class ContentQueries extends PDOHelper {
  //later when we have login in place, real user_info 
  //will be stored in the property user_info.
  //for now let's just fake it
  protected $user_info = array("user_id" => 1);


  /**
   * Pages
   */

  public function saveNewPage($page_data) {
  
    //adding user_id before insert
    $page_data[":user_id"] = $this->user_info["user_id"];

    //extract and remove page path to prevent crash on insert page
    $page_path = $page_data[":path"];
    unset($page_data[":path"]);
	
    //extract and remove page menu data to prevent crash on insert page
    $menu_data = $page_data["menuData"];
    unset($page_data["menuData"]);
	
	//extract and remove page picture data to prevent crash on insert page
    $pic_data = $page_data["picData"];
    unset($page_data["picData"]);

    $sql = "INSERT INTO pages (title, body, user_id) VALUES (:title, :body, :user_id)";
    $this->query($sql, $page_data);

    //then find pid of new page by selecting the latest page 
    //in the pages table
    $sql2 = "SELECT pid FROM pages ORDER BY created DESC LIMIT 1";
    $new_pid = $this->query($sql2);
    //extract pid from the array we get back
    $new_pid = $new_pid[0]["pid"];

    //insert new page url alias
    $sql3 = "INSERT INTO url_alias (path, pid) VALUES (:path, :pid)";
    $url_data = array(":path" => $page_path.$new_pid, ":pid" => $new_pid);
    $this->query($sql3, $url_data);

    //if we are adding the page to a menu, do so
    if (isset($menu_data)) {
      $sql4 = "INSERT INTO menu_link (title, path, mm_id) VALUES (:title, :path, :mm_id )";
      $menu_data = array(
        ":title" => $menu_data["title"],
        ":path" => $page_path.$new_pid,
		":mm_id" => $menu_data["parent"]
      );
      $this->query($sql4, $menu_data);
    }
	
	//adding picture to page
    if (isset($pic_data)) {
      $sql4 = "INSERT INTO images (title, path,user_id) VALUES (:title, :path,:user_id)";
      $pic_data = array(
        ":title" => $pic_data["title"],
        ":path" => $pic_data["path"],
		"user_id"=>$page_data[":user_id"]
      );
      $this->query($sql4, $pic_data);
    }

    return true;
  }


  public function getAllPages() {
    $sql = "SELECT  pages.title, pages.body, pages.created, CONCAT(users.fname, ' ', users.lname) as author FROM pages, users order By `created`DESC";
    return $this->query($sql);
  }


  public function searchForPages($search_param) {
    $search_param = array(":search_param" => "%".$search_param."%");
    $sql = "SELECT  pages.title, pages.body, pages.created, CONCAT(users.fname, ' ', users.lname) as author FROM pages, users WHERE pages.title LIKE :search_param";
    return $this->query($sql, $search_param);
  }


  /**
   * Menus
   */
   
   public function getMenu(){
   $sql="SELECT menu_link.title, menu_link.path, main_menu.mm_name FROM menu_link INNER JOIN main_menu ON main_menu.mm_id=menu_link.mm_id";
   return $this->query($sql);
   }

   
   
   
 /*  
  public function getMenuNames() {
    $sql = "SELECT * FROM menus";
    return $this->query($sql);
  }


  public function getMenuLinks($menu_name) {
    $menu_name = array(":menu_name" => $menu_name);
    $sql = "SELECT * FROM menu_links WHERE menu = :menu_name";
    
    return $this->query($sql, $menu_name);
  }
  
  */
  
 //Get page by sectionId
public function getpage($href) {
	
	//$sql = "SELECT pages.title,pages.body,pages.created,url_alias.path FROM url_alias INNER JOIN pages ON url_alias.pid=pages.pid WHERE url_alias.path=:$href";
	$sql="SELECT pages.*, url_alias.path FROM pages, url_alias WHERE pages.pid = url_alias.pid AND url_alias.path = :href";
	$href=array(":href"=>$href);
	return $this->query($sql,$href);
}	
	
//Footer info
public function getAddress() {
	$sql = "SELECT * FROM footer_info ";
	return $this->query($sql);
}


	
  
}//end of class



