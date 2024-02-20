<?php

class Services{

	protected $db;

	private $page, $rowHeight, $totalRows, $services_id, $sorting_type, $keyword_search, $history_type, $actFeeTitOpt;

	

	public function __construct($db){$this->db = $db;}

	

	public function lists($segment3){

		$list_filters = $_SESSION['list_filters']??array();

		

		$sorting_type = $list_filters['sorting_type']??'name ASC, created_on ASC';

		$this->sorting_type = $sorting_type;

		

		$keyword_search = $list_filters['keyword_search']??'';

		$this->keyword_search = $keyword_search;

		

		$this->filterAndOptions();

		

		$page = !empty($segment3) ? intval($segment3):1;

		if($page<=0){$page = 1;}

		if(!isset($_SESSION['limit'])){$_SESSION['limit'] = 'auto';}

		$limit = $_SESSION['limit'];

		

		$this->rowHeight = 34;

		$this->page = $page;

		$tableRows = $this->loadTableRows();

		

		$sorTypOpt = $limOpt = '';

		$sorTypOpts = array('name ASC, created_on ASC'=>"Name and Date", 'name ASC'=>'Name', 'created_on ASC'=>'Date');

		foreach($sorTypOpts as $optValue=>$optLabel){

			$selected = '';

			if(strcmp($sorting_type, $optValue)==0){$selected = ' selected';}

			$sorTypOpt .= "<option$selected value=\"$optValue\">$optLabel</option>";

		}

		$limOpts = array(15, 20, 25, 50, 100, 500);

		foreach($limOpts as $oneOpt){

			$selected = '';

			if($limit==$oneOpt){$selected = ' selected';}

			$limOpt .= "<option$selected value=\"$oneOpt\">$oneOpt</option>";

		}

		

		$htmlStr = "<input type=\"hidden\" name=\"pageURI\" id=\"pageURI\" value=\"$GLOBALS[segment1]/$GLOBALS[segment2]\">

		<input type=\"hidden\" name=\"page\" id=\"page\" value=\"$this->page\">

		<input type=\"hidden\" name=\"rowHeight\" id=\"rowHeight\" value=\"$this->rowHeight\">

		<input type=\"hidden\" name=\"totalTableRows\" id=\"totalTableRows\" value=\"$this->totalRows\">

		<div class=\"row\">

			<div class=\"col-sm-12 col-md-6\">

				<h1 class=\"metatitle\">$GLOBALS[title] <i class=\"fa fa-info-circle txt16normal\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"This page displays the list of your Services\"></i></h1>

			</div>	

			<div class=\"col-sm-12 col-md-6 ptopbottom15\">

				<a href=\"javascript:void(0);\" title=\"Create Services\" onClick=\"AJget_ServicesPopup(0);\">

					<button class=\"btn btn-default hilightbutton floatright\"><i class=\"fa fa-plus\"></i> <strong>New Services</strong></button>

				</a>

			</div>  

		</div>

		<div class=\"row\">

			<div class=\"col-sm-12 col-sm-4 col-md-6 pbottom10\">&nbsp;</div>

			<div class=\"col-xs-6 col-sm-4 col-md-3 pbottom10\">

				<select class=\"form-control\" name=\"sorting_type\" id=\"sorting_type\" onchange=\"checkAndLoadFilterData();\">

					$sorTypOpt

				</select>

			</div>

			<div class=\"col-sm-12 col-sm-4 col-md-3 pbottom10\">

				<div class=\"input-group\">

					<input type=\"text\" placeholder=\"Search Services\" value=\"$keyword_search\" id=\"keyword_search\" name=\"keyword_search\" class=\"form-control\" maxlength=\"50\" />

					<span class=\"input-group-addon cursor\" onClick=\"checkAndLoadFilterData();\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"Search Services\">

						<i class=\"fa fa-search\"></i>

					</span>

				</div>

			</div>

		</div>	

		<div class=\"row\">

			<div class=\"col-sm-12\" style=\"position:relative;\">

				<div id=\"no-more-tables\">

					<table class=\"col-md-12 table-bordered table-striped table-condensed cf listing\">

						<thead class=\"cf\">

							<tr>

								<th align=\"left\">Name</th>

								<th align=\"left\">URI</th>

								<th align=\"left\">Short Desciption</th>

							</tr>

						</thead>

						<tbody id=\"tableRows\">

							$tableRows

						</tbody>

					</table>

				</div>

			</div>    

		</div>	

		<div class=\"row mtop10\">

			<div class=\"col-sm-12\">

				<select class=\"form-control width100 floatleft\" name=\"limit\" id=\"limit\" onChange=\"checkloadTableRows();\">

					<option value=\"auto\">Auto</option>

					$limOpt

				</select>

				<label id=\"fromtodata\"></label>

				<div class=\"floatright\" id=\"Pagination\"></div>

			</div>

		</div>";

		

		return $htmlStr;

	}

   

