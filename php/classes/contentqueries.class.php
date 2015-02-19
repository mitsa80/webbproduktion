<?php

class ContentQueries extends PDOHelper {
  //we have one user!
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
	
	
	//insert picture
	$sql4 = "INSERT INTO images (title, path,user_id) VALUES (:title, :path,:user_id)";
      $pic_data = array(
        ":title" => $pic_data["title"],
        ":path" => $pic_data["path"],
		"user_id"=>$page_data[":user_id"]
      );
      $this->query($sql4, $pic_data);
	  
	//then find iid of new picture by selecting the latest picture 
    //in the images table
    $sql5 = "SELECT iid FROM images ORDER BY uploaded DESC LIMIT 1";
    $iid = $this->query($sql5);
    //extract pid from the array we get back
    $new_iid = $iid[0]["iid"];

	
	//add img_id to page data array
	$page_data[":img_id"]=$new_iid;
	
	//var_dump($page_data);
	
	//insert page
    $sql = "INSERT INTO pages (title, body, user_id, img_id) VALUES (:title, :body, :user_id, :img_id)";
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

    // adding the page to a menu
    if (isset($menu_data)) {
      $sql4 = "INSERT INTO menu_link (title, path, mm_id) VALUES (:title, :path, :mm_id )";
      $menu_data = array(
        ":title" => $menu_data["title"],
        ":path" => $page_path.$new_pid,
		":mm_id" => $menu_data["parent"]
      );
      $this->query($sql4, $menu_data);
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

  
	//Get page by sectionId
    public function getpage($href) {
	
	$sql="SELECT pages.*, url_alias.path ,images.title as alt,images.path FROM pages, url_alias,images WHERE pages.pid = url_alias.pid AND url_alias.path = :href AND images.iid=pages.img_id";
	$href=array(":href"=>$href);
	return $this->query($sql,$href);
	}	
	
	//Footer info
	public function getAddress() {
		$sql = "SELECT * FROM footer_info ";
		return $this->query($sql);
	}


	 
}



