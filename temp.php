
/*============= Why choose us Module ============*/
function filter_Manage_Data_why_choose_us(){
	var limit = j('#limit').val();
	var page = 1;
	j("#page").val(page);
	
	var jsonData = {};
	jsonData['keyword_search'] = j('#keyword_search').val();			
	jsonData['totalRows'] = j('#totalTableRows').val();
	jsonData['rowHeight'] = j('#rowHeight').val();
	jsonData['limit'] = limit;
	jsonData['page'] = page;
	
	j("body").append('<div class="disScreen"><img src="/assets/images/ajax-loader.gif"></div>');
	j.ajax({method: "POST", dataType: "json",
		url: "/Manage_Data/aJgetPage_why_choose_us/filter",
		data: jsonData,
	}).done(function(data){
		if(data.login != ''){window.location = '/'+data.login;}
		else{
			j("#tableRows").html(data.tableRows);
			j("#totalTableRows").val(data.totalRows);
			
			if(j.inArray(limit, [15, 20, 25, 50, 100, 500])){j("#limit").val(limit);}
			else{j("#limit").val('auto');}
			
			onClickPagination();
			setTimeout(function(){
				loadPictureHover();
			}, 500);
		}

		if(j(".disScreen").length){j(".disScreen").remove();}
	})
	.fail(function(){
		connection_dialog(filter_Manage_Data_why_choose_us);
	});
}

function loadTableRows_Manage_Data_why_choose_us(){
	var jsonData = {};
	jsonData['keyword_search'] = j('#keyword_search').val();			
	jsonData['totalRows'] = j('#totalTableRows').val();
	jsonData['rowHeight'] = j('#rowHeight').val();	
	jsonData['limit'] = j('#limit').val();
	jsonData['page'] = j('#page').val();
	
	j("body").append('<div class="disScreen"><img src="/assets/images/ajax-loader.gif"></div>');
	j.ajax({method: "POST", dataType: "json",
		url: "/Manage_Data/aJgetPage_why_choose_us",
		data: jsonData,
	}).done(function( data ) {
		if(data.login != ''){window.location = '/'+data.login;}
		else{
			j("#tableRows").html(data.tableRows);
			onClickPagination();
		}
		if(j(".disScreen").length){j(".disScreen").remove();}
	})
	.fail(function() {			
		connection_dialog(loadTableRows_Manage_Data_why_choose_us);
	});
}

function AJsave_why_choose_us(){
	j("#submit").val('Saving...').prop('disabled', true);
	j("body").append('<div class="disScreen"><img src="/assets/images/ajax-loader.gif"></div>');
	j.ajax({method: "POST", dataType: "json",
		url: '/Manage_Data/AJsave_why_choose_us/',
		data: j("#frmwhy_choose_us").serialize(),
	})
	.done(function( data ) {
		if(data.login !=''){window.location = '/'+data.login;}
		else if(data.savemsg !='error' && (data.returnStr=='Add' || data.returnStr=='Update')){
			resetForm_why_choose_us();
			if(data.returnStr=='Add'){
				j("#showmessagehere").html('<div class="col-sm-12 col-sm-12 col-md-12"><div class="bs-callout bs-callout-info well success_msg">Added successfully.</div></div>').fadeIn(500);
				setTimeout(function() {j("#showmessagehere").slideUp(500);}, 5000);
			}
			else{
				j("#showmessagehere").html('<div class="col-sm-12 col-sm-12 col-md-12"><div class="bs-callout bs-callout-info well success_msg">Updated successfully.</div></div>').fadeIn(500);
				setTimeout(function() {j("#showmessagehere").slideUp(500);}, 5000);
			}
			filter_Manage_Data_why_choose_us();	
			j("#submit").val('Add').prop('disabled', false);			
		}
		else{
			alert_dialog('Alert message', data.returnStr, 'Ok');			
			j("#submit").val('Add').prop('disabled', false);
		}
		if(j(".disScreen").length){j(".disScreen").remove();}
	})
	.fail(function() {		
		connection_dialog(AJsave_why_choose_us);
	});
	return false;
}