   private function filterAndOptions(){

		$sorting_type = $this->sorting_type;

		$keyword_search = $this->keyword_search;

		

		$_SESSION["current_module"] = "Services";

		$_SESSION["list_filters"] = array('sorting_type'=>$sorting_type, 'keyword_search'=>$keyword_search);

		

		$filterSql = "FROM services WHERE services_publish = 1";

		$bindData = array();

		

		if($keyword_search !=''){

			$keyword_search = addslashes(trim($keyword_search));

			if ( $keyword_search == "" ) { $keyword_search = " "; }

			$keyword_searches = explode (" ", $keyword_search);

			if ( strpos($keyword_search, " ") === false ) {$keyword_searches[0] = $keyword_search;}

			$num = 0;

			while ( $num < sizeof($keyword_searches) ) {

				$filterSql .= " AND CONCAT_WS(' ', name, uri_value) LIKE CONCAT('%', :keyword_search$num, '%')";

				$bindData['keyword_search'.$num] = trim($keyword_searches[$num]);

				$num++;

			}

		}

		$totalRows = 0;

		

		$strextra ="SELECT COUNT(services_id) AS totalRows $filterSql";

		$query = $this->db->getObj($strextra, $bindData);

		if($query){

			$totalRows = $query->fetch(PDO::FETCH_OBJ)->totalRows;

		}

		$this->totalRows = $totalRows;

	}

	

   private function loadTableRows(){

		$limit = $_SESSION["limit"];

		$dateformat = $_SESSION["dateformat"]??'m/d/Y';

		$rowHeight = $this->rowHeight;

		$page = $this->page;

		$totalRows = $this->totalRows;

		$sorting_type = $this->sorting_type;			

		if($sorting_type==''){$sorting_type = 'name ASC, created_on ASC';}

		$keyword_search = $this->keyword_search;

		

		if(in_array($limit, array('', 'auto'))){

			$screenHeight = $_COOKIE['screenHeight']??480;

			$headerHeight = $_COOKIE['headerHeight']??300;

			$bodyHeight = floor($screenHeight-$headerHeight);

			$limit = floor($bodyHeight/$rowHeight);

			if($limit<=0){$limit = 1;}

		}

		$starting_val = ($page-1)*$limit;

		if($starting_val>$totalRows){$starting_val = 0;}

		

		$filterSql = "FROM services WHERE services_publish = 1";

		$bindData = array();



		if($keyword_search !=''){

			$keyword_search = addslashes(trim($keyword_search));

			if ( $keyword_search == "" ) { $keyword_search = " "; }

			$keyword_searches = explode (" ", $keyword_search);

			if ( strpos($keyword_search, " ") === false ) {$keyword_searches[0] = $keyword_search;}

			$num = 0;

			while ( $num < sizeof($keyword_searches) ) {

				$filterSql .= " AND CONCAT_WS(' ', name, uri_value) LIKE CONCAT('%', :keyword_search$num, '%')";

				$bindData['keyword_search'.$num] = trim($keyword_searches[$num]);

				$num++;

			}

		}

		

		$sqlquery = "SELECT services_id, created_on, name, uri_value, short_description $filterSql ORDER BY $sorting_type LIMIT $starting_val, $limit";

		$query = $this->db->getData($sqlquery, $bindData);

		$i = $starting_val+1;



		$str = '';		

		if($query){

			foreach($query as $oneRow){

				$services_id = $oneRow['services_id'];

				

				$name = stripslashes($oneRow['name']);	

				$uri_value = $oneRow['uri_value'];

				$short_description = stripslashes(trim((string) $oneRow['short_description']));

				if($short_description==''){$short_description = '&nbsp;';}

				

				$str .= "<tr>";

				$str .= "<td data-title=\"Name\" align=\"justify\"><a class=\"anchorfulllink\" href=\"/Services/view/$services_id\" title=\"View Information\">$name</a></td>";

				$str .= "<td data-title=\"URI Value\" align=\"justify\"><a class=\"anchorfulllink\" href=\"/Services/view/$services_id\" title=\"View Information\">$uri_value</a></td>";

				$str .= "<td data-title=\"Short Description\" align=\"justify\"><a class=\"anchorfulllink\" href=\"/Services/view/$services_id\" title=\"View Information\">$short_description</a></td>";

				$str .= "</tr>";

			}

		}

		else{

			$str .= "<tr><td colspan=\"3\" class=\"red18bold\">No Services meet the criteria given</td></tr>";

		}

		return $str;

   }

	

