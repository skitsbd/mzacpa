<?php
class Notes{
	protected $db;
	public int $table_id, $publicsShow;
	public string $note_for, $signature;
	
	public function __construct($db){$this->db = $db;}
	
	public function showNotesData($editPer){
		$note_for = $this->note_for;
		$table_id = $this->table_id;
		$tabledata = array();
			
		if($note_for !='' && $table_id>0){
			
			$users_id = $_SESSION["users_id"]??0;
			$mainUserId = 0;
			$usersObj3 = $this->db->query("SELECT users_id FROM users WHERE users_publish = 1 AND is_admin = 1", array());
			if($usersObj3){
				$mainUserId = $usersObj3->fetch(PDO::FETCH_OBJ)->users_id;
			}
			
			$sqlquery = "SELECT n.notes_id AS tableId, n.note, n.created_on AS created_on, n.users_id, n.publics, 'notes' AS fromTable 
							FROM notes n WHERE n.table_id = $table_id AND n.note_for = '$note_for' 
						UNION ALL SELECT te.track_edits_id AS tableId, te.details AS note, te.created_on AS created_on, te.users_id, '0' AS publics, 'track_edits' AS fromTable 
							FROM track_edits te WHERE te.record_id = $table_id  AND te.record_for ='$note_for' 
						ORDER BY created_on DESC";		
			//$returnmsg .= $sqlquery;			
			$notesObj = $this->db->query($sqlquery, array());
			$i = 1;
			if($notesObj){
				$usersName = '';
				$userObj = $this->db->query("SELECT users_first_name, users_last_name FROM users WHERE users_id = $users_id", array());
				if($userObj){
					$userOneRow = $userObj->fetch(PDO::FETCH_OBJ);
					$usersName = trim("$userOneRow->users_first_name $userOneRow->users_last_name");
				}
				
				while($onerow = $notesObj->fetch(PDO::FETCH_OBJ)){
					
					$tableId = $onerow->tableId;
					$fromTable = $onerow->fromTable;
					$withoutimage = '';
					if($fromTable=='track_edits') {						
						$noteChanges = array();
						if(!empty($onerow->note)){
							$details = json_decode($onerow->note);
							$moreInfo = (array)$details->moreInfo;
							$changed = $details->changed;
							if(!empty($moreInfo) && array_key_exists('description', $moreInfo)){
								$noteChanges[] = $moreInfo['description'];
							}
							if(!empty($changed)){
								$changed = (array)$changed;
								$changeStr = 'Changed: ';
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
								$noteChanges[] = $changeStr;
							}
						}
						$note = !empty($noteChanges)?implode('<br>', $noteChanges):'';
					}
					else{
						if(strpos($onerow->note, 'fa fa-check-square-o') !== false || strpos($onerow->note, 'fa fa-square-o') !== false) {}
						else{
							$withoutimage = $onerow->note;
						}
						$note = nl2br(stripslashes($onerow->note));
					}
					
					$createdusers_id = $onerow->users_id;
					
					$users_name = '';
					
					if($createdusers_id>0){
						if($users_id !=$createdusers_id){
							$userObj2 = $this->db->query("SELECT users_first_name, users_last_name FROM users WHERE users_id = $createdusers_id", array());
							if($userObj2){
								$userOneRow = $userObj2->fetch(PDO::FETCH_OBJ);
								$users_name .= trim("$userOneRow->users_first_name $userOneRow->users_last_name");
							}
						}
						else{
							$users_name .= $usersName;
						}
					}
					else{
						$users_name .= $this->db->translate('System');
					}

					$tabledata[] = array($tableId, $users_name, $onerow->publics, $fromTable, $note, $onerow->created_on);
				}
			}			
		}
		return $tabledata;
	}
	
	public function getPublicSmallNotes($isArray = 0){
		$note_for = $this->note_for;
		$table_id = $this->table_id;
		$noteData = array();
		$str = '';
		if($note_for !='' && $table_id>0){
			$users_id = $_SESSION["users_id"]??0;
			
			$sqlquery = "SELECT n.note, n.created_on AS created_on, n.users_id, 'notes' AS fromTable  FROM notes n WHERE n.table_id = $table_id AND n.note_for = '$note_for' AND n.publics>0 ORDER BY created_on DESC";		
			$query = $this->db->query($sqlquery, array());
			$i = 1;								
			
			if($query){
				$str .= '<div style="clear: both;margin:15px 0;width:100%; text-align:left; float:left;">
							<div style="background: linear-gradient(to bottom, #FAFAFA 0%, #E9E9E9 100%) repeat-x scroll 0 0 #E9E9E9;border: 1px solid #D5D5D5;border-top-left-radius: 4px;border-top-right-radius: 4px;height: 40px;line-height: 40px;padding-left:15px;">
								<h3 style="font-size:11px !important;margin:0; padding:0;color: #555555;display: inline-block;line-height: 18px;text-shadow: 1px 1px 2px rgba(255, 255, 255, 0.5);"> '.$this->db->translate('Note History').' </h3>
							</div>
							<div style="background:#fff;border: 1px solid #D5D5D5; float:left; width:100%;border-radius: 0px 0px 5px 5px;padding:20px 0px; margin-top: -1px;">
								<table width="99%" cellpadding="5" cellspacing="0">';
				$usersName = '';
				$userObj = $this->db->query("SELECT users_first_name, users_last_name FROM users WHERE users_id = $users_id", array());
				if($userObj){
					$userOneRow = $userObj->fetch(PDO::FETCH_OBJ);
					$usersName = trim("$userOneRow->users_first_name $userOneRow->users_last_name");
				}
								
				while($onerow = $query->fetch(PDO::FETCH_OBJ)){
					$note = nl2br(stripslashes($onerow->note));
					$createdusers_id = $onerow->users_id;
					$users_name = '';
					if($createdusers_id>0){
						if($users_id !=$createdusers_id){
							$userObj2 = $this->db->query("SELECT users_first_name, users_last_name FROM users WHERE users_id = $createdusers_id", array());
							if($userObj2){
								$userOneRow = $userObj2->fetch(PDO::FETCH_OBJ);
								$users_name .= trim("$userOneRow->users_first_name $userOneRow->users_last_name");
							}
						}
						else{
							$users_name .= $usersName;
						}
					}
					else{
						$users_name .= $this->db->translate('System');
					}

					if($isArray>0){
						$noteData = array('fromTable'=>$onerow->fromTable, 'note'=>$note, 'created_on'=>$onerow->created_on, 'users_name'=>$users_name);
					}
					else{
						$dateformat = $_SESSION["dateformat"]??'m/d/Y';
						$timeformat = $_SESSION["timeformat"]??'12 hour';
						if($timeformat=='24 hour'){$created_on =  date($dateformat.' H:i', strtotime($onerow->created_on));}
						else{$created_on =  date($dateformat.' g:i a', strtotime($onerow->created_on));}
					
						$border = '';
						if($i>1){$border = '<hr />';}
						$str .= "<tr>
								<td style=\"padding-top: 5px;word-wrap: break-word;font-size:11px;line-height: 21px; padding:0 20px;\">
									$border
									<strong>$created_on  By $users_name</strong><br />
									$note
								</td>
							</tr>";							
						$i++;					
					}
				}
				
				$str .= '</table>
						</div>
					</div>
								';
			}
		}
		
		if($isArray>0){
			return $noteData;
		}
		else{
			return $str;
		}
	}
	