function resetForm_why_choose_us(){
	document.getElementById('formtitle').innerHTML = 'Add New Why choose us';
	document.getElementById('why_choose_us_id').value = 0;
	document.getElementById('name').value = '';
	document.getElementById('description').value = '';
	j("#reset").fadeOut(500);
	j("#archive").fadeOut(500);
}

<?php
  
	//========================For Why choose us module=======================//    		
	public function why_choose_us($segment3){
		
		$this->pageTitle = $GLOBALS['title'];
		$list_filters = $_SESSION['list_filters']??array();
		
		$keyword_search = $list_filters['keyword_search']??'';
		$this->keyword_search = $keyword_search;
		
		$this->filterAndOptions_why_choose_us();
		
		$page = !empty($segment3) ? intval($segment3):1;
		if($page<=0){$page = 1;}
		if(!isset($_SESSION['limit'])){$_SESSION['limit'] = 'auto';}
		$limit = $_SESSION['limit'];
		
		$this->rowHeight = 34;
		$this->page = $page;
		$tableRows = $this->loadTableRows_why_choose_us();
		
		$limOpt = '';
		$limOpts = array(15, 20, 25, 50, 100, 500);
		foreach($limOpts as $oneOpt){
			$selected = '';
			if($limit==$oneOpt){$selected = ' selected';}
			$limOpt .= "<option$selected value=\"$oneOpt\">$oneOpt</option>";
		}
		
		$innerHTMLStr = "<input type=\"hidden\" name=\"pageURI\" id=\"pageURI\" value=\"$GLOBALS[segment1]/$GLOBALS[segment2]\">
		<input type=\"hidden\" name=\"page\" id=\"page\" value=\"$this->page\">
		<input type=\"hidden\" name=\"rowHeight\" id=\"rowHeight\" value=\"$this->rowHeight\">
		<input type=\"hidden\" name=\"totalTableRows\" id=\"totalTableRows\" value=\"$this->totalRows\">		
		<div class=\"row\">
			<div class=\"col-sm-12 col-sm-12 col-md-7\">
				<div class=\"row\">
					<div class=\"col-sm-12 col-md-6\">
						<h1 class=\"metatitle\">Why choose us List <i class=\"fa fa-info-circle txt16normal\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"Why choose us List\"></i></h1>
					</div>				
					<div class=\"col-sm-12 col-md-6\">
						<div class=\"input-group\">
							<input type=\"text\" placeholder=\"Search Why choose us\" value=\"$keyword_search\" id=\"keyword_search\" name=\"keyword_search\" class=\"form-control\" maxlength=\"50\" />
							<span class=\"input-group-addon cursor\" onClick=\"checkAndLoadFilterData();\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"Search Why choose us\">
								<i class=\"fa fa-search\"></i>
							</span>
						</div>
					</div>
				</div>				
				<div class=\"row\">
					<div class=\"col-sm-12\" style=\"position:relative;\">
						<div id=\"no-more-tables\">
							<table class=\"col-sm-12 table-bordered table-striped table-condensed cf listing\">
								<thead class=\"cf\">
									<tr>
										<th class=\"txtcenter\">ID</th>
										<th class=\"txtcenter\">Name</th>
										<th class=\"txtcenter\">Description</th>
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
				</div>
			</div>
			<div class=\"col-sm-12 col-sm-12 col-md-5\">            
				<h4 class=\"borderbottom\" id=\"formtitle\">Add New Why choose us</h4>
				<form action=\"#\" name=\"frmwhy_choose_us\" id=\"frmwhy_choose_us\" onsubmit=\"return AJsave_why_choose_us();\" enctype=\"multipart/form-data\" method=\"post\" accept-charset=\"utf-8\">
					<div class=\"form-group\">
						<label for=\"name\">Name<span class=\"required\">*</span></label>
						<input type=\"text\" required class=\"form-control\" name=\"name\" id=\"name\" value=\"\" size=\"255\" maxlength=\"255\"/>
						<span id=\"error_name\" class=\"errormsg\"></span>
					</div>
					<div class=\"form-group\">
						<label for=\"description\">Description<span class=\"required\">*</span></label>
						<textarea rows=\"15\" cols=\"50\" required class=\"form-control\" name=\"description\" id=\"description\"></textarea>
						<span id=\"error_description\" class=\"errormsg\"></span>
					</div>
					<div class=\"form-group\">
						<input type=\"hidden\" name=\"why_choose_us_id\" id=\"why_choose_us_id\" value=\"0\">
						<input type=\"submit\" id=\"submit\" class=\"btn btn-primary backlink\" value=\" Save \" />
						<input type=\"button\" name=\"reset\" id=\"reset\" onClick=\"resetForm_why_choose_us();\" value=\"Cancel\" class=\"hidediv btn btn-warning floatleft mleft10\" />
						<input type=\"button\" name=\"archive\" id=\"archive\" value=\"Archive\" class=\"hidediv btn btn-danger floatright\" />
					</div>
				</form>
				<!--link href=\"/assets/css/jqueryimageupload.css\" rel=\"stylesheet\" type=\"text/css\">
				<script type=\"text/javascript\" src=\"/assets/js/jquery.form.min.js\"></script-->
			</div>
		</div>";
    		
		$htmlStr = $this->htmlBody($innerHTMLStr);
		return $htmlStr;
	}
	
	public function AJsave_why_choose_us(){
		
		$users_id = $_SESSION["users_id"]??0;
		$returnStr = 'Ok';		
		$savemsg = '';
		$why_choose_us_id = $_POST['why_choose_us_id']??0;
		$name = trim(addslashes($_POST['name']??''));
		$description = trim(addslashes($_POST['description']??''));
		
		$conditionarray = array();
		$conditionarray['name'] = $name;
		$conditionarray['description'] = $description;
		$conditionarray['last_updated'] = date('Y-m-d H:i:s');
		$conditionarray['users_id'] = $users_id;
		
		$duplSql = "SELECT why_choose_us_publish, why_choose_us_id FROM why_choose_us WHERE name = :name";
		$bindData = array('name'=>$name);
		if($why_choose_us_id>0){
			$duplSql .= " AND why_choose_us_id != :why_choose_us_id";
			$bindData['why_choose_us_id'] = $why_choose_us_id;
		}
		$duplSql .= " LIMIT 0, 1";
		$duplRows = 0;
		$why_choose_usObj = $this->db->getData($duplSql, $bindData);
		if($why_choose_usObj){
			foreach($why_choose_usObj as $onerow){
				$duplRows = 1;
				$why_choose_us_publish = $onerow['why_choose_us_publish'];
				if($why_choose_us_id==0 && $why_choose_us_publish==0){
					$why_choose_us_id = $onerow['why_choose_us_id'];
					$this->db->update('why_choose_us', array('why_choose_us_publish'=>1), $why_choose_us_id);
					$duplRows = 0;
					$returnStr = 'Update';
				}
			}
		}
		
		if($duplRows>0 || empty($name)){
			$savemsg = 'error';
			$returnStr = "<p>This name is already exist! Please try again with different name.</p>";
		}
		else{			
			if($why_choose_us_id==0){
				$conditionarray['created_on'] = date('Y-m-d H:i:s');
				$why_choose_us_id = $this->db->insert('why_choose_us', $conditionarray);
				if($why_choose_us_id){						
					$returnStr = 'Add';
				}
				else{
					$returnStr = 'Adding new Why choose us';
				}
			}
			else{

				$update = $this->db->update('why_choose_us', $conditionarray, $why_choose_us_id);
				if($update){
					$activity_feed_title = 'Why choose us was edited';
					$activity_feed_link = "/Manage_Data/why_choose_us/view/$why_choose_us_id";
					
					$afData = array('created_on' => date('Y-m-d H:i:s'),
									'users_id' => $_SESSION["users_id"],
									'activity_feed_title' =>  $activity_feed_title,
									'activity_feed_name' => $name,
									'activity_feed_link' => $activity_feed_link,
									'uri_table_name' => "why_choose_us",
									'uri_table_field_name' =>"why_choose_us_publish",
									'field_value' => 1);
					$this->db->insert('activity_feed', $afData);
					
					$returnStr = 'Update';
				}
				elseif($returnStr == 'Ok'){
					$returnStr = 'No changes / Error occurred while updating data! Please try again.';
				}
			}
		}
		
		return json_encode(array('login'=>'', 'returnStr'=>$returnStr, 'savemsg'=>$savemsg));
	}
	
	public function aJgetPage_why_choose_us($segment3){
	
		$keyword_search = $_POST['keyword_search']??'';
		$totalRows = $_POST['totalRows']??0;
		$rowHeight = $_POST['rowHeight']??34;
		$page = $_POST['page']??1;
		if($page<=0){$page = 1;}
		$_SESSION["limit"] = $_POST['limit']??'auto';
		
		$this->keyword_search = $keyword_search;
		
		$jsonResponse = array();
		$jsonResponse['login'] = '';
		//===If filter options changes===//	
		if($segment3=='filter'){
			$this->filterAndOptions_why_choose_us();
			$jsonResponse['totalRows'] = $totalRows = $this->totalRows;
		}
		$this->page = $page;
		$this->totalRows = $totalRows;
		$this->rowHeight = $rowHeight;
		
		$jsonResponse['tableRows'] = $this->loadTableRows_why_choose_us();
		
		return json_encode($jsonResponse);
	}
	
	private function filterAndOptions_why_choose_us(){
		
		$keyword_search = $this->keyword_search;
		
		$_SESSION["current_module"] = "Manage_Data";
		$_SESSION["list_filters"] = array('keyword_search'=>$keyword_search);
		
		$filterSql = "FROM why_choose_us WHERE why_choose_us_publish = 1";
		$bindData = array();
		if($keyword_search !=''){
			$keyword_search = addslashes(trim($keyword_search));
			if ( $keyword_search == "" ) { $keyword_search = " "; }
			$keyword_searches = explode (" ", $keyword_search);
			if ( strpos($keyword_search, " ") === false ) {$keyword_searches[0] = $keyword_search;}
			$num = 0;
			while ( $num < sizeof($keyword_searches) ) {
				$filterSql .= " AND name LIKE CONCAT('%', :keyword_search$num, '%')";
				$bindData['keyword_search'.$num] = trim($keyword_searches[$num]);
				$num++;
			}
		}
		
		$totalRows = 0;
		$strextra ="SELECT COUNT(why_choose_us_id) AS totalrows $filterSql";
		$query = $this->db->getObj($strextra, $bindData);
		if($query){
			$totalRows = $query->fetch(PDO::FETCH_OBJ)->totalrows;
		}
		$this->totalRows = $totalRows;		
	}
	
  private function loadTableRows_why_choose_us(){
		
		$limit = $_SESSION["limit"];
		$rowHeight = $this->rowHeight;
		$page = $this->page;
		$totalRows = $this->totalRows;
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
		
		$filterSql = "FROM why_choose_us WHERE why_choose_us_publish = 1";
		$bindData = array();
		if($keyword_search !=''){
			$keyword_search = addslashes(trim($keyword_search));
			if ( $keyword_search == "" ) { $keyword_search = " "; }
			$keyword_searches = explode (" ", $keyword_search);
			if ( strpos($keyword_search, " ") === false ) {$keyword_searches[0] = $keyword_search;}
			$num = 0;
			while ( $num < sizeof($keyword_searches) ) {
				$filterSql .= " AND name LIKE CONCAT('%', :keyword_search$num, '%')";
				$bindData['keyword_search'.$num] = trim($keyword_searches[$num]);
				$num++;
			}
		}
		
		$sqlquery = "SELECT * $filterSql ORDER BY name ASC LIMIT $starting_val, $limit";
		$query = $this->db->getData($sqlquery, $bindData);
		$str = '';
		if($query){
			foreach($query as $onerow){

				$why_choose_us_id = $onerow['why_choose_us_id'];
				$name = trim(stripslashes((string) $onerow['name']));
				$description = trim(stripslashes((string) $onerow['description']));
				
				$str .= "<tr class=\"cursor\">
							<td data-title=\"ID\" onClick=\"getOneRowInfo('why_choose_us', $why_choose_us_id);\" align=\"right\">$why_choose_us_id</td>
							<td data-title=\"Name\" onClick=\"getOneRowInfo('why_choose_us', $why_choose_us_id);\" align=\"left\">$name</td>
							<td data-title=\"Description\" align=\"left\">$description</td>
						</tr>";
			}
		}
		else{
			$str .= "<tr><td class=\"errormsg\" colspan=\"3\">There is no why_choose_us meet this criteria</td></tr>";
		}
		return $str;
  }
	
?>