	public function aJgetPage(){

	

		$segment3 = $GLOBALS['segment3'];

		$sorting_type = $_POST['sorting_type']??'name ASC, created_on ASC';

		$keyword_search = $_POST['keyword_search']??'';

		$totalRows = $_POST['totalRows']??0;

		$rowHeight = $_POST['rowHeight']??34;

		$page = $_POST['page']??1;

		if($page<=0){$page = 1;}

		$_SESSION["limit"] = $_POST['limit']??'auto';

		

		$this->sorting_type = $sorting_type;

		$this->keyword_search = $keyword_search;

		

		$jsonResponse = array();

		$jsonResponse['login'] = '';

		//===If filter options changes===//	

		if($segment3=='filter'){

			$this->filterAndOptions();

			$jsonResponse['totalRows'] = $totalRows = $this->totalRows;

		}

		$this->page = $page;

		$this->totalRows = $totalRows;

		$this->rowHeight = $rowHeight;

		

		$jsonResponse['tableRows'] = $this->loadTableRows();

		

		return json_encode($jsonResponse);

	}

	

	public function view($segment3, $segment4){

		$htmlStr = "";

		$servicesObj = $this->db->getObj("SELECT * FROM services WHERE services_id = :services_id", array('services_id'=>$segment3),1);

		if($servicesObj){

			$servicesarray = $servicesObj->fetch(PDO::FETCH_OBJ);

			$list_filters = $_SESSION["list_filters"]??array();

			$shistory_type = $list_filters['shistory_type']??'';

		

			$services_id = $servicesarray->services_id;

			$name = $servicesarray->name;

			$uri_value = $servicesarray->uri_value;

			$font_awesome = $servicesarray->font_awesome;

			$short_description = $servicesarray->short_description;

			

			$newsImg = 'default.png';			

			$newsImgUrl = '/assets/images/default.png';

			$newsImgUrlArr = '';

			$filePath = "./assets/accounts/serv_$services_id".'_';

			$pics = glob($filePath."*.jpg");

			$pics = glob($filePath."*.png");

			// var_dump($pics);exit;

			if(!$pics){

				$pics = glob($filePath."*.jpg");

			}

			if($pics){

				foreach($pics as $onePicture){

					$newsImg = str_replace("./assets/accounts/", '', $onePicture);

					$newsImgUrl = str_replace('./', '/', $onePicture);

					$newsImgUrlArr .= '<img onclick="display_image(this)" src="'.$newsImgUrl.'" data-img="black64" style="height:40px;cursor:pointer;border:1px solid #ccc;border-radius:2px">';

				}

			}



			// var_dump($newsImgUrl);exit;



			// <img onclick=\"display_image(this)\" src=\"/assets/accounts/serv_24_661.jpg\" data-img=\"black64\" style=\"height:40px;cursor:pointer;border:1px solid #ccc;border-radius:2px\">

			

			$services_publish = $servicesarray->services_publish;

			$htmlStr = "<div class=\"row\">

				<div class=\"col-sm-8\">

					<h1 class=\"metatitle\">$GLOBALS[title] <i class=\"fa fa-info-circle txt16normal\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"This page displays the information of Services\"></i></h1>

				</div>

				<div class=\"col-sm-4 ptopbottom15\">

					<a href=\"/Services/lists\" title=\"Services List\">

						<button class=\"btn btn-default hilightbutton floatright\"><i class=\"fa fa-list\"></i> <strong>Services List</strong></button>

					</a>

				</div>    

			</div>";

			

			$htmlStr .= "<div class=\"row supplierheader margin0 mbot15 ptopbottom15\">

						<div class=\"col-sm-3\"  >

							<div class=\"col-sm-12\"  >

								<div id=\"services_picture\">

									<div class=\"currentPicture\">

										<img id=\"servicesImage\" alt=\"$newsImg\" class=\"img-responsive maxheight250\" src=\"$newsImgUrl\">

									</div>

									

								</div>							

							</div>

							<div class=\"col-sm-12\" id=\"image_thumbnails\" style=\"margin:20px 0;padding:5px;display:flex;flex-wrap:wrap;gap:5px\">

								$newsImgUrlArr

							</div>

						</div>	

						

						<div class=\"col-sm-9\">

							<div class=\"image_content txtleft\">

								<h2>$name</h2>

								<p class=\"prelative pleft25\">

                           <i class=\"fa fa-link txt16normal pabsolute0x0\"></i> 

									<span>$uri_value</span>

								</p>

								<p class=\"prelative pleft25\">

									<span>Font Awesome Icon: $font_awesome</span>

								</p>

								<p class=\"prelative pleft25\">

									<i class=\"fa fa-info txt16normal pabsolute0x0\"></i> 

									<span>$short_description</span>

								</p>

								<p>";						

								if($services_publish>0){

									$picbutton = 'Add Picture';

									if($newsImgUrl != '/assets/images/default.png'){

										$picbutton = 'Change Picture';

									}

									$htmlStr .= "<input type=\"button\" class=\"btn btn-default edit mbottom10 \" id=\"picbutton\" onClick=\"upload_dialog('Upload News Picture', 'services', 'serv_$services_id"."_');\" value=\"$picbutton\">

									<input type=\"button\" class=\"btn edit mbottom10 marginright15\" title=\"Edit\" onclick=\"AJget_ServicesPopup($services_id);\" value=\"Edit\">";

									

								}

								$htmlStr .= "</p>

								<link href=\"/assets/css/jqueryimageupload.css\" rel=\"stylesheet\" type=\"text/css\">

								<script type=\"text/javascript\" src=\"/assets/js/jquery.form.min.js\"></script>			

							</div>

						</div>

			</div>";

			

			$htmlStr .= "<div class=\"row\">

				<div class=\"col-sm-12\">

					<div class=\"widget mbottom10\">";

					

			$list_filters = $_SESSION["list_filters"]??array();

			$shistory_type = $list_filters['shistory_type']??'';

			

			$this->services_id = $services_id;

			$this->history_type = $shistory_type;

			$this->filterHAndOptions();

			$actFeeTitOpt = $this->actFeeTitOpt;

			

			$page = !empty($GLOBALS['segment4']) ? intval($GLOBALS['segment4']):1;

			if($page<=0){$page = 1;}

			if(!isset($_SESSION["limit"])){$_SESSION["limit"] = 'auto';}

			$limit = $_SESSION["limit"];

			

			$this->page = $page;

			$this->rowHeight = 34;

			

			$tableRows = $this->loadHTableRows();

			

			$limitOpt = '';

			$limitOpts = array(15, 20, 25, 50, 100, 500);

			foreach($limitOpts as $oneOpt){

				$selected = '';

				if($limit==$oneOpt){$selected = ' selected';}

				$limitOpt .= "<option$selected value=\"$oneOpt\">$oneOpt</option>";

			}

			

			$htmlStr .= "<input type=\"hidden\" name=\"pageURI\" id=\"pageURI\" value=\"$GLOBALS[segment1]/$GLOBALS[segment2]/$services_id\">

						<input type=\"hidden\" name=\"page\" id=\"page\" value=\"$this->page\">

						<input type=\"hidden\" name=\"rowHeight\" id=\"rowHeight\" value=\"$this->rowHeight\">

						<input type=\"hidden\" name=\"totalTableRows\" id=\"totalTableRows\" value=\"$this->totalRows\">

						<input type=\"hidden\" name=\"note_forTable\" id=\"note_forTable\" value=\"services\">

						<input type=\"hidden\" name=\"publicsShow\" id=\"table_idValue\" value=\"$services_id\">

						<input type=\"hidden\" name=\"publicsShow\" id=\"publicsShow\" value=\"0\">

						<div class=\"widget-header\">

							<div class=\"row\">

								<div class=\"col-sm-4\" style=\"position:relative;\">

									<h3>Services History</h3>

								</div>

								<div class=\"col-sm-4\" style=\"position:relative;\">

									<select class=\"form-control mtop2\" name=\"shistory_type\" id=\"shistory_type\" onchange=\"checkAndLoadFilterData();\">

										$actFeeTitOpt

									</select>

								</div>

								<div class=\"col-sm-4\" style=\"position:relative;\">

									<div class=\"floatright mtop-1 pright10\"><a href=\"javascript:void(0);\" onclick=\"AJget_notesPopup(0);\" class=\"btn btn-default\">Add New Note</a></div>

								</div>

							</div>

						</div>

						<div class=\"widget-content padding0\">						

							<div class=\"row\">

								<div class=\"col-sm-12\" style=\"position:relative;\">

									<div id=\"no-more-tables\">

										<table class=\"col-md-12 table-bordered table-striped table-condensed cf listing\">

											<thead class=\"cf\">

												<tr>

													<td class=\"titlerow width80\">Date</td>

													<td class=\"titlerow width80\">Time</td>

													<td class=\"titlerow\" align=\"left\" width=\"20%\">Creator Name</td>

													<td class=\"titlerow\" align=\"left\" width=\"20%\">Activity</td>

													<td class=\"titlerow\" align=\"left\">Details</td>

												</tr>

											</thead>

											<tbody id=\"tableRows\">$tableRows</tbody>

										</table>

									</div>

								</div>

							</div>

							<div class=\"row mtop10\">

								<div class=\"col-sm-12\">

									<select class=\"form-control width100 floatleft\" name=\"limit\" id=\"limit\" onChange=\"checkloadTableRows();\">

										<option value=\"auto\">Auto</option>

										$limitOpt

									</select>

									<label id=\"fromtodata\"></label>

									<div class=\"floatright\" id=\"Pagination\"></div>

								</div>

							</div>

						</div>";

					$htmlStr .= "</div>

				</div>

			</div>";			

		}

		

		return $htmlStr;

	}

   