	public function getPublicNotes($isArray = 0){
		$note_for = $this->note_for;
		$table_id = $this->table_id;
		$noteData = array();
		$str = '';
		if($note_for !='' && $table_id>0){
			$users_id = $_SESSION["users_id"]??0;
			
			$sqlquery = "SELECT n.note, n.created_on AS created_on, n.users_id, 'notes' AS fromTable FROM notes n WHERE n.table_id = $table_id AND n.note_for = '$note_for' AND n.publics>0 ORDER BY created_on DESC";		
			$query = $this->db->query($sqlquery, array());
			$i = 1;								
			
			if($query){
				$str .= '<div style="clear: both;margin:15px 0;width:99.80%;text-align:left; float:left;">
							<div style="background: linear-gradient(to bottom, #FAFAFA 0%, #E9E9E9 100%) repeat-x scroll 0 0 #E9E9E9;border: 1px solid #D5D5D5;border-top-left-radius: 4px;border-top-right-radius: 4px;height: 40px;line-height: 40px;padding-left:15px;">
								<h3 style="font-size: 14px !important;margin:0; padding:0;color: #555555;display: inline-block;line-height: 18px;text-shadow: 1px 1px 2px rgba(255, 255, 255, 0.5);"> '.$this->db->translate('Note History').' </h3>
							</div>
							<div style="background:#fff;border: 1px solid #D5D5D5; float:left; width:100%;border-radius: 0px 0px 5px 5px;padding:20px 0px; margin-top: -1px;">
								<table width="99%" cellpadding="5" cellspacing="0">';
				$usersName = '';
				$userObj = $this->db->query("SELECT users_first_name, users_last_name FROM users WHERE users_id = $users_id", array());
				if($userObj){
					$userOneRow = $userObj->fetch(PDO::FETCH_OBJ);
					$usersName = trim("$userOneRow->users_first_name $userOneRow->users_last_name");
				}
				
				while($onerow = $query->fetch(PDO::FETCH_OBJ)){
					$note = nl2br(stripslashes($onerow->note));
					
					$createdusers_id = $onerow->users_id;
					$users_name = '';
					if($createdusers_id>0){
						if($users_id !=$createdusers_id){
							$userObj2 = $this->db->query("SELECT users_first_name, users_last_name FROM users WHERE users_id = $createdusers_id", array());
							if($userObj2){
								$userOneRow = $userObj2->fetch(PDO::FETCH_OBJ);
								$users_name .= trim("$userOneRow->users_first_name $userOneRow->users_last_name");
							}
						}
						else{
							$users_name .= $usersName;
						}
					}
					else{
						$users_name .= $this->db->translate('System');
					}

					if($isArray>0){
						$noteData = array('fromTable'=>$onerow->fromTable, 'note'=>$note, 'created_on'=>$onerow->created_on, 'users_name'=>$users_name);
					}
					else{
						
						$dateformat = $_SESSION["dateformat"]??'m/d/Y';
						$timeformat = $_SESSION["timeformat"]??'12 hour';
						if($timeformat=='24 hour'){$created_on =  date($dateformat.' H:i', strtotime($onerow->created_on));}
						else{$created_on =  date($dateformat.' g:i a', strtotime($onerow->created_on));}
					
						$border = '';
						if($i>1){$border = '<hr />';}
						$str .= "<tr>
								<td style=\"padding-top: 5px;word-wrap: break-word;font-size: 14px;line-height: 21px; padding:0 20px;\">
									$border
									<strong>$created_on  By $users_name</strong><br />
									$note
								</td>
							</tr>";							
						$i++;					
					}
				}
				
				$str .= '</table>
						</div>
					</div>';
			}
		}
		
		if($isArray>0){
			return $noteData;
		}
		else{
			return $str;
		}
	}
}
?>