	private function filterHAndOptions(){

		$users_id = $_SESSION["users_id"]??0;

		

		$sservices_id = $this->services_id;

		$shistory_type = $this->history_type;

		

		$filterSql = '';

		$bindData = array();

		$bindData['services_id'] = $sservices_id;



		if($shistory_type !=''){

			if(strcmp($shistory_type, 'services')==0){

				$filterSql = "SELECT 'Services Created' AS afTitle, 'services' AS tableName FROM services WHERE services_id = :services_id";

			}

			elseif(strcmp($shistory_type, 'notes')==0){

				$filterSql = "SELECT 'Notes Created' AS afTitle, 'notes' AS tableName FROM notes WHERE note_for = 'services' AND table_id = :services_id";

			}

			elseif(strcmp($shistory_type, 'track_edits')==0){

				$filterSql = "SELECT 'Track Edits' AS afTitle, 'track_edits' AS tableName FROM track_edits WHERE record_for = 'services' AND record_id = :services_id";

			}

			else{

				$filterSql = "SELECT activity_feed_title AS afTitle, 'activity_feed' AS tableName FROM activity_feed WHERE uri_table_name = 'services' AND activity_feed_link LIKE CONCAT('/Services/view/', :services_id)";

			}

		}

		else{

			$filterSql = "SELECT activity_feed_title AS afTitle, 'activity_feed' AS tableName FROM activity_feed WHERE uri_table_name = 'services' AND activity_feed_link = '/Services/view/$sservices_id' 

			UNION ALL SELECT 'Services Created' AS afTitle, 'services' AS tableName FROM services WHERE services_id = :services_id 

			UNION ALL SELECT 'Notes Created' AS afTitle, 'notes' AS tableName FROM notes WHERE note_for = 'services' AND table_id = :services_id 

			UNION ALL SELECT 'Track Edits' AS afTitle, 'track_edits' AS tableName FROM track_edits WHERE record_for = 'services' AND record_id = :services_id";

		}

		

		$totalRows = 0;		

		$actFeeTitOpts = array();

		$query = $this->db->getData($filterSql, $bindData);

		if($query){

			$totalRows = count($query);

			foreach($query as $getOneRow){

				$actFeeTitOpts[$getOneRow['tableName']] = ucfirst(str_replace('_', ' ', $getOneRow['afTitle']));

			}

		}

		

		$this->totalRows = $totalRows;

		ksort($actFeeTitOpts);

		$actFeeTitOpt = "<option value=\"\">All Activities</option>";

		if(!empty($actFeeTitOpts)){

			foreach($actFeeTitOpts as $tableName=>$optlabel){

				$optlabel = stripslashes(trim($optlabel));

				$selected = '';

				if(strcmp($tableName, $shistory_type)==0){$selected = ' selected="selected"';}

				$actFeeTitOpt .= "<option$selected value=\"$tableName\">".stripslashes($optlabel)."</option>";

			}

		}

		

		$this->actFeeTitOpt = $actFeeTitOpt;

	}

	

   private function loadHTableRows(){

		

		$limit = intval($_SESSION["limit"]);

		$rowHeight = $this->rowHeight;

		$page = intval($this->page);

		$totalRows = $this->totalRows;

		$sservices_id = intval($this->services_id);

		$shistory_type = $this->history_type;

		

		$starting_val = ($page-1)*$limit;

		if($starting_val>$totalRows){$starting_val = 0;}

		

		$users_id = $_SESSION["users_id"]??0;

		$currency = $_SESSION["currency"]??'$';

		$dateformat = $_SESSION["dateformat"]??'m/d/Y';

		$timeformat = $_SESSION["timeformat"]??'12 hour';

		

		$bindData = array();

		$bindData['services_id'] = $sservices_id;            

		if($shistory_type !=''){

			if(strcmp($shistory_type, 'services')==0){

				$filterSql = "SELECT users_id, created_on, 'Services Created' AS afTitle, 'services' AS tableName, services_id AS tableId FROM services WHERE services_id = :services_id";

			}

			elseif(strcmp($shistory_type, 'notes')==0){

				$filterSql = "SELECT users_id, created_on, 'Notes Created' AS afTitle, 'notes' AS tableName, notes_id AS tableId FROM notes WHERE note_for = 'services' AND table_id = :services_id";

			}

			elseif(strcmp($shistory_type, 'track_edits')==0){

				$filterSql = "SELECT users_id, created_on, 'Track Edits' AS afTitle, 'track_edits' AS tableName, track_edits_id AS tableId FROM track_edits WHERE record_for = 'services' AND record_id = :services_id";

			}

			else{

				$filterSql = "SELECT users_id, created_on, activity_feed_title AS afTitle, 'activity_feed' AS tableName, activity_feed_id AS tableId FROM activity_feed WHERE uri_table_name = 'services' AND activity_feed_link LIKE CONCAT('/Services/view/', :services_id)";

			}

		}

		else{

			$filterSql = "SELECT users_id, created_on, activity_feed_title AS afTitle, 'activity_feed' AS tableName, activity_feed_id AS tableId FROM activity_feed WHERE uri_table_name = 'services' AND activity_feed_link = '/Services/view/$sservices_id' 

			UNION ALL SELECT users_id, created_on, 'Services Created' AS afTitle, 'services' AS tableName, services_id AS tableId FROM services WHERE services_id = :services_id 

			UNION ALL SELECT users_id, created_on, 'Notes Created' AS afTitle, 'notes' AS tableName, notes_id AS tableId FROM notes WHERE note_for = 'services' AND table_id = :services_id 

			UNION ALL SELECT users_id, created_on, 'Track Edits' AS afTitle, 'track_edits' AS tableName, track_edits_id AS tableId FROM track_edits WHERE record_for = 'services' AND record_id = :services_id";

		}

		$str = '';

		

		$query = $this->db->getData($filterSql, $bindData);

		if($query){

			$userIdNames = array();

			$userObj = $this->db->getObj("SELECT users_id, users_first_name, users_last_name FROM users", array());

			if($userObj){

				while($userOneRow = $userObj->fetch(PDO::FETCH_OBJ)){

					$userIdNames[$userOneRow->users_id] = trim("$userOneRow->users_first_name $userOneRow->users_last_name");

				}

			}

			

			foreach($query as $onerow){

				$singletablename = $onerow['tableName'];

				$tableIdName = $singletablename.'_id';

				$activity_feed_title = $onerow['afTitle'];

				

				$date = date($dateformat, strtotime($onerow['created_on']));

				if($timeformat=='24 hour'){$time =  date('H:i', strtotime($onerow['created_on']));}

				else{$time =  date('g:i a', strtotime($onerow['created_on']));}

				$userNameStr = $userIdNames[$onerow['users_id']]??'Website';

						

				$table_idval = $onerow['tableId'];

				

				if(strcmp($singletablename,'activity_feed')==0){

					$sql2nd = "SELECT activity_feed_name, activity_feed_link FROM activity_feed WHERE $tableIdName = $table_idval";

					$query2nd = $this->db->getObj($sql2nd, array());

					if($query2nd){

						while($oneRow = $query2nd->fetch(PDO::FETCH_OBJ)){

							$activity_feed_name = stripslashes(trim(strip_tags($oneRow->activity_feed_name)));

							$activity_feed_link = $oneRow->activity_feed_link;

							if(!empty($activity_feed_link)){

								$activity_feed_name = "<a href=\"$activity_feed_link\" class=\"txtunderline txtblue\" title=\"View Details\">$activity_feed_name <i class=\"fa fa-link\"></i></a>";

							}

						}

					}

				}

				else{

					$select = "name";

					if(strcmp($singletablename,'notes')==0){

						$select = "note AS name";

					}

					else if(strcmp($singletablename,'track_edits')==0){

						$select = "details AS name";

					}

					$sql2nd = "SELECT $select FROM $singletablename WHERE $tableIdName = $table_idval";

					

					$query2nd = $this->db->getObj($sql2nd, array());

					if($query2nd){

						while($oneRow = $query2nd->fetch(PDO::FETCH_OBJ)){

							$activity_feed_name = stripslashes(trim(strip_tags($oneRow->name)));

							if(strcmp($singletablename,'track_edits')==0){

								$activityFeedNames = array();

								$details = json_decode($activity_feed_name);

								$moreInfo = (array)$details->moreInfo;

								$changed = $details->changed;

								if(array_key_exists('description', $moreInfo)){

									$description = $moreInfo['description'];									

									$activityFeedNames[] = $description;

								}

								if(!empty($changed)){

									$changed = (array)$changed;

									$changeStr = 'Edited: ';

									$c=0;

									foreach($changed as $key=>$changedData){

										$c++;

										if($c>1){$changeStr .= ', ';}

										$changeStr .= ucfirst(str_replace('_', ' ', $key));

										if(!is_array($changedData)){$changeStr .= ' '.$changedData;}

										elseif(is_array($changedData) && count($changedData)==2){												

											$changeStr .= ' "'.$changedData[0].'" to "'.$changedData[1].'"';

										}										

									}

									$activityFeedNames[] = $changeStr;

								}

								$activity_feed_name = implode('<br>', $activityFeedNames);

							}

						}

					}					

				}

				$str .= "<tr>";

				$str .= "<td valign=\"top\" data-title=\"Date\" align=\"left\">$date</td>";

				$str .= "<td valign=\"top\" data-title=\"Time\" align=\"right\">$time</td>";

				$str .= "<td valign=\"top\" data-title=\"Creator Name\" align=\"center\">$userNameStr</td>";

				$str .= "<td valign=\"top\" data-title=\"Activity\" align=\"left\">$activity_feed_title</td>";

				$str .= "<td valign=\"top\" data-title=\"Details\" align=\"left\">$activity_feed_name</td>";

				$str .= "</tr>";

				

			}

		}

		else{

			$str .= "<tr><td colspan=\"5\" style=\"color:red\">No note history meets the criteria given.</td></tr>";

		}

		

		return $str;



   }

		

	public function aJgetHPage(){

	

		$segment3 = $GLOBALS['segment3'];

		$services_id = $_POST['services_id']??0;

		$shistory_type = $_POST['shistory_type']??'';

		$totalRows = $_POST['totalRows']??0;

		$rowHeight = $_POST['rowHeight']??34;

		$page = $_POST['page']??1;

		if($page<=0){$page = 1;}

		$_SESSION["limit"] = $_POST['limit']??'auto';

		

		$this->services_id = $services_id;

		$this->history_type = $shistory_type;

		

		$jsonResponse = array();

		$jsonResponse['login'] = '';

		//===If filter options changes===//	

		if($segment3=='filter'){

			$this->filterHAndOptions();

			$jsonResponse['totalRows'] = $totalRows = $this->totalRows;

			$jsonResponse['actFeeTitOpt'] = $this->actFeeTitOpt;

			

		}

		$this->page = $page;

		$this->totalRows = $totalRows;

		$this->rowHeight = $rowHeight;

		$jsonResponse['tableRows'] = $this->loadHTableRows();

		

		return json_encode($jsonResponse);

	}

	

	public function aJget_ServicesPopup(){

	

		$services_id = $_POST['services_id']??0;

		$servicesData = array();

		$servicesData['login'] = '';

		$servicesData['services_id'] = 0;				

		$servicesData['service_type'] = '';

		$servicesData['name'] = '';

		$servicesData['uri_value'] = '';

		$servicesData['font_awesome'] = '';

		$servicesData['short_description'] = '';

		$servicesData['description'] = '';

		if($services_id>0){

			$servicesObj = $this->db->getObj("SELECT * FROM services WHERE services_id = :services_id", array('services_id'=>$services_id),1);

			if($servicesObj){

				$servicesRow = $servicesObj->fetch(PDO::FETCH_OBJ);	



				$servicesData['services_id'] = $services_id;

				$servicesData['name'] = stripslashes(trim($servicesRow->name));

				$servicesData['service_type'] = stripslashes(trim($servicesRow->service_type));

				$servicesData['uri_value'] = trim($servicesRow->uri_value);

				$servicesData['font_awesome'] = stripslashes(trim($servicesRow->font_awesome));

				$servicesData['short_description'] = stripslashes(trim($servicesRow->short_description));

				$servicesData['description'] = stripslashes(trim($servicesRow->description));

				$servicesData['created_on'] = $servicesRow->created_on;

				$servicesData['last_updated'] = $servicesRow->last_updated;

			}

		}

				

		return json_encode($servicesData);

	}

	

	public function aJsave_Services(){

		// Var_dump('test');exit;

		$savemsg = $message = $str = '';

		

		$users_id = $_SESSION["users_id"]??0;

		$services_id = $_POST['services_id']??0;

		

		

		$name = addslashes(trim($_POST['name']??''));

		

		$bindData = $conditionarray = array();



		$service_type = intval($_POST['service_type']??'');

		$conditionarray['service_type'] = $service_type;

		

		$bindData['name'] = $name;

		$conditionarray['name'] = $name;

		

		$uri_value = addslashes(trim($_POST['uri_value']??''));

		$conditionarray['uri_value'] = $uri_value;



		$font_awesome = addslashes(trim($_POST['font_awesome']??''));

		$conditionarray['font_awesome'] = $font_awesome;



		$short_description = addslashes(trim($_POST['short_description']??''));		

		$conditionarray['short_description'] = $short_description;

		

		$description = addslashes(trim($_POST['description']??''));		

		$conditionarray['description'] = $description;

		

		$conditionarray['users_id'] = $users_id;

		$conditionarray['last_updated'] = date('Y-m-d H:i:s');

		

		if($services_id==0){

			$totalrows = 0;

			$tableObj = $this->db->getObj("SELECT COUNT(services_id) AS totalrows FROM services WHERE name = :name AND services_publish = 1", $bindData);

			if($tableObj){

				$totalrows = $tableObj->fetch(PDO::FETCH_OBJ)->totalrows;						

			}

			if($totalrows>0){

				$savemsg = 'error';

				$message .= "<p>This name and date already exists. Try again with different name/date.</p>";

			}

			else{										

				$conditionarray['created_on'] = date('Y-m-d H:i:s');

				

				$services_id = $this->db->insert('services', $conditionarray);

				if($services_id){

					$str = $name;

				}

				else{

					$savemsg = 'error';

					$message .= "<p>'Error occured while adding new Services! Please try again.'</p>";

				}

			}

		}

		else{

			$totalrows = 0;

			$bindData['services_id'] = $services_id;

			$tableObj = $this->db->getObj("SELECT COUNT(services_id) AS totalrows FROM services WHERE name = :name AND services_id != :services_id AND services_publish = 1", $bindData);

			if($tableObj){

				$totalrows = $tableObj->fetch(PDO::FETCH_OBJ)->totalrows;						

			}

			if($totalrows>0){

				$savemsg = 'error';

				$message .= "<p>This name and date already exists. Try again with different name/date.</p>";

			}

			else{

				$custObj = $this->db->getData("SELECT * FROM services WHERE services_id = $services_id", array());

				

				$update = $this->db->update('services', $conditionarray, $services_id);

				if($update){

					$str = $name;

					

					if($custObj){

						$changed = array();

						unset($conditionarray['last_updated']);

						foreach($conditionarray as $fieldName=>$fieldValue){

							$prevFieldVal = $custObj[0][$fieldName];

							if($prevFieldVal != $fieldValue){

								if($prevFieldVal=='1000-01-01'){$prevFieldVal = '';}

								if($fieldValue=='1000-01-01'){$fieldValue = '';}

								$changed[$fieldName] = array($prevFieldVal, $fieldValue);

							}

						}

						

						if(!empty($changed)){

							$moreInfo = array();

							$teData = array();

							$teData['created_on'] = date('Y-m-d H:i:s');

							$teData['users_id'] = $_SESSION["users_id"];

							$teData['record_for'] = 'services';

							$teData['record_id'] = $services_id;

							$teData['details'] = json_encode(array('changed'=>$changed, 'moreInfo'=>$moreInfo));

							$this->db->insert('track_edits', $teData);							

						}

					}

				}

				

				$savemsg = 'update-success';					

			}

		}

		

		$array = array( 'login'=>'',

						'services_id'=>$services_id,

						'uri_value'=>$uri_value,

						'savemsg'=>$savemsg,

						'message'=>$message,

						'resulthtml'=>$str);

		return json_encode($array);

	}

	

}

?>