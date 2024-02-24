<?php
declare(strict_types=1);
ini_set('display_errors', '1');
ini_set('log_errors', '1');
session_start();

$serverexp = explode('.', $_SERVER['SERVER_NAME']);
$subdomain = '';
if(count($serverexp)>2){
	$subdomain = implode(array_slice($serverexp, -3, 1));
}
$sitename =  strtolower(implode('.', array_slice($serverexp, -2, 2)));

define('OUR_DOMAINNAME', $sitename);
define('COMPANYNAME', 'MZA CPA Professional Corporation');
define('LIVE_DOMAIN', 'simpleaccounting.ca');

$approvedDomains = array(LIVE_DOMAIN, 'sksoftsolutions.ca', 'mzacpal.ca');

if(!in_array(OUR_DOMAINNAME, $approvedDomains)){
	echo 'There has been a error with your request.  If you have questions please email us at info@mzacpa.ca';
	exit;
}

if(OUR_DOMAINNAME == LIVE_DOMAIN){error_reporting(-1);}
else{error_reporting(1);}

if(OUR_DOMAINNAME == LIVE_DOMAIN){
	$baseURL = 'https://';
	error_reporting(-1);
}
else{
	$baseURL = 'http://';
	error_reporting(1);
}

if(empty($subdomain)){
	$baseURL .= $sitename;
}
else{
	$baseURL .= "$subdomain.$sitename";
}
// echo $baseURL;exit;
define('baseURL', $baseURL);

date_default_timezone_set('America/Toronto');

$segments =  array_slice(explode('/',$_SERVER['REQUEST_URI']), 1);
$segment1=$segment2=$segment3=$segment4=$segment5=$segment6=$segment7=$segment8='';
if(!empty($segments)){
	$segment1 = trim($segments[0]);
	if(strpos($segment1, '?') !== false){
		$segment1Exp = explode('?', $segment1);
		$segment1 = $segment1Exp[0];
	}
	if(count($segments)>1){
		$segment2 = trim($segments[1]);
		if(count($segments)>2){
			$segment3 = trim($segments[2]);
			if(count($segments)>3){
				$segment4 = trim($segments[3]);				
				if(count($segments)>4){
					$segment5 = trim($segments[4]);
					if(count($segments)>5){
						$segment6 = trim($segments[5]);
						if(count($segments)>6){
							$segment7 = trim($segments[6]);
							if(count($segments)>7){
								$segment8 = trim($segments[7]);
							}
						}
					}
				}
			}
		}
	}
}
spl_autoload_register(function ($class_name) {
	$class_name = str_replace('PHPMailer/PHPMailer/', 'PHPMailer/', str_replace('\\', '/', $class_name));
	$fullPath = "apps/$class_name.php";
	
	if(!file_exists($fullPath)){return false;}
	require_once ($fullPath);
});

$db = new Db();

set_error_handler(function(int $num, string $str, string $file, string $line) {
	$users_id = $_SESSION["users_id"]??0;
	$Browser = explode(' (', $_SERVER['HTTP_USER_AGENT']);
	$message = "Encountered error $num in $file, line $line: $str, [AccID: $users_id, Browser: $Browser[0]]";
	$GLOBALS['db']->writeIntoLog($message);
});

//API
if(in_array($segment1, array('run_daily_cron', 'Createbarcode', 'widget', 'unsubscribe'))){
	include "apps/$segment1.php";
	exit;
}

if(in_array($subdomain, array('', 'www','mzacpal'))){
	$title = 'MZA CPA Professional Corporation.';
	
	$functionName = 'home';
	$clsObj = new Index($db);
	
	$clsFuncNames = get_class_methods($clsObj);
	$viewFunctions = array('home'=>stripslashes('Welcome to '.COMPANYNAME));
	$segment2URI = $segment3URI = '';
	if(!empty($segment1)){
			
		$segment2URI = str_replace('.html', '', $segment1);
		if(!empty($segment2)){
			$segment3URI = str_replace('.html', '', $segment2);
		}
	}
	if(empty($segment2)){
		$segment2 = 'Index';
	}
	
	if(in_array($segment2URI, array('appointments', 'Checkout', 'other-services', 'about-us', 'set_sessionBranchesId', 'checkRegistered', 'My_Order', 'getPOSInfo', 'home', 'forbidden', 'our-team', 'immigration', 'fingerprint', 'legal-services', 'accounting-services', 'fingerprint-services', 'nuans-service', 'soleproprietorship-service', 'federal-service', 'ontario-service', 'business-service', 'professional-service', 'company-assessment', 'businessformation-services', 'practice-areas', 'videos-main', 'gallery-main', 'search', 'sendAssessments', 'checkMVCVerified', 'checkShippingAddress', 'confirmCheckOut', 'contact-us', 'why-choose-us', 'news-articles', 'sendContactUs','fetchNews'))){
		
		$functionName = str_replace('contact-us', 'contactUs', $segment2URI);
		$functionName = str_replace('Checkout', 'checkout', $functionName);
		$functionName = str_replace('My_Order', 'my_Order', $functionName);
		$functionName = str_replace('home', 'home', $functionName);
		$functionName = str_replace('company-assessment', 'companyAssessment', $functionName);
		$functionName = str_replace('nuans-service', 'nuansService', $functionName);
		$functionName = str_replace('soleproprietorship-service', 'soleproprietorshipService', $functionName);
		$functionName = str_replace('federal-service', 'federalService', $functionName);
		$functionName = str_replace('ontario-service', 'ontarioService', $functionName);
		$functionName = str_replace('business-service', 'businessService', $functionName);
		$functionName = str_replace('professional-service', 'professionalService', $functionName);
		$functionName = str_replace('our-team', 'ourTeam', $functionName);
		$functionName = str_replace('legal-services', 'legalServices', $functionName);
		$functionName = str_replace('accounting-services', 'accountingServices', $functionName);
        $functionName = str_replace('fingerprint-services', 'fingerprintServices', $functionName);
		$functionName = str_replace('about-us', 'aboutUs', $functionName);
		$functionName = str_replace('forbidden', 'forbidden404', $functionName);
		$functionName = str_replace('why-choose-us', 'whyChooseUs', $functionName);
		$functionName = str_replace('news-articles', 'newsMain', $functionName);
		$functionName = str_replace('businessformation-services', 'businessFormationServices', $functionName);
		$functionName = str_replace('practice-areas', 'practiceAreas', $functionName);
		$functionName = str_replace('other-services', 'otherServices', $functionName);
		$functionName = str_replace('videos-main', 'videosMain', $functionName);
		$functionName = str_replace('gallery-main', 'galleryMain', $functionName);
		
		if($functionName=='contactUs'){			
			$viewFunctions[$functionName] = ucwords(strtolower("Contact Us"));
			  
			$title = ucwords(strtolower("Contact Us"));
		}
		elseif($functionName=='companyAssessment'){			
			$viewFunctions[$functionName] = ucwords(strtolower("Request A Free Consultation"));
			$title = ucwords(strtolower("Request A Free Consultation"));
		}
		elseif($functionName=='checkout'){
			$title = trim(stripslashes('Checkout Page'));
		}
		elseif($functionName=='my_Order'){
			$viewFunctions[$functionName] = ucwords(strtolower("My Order Information"));
		}
		elseif($functionName=='aboutUs'){
			$title = trim(stripslashes('About Us'));
		}
		elseif($functionName=='immigration'){
			$title = trim(stripslashes('Immigration'));
		}
		elseif($functionName=='nuansService'){
			$title = trim(stripslashes('Nuans Report'));
		}
		elseif($functionName=='soleproprietorshipService'){
			$title = trim(stripslashes('Sole Proprietorship'));
		}
		elseif($functionName=='federalService'){
			$title = trim(stripslashes('Federal Corporation'));
		}
		elseif($functionName=='ontarioService'){
			$title = trim(stripslashes('Ontario Corporation'));
		}
		elseif($functionName=='businessService'){
			$title = trim(stripslashes('Corporation’s Name Change'));
		}
		elseif($functionName=='professionalService'){
			$title = trim(stripslashes('Articles of Amendment'));
		}
		elseif($functionName=='ourTeam'){
			$title = trim(stripslashes('Our Team'));
		}
		elseif($functionName=='fingerprint'){
			$title = trim(stripslashes('Fingerprint'));
		}
		elseif($functionName=='legalService'){
			$title = trim(stripslashes('Legal Service'));
		}
		elseif($functionName=='appointments'){
			$title = trim(stripslashes('Appointment'));
			$viewFunctions[$functionName] = ucwords(strtolower("Book for appointments"));
		}
		elseif($functionName=='businessFormationServices'){
			$title = trim(stripslashes('Bussiness Formation Services'));
		}
		elseif($functionName=='practiceAreas'){
			$title = trim(stripslashes('Practice Areas'));
		}
		elseif($functionName=='otherServices'){
			$title = trim(stripslashes('Services'));
		}
		elseif($functionName=='legalServices'){
			$title = trim(stripslashes('Legal Services'));
		}
		elseif($functionName=='fingerprintServices'){
			$title = trim(stripslashes('Finger Print Services'));
		}
		elseif($functionName=='videosMain'){
			$title = trim(stripslashes('Videos'));
		}
		elseif($functionName=='galleryMain'){
			$title = trim(stripslashes('Gallery'));
		}
		elseif($functionName=='whyChooseUs'){
			$title = trim(stripslashes('WHY CHOOSE US'));
		}
		elseif($functionName=='newsMain'){
			$title = trim(stripslashes('Practice Areas'));
		}
		else{
			$viewFunctions[$functionName] = ucwords(strtolower("All $segment2URI lists"));
		}
	}
	elseif(!empty($segment2URI)){ 
		
		
		$tableObj = $db->getObj("SELECT pages_id AS id, name, 'pages' AS tableName FROM pages WHERE uri_value = :uri_value", array('uri_value'=>$segment2URI));
		
		if(!$tableObj){				
			$tableObj = $db->getObj("SELECT services_id AS id, name, 'services' AS tableName FROM services WHERE uri_value = :uri_value", array('uri_value'=>$segment3URI));	
		}

		
		if(!$tableObj){
			$tableObj = $db->getObj("SELECT news_articles_id AS id, name, 'newses' AS tableName FROM news_articles WHERE uri_value = :uri_value", array('uri_value'=>$segment2URI));
		}

		if(!$tableObj){
			$tableObj = $db->getObj("SELECT customers_id AS id, name, 'customers' AS tableName FROM customers WHERE uri_value = :uri_value", array('uri_value'=>$segment2URI));
		}

		if(!$tableObj){
			$tableObj = $db->getObj("SELECT teams_id AS id, name, 'teams' AS tableName FROM teams WHERE uri_value = :uri_value", array('uri_value'=>$segment2URI));
		}	
		
		if($tableObj){	
			
			$tableRow = $tableObj->fetch(PDO::FETCH_OBJ);
			$id = $tableRow->id;
			$functionName = $tableRow->tableName;
			$title = trim(stripslashes($tableRow->name));
		} else {
			$functionName = "forbidden404";
		}

	}
	
	if($functionName == 'home' && !empty($segment3name) && in_array($segment3name, $clsFuncNames)) {
		$functionName = $segment3name;
	}
	
	echo $clsObj->$functionName();
	exit;
}


if($segment1=='Login'){
	if(empty($segment2)){$segment2 = 'index';}
	
	$clsObj = new $segment1($db);
	$clsFuncNames = get_class_methods($clsObj);
	$viewFunctions = array('index'=>stripslashes('Login into '.COMPANYNAME), 'forgotpassword'=>stripslashes("Forgot Password"), 'setnewpassword'=>stripslashes("Set New Password"));
	
	if(in_array($segment2, $clsFuncNames) && !array_key_exists($segment2, $viewFunctions)){
		echo $clsObj->$segment2($segment4, $segment5);
		exit;
	}

	if(array_key_exists($segment2, $viewFunctions)){
		$title = $viewFunctions[$segment2];
	}
	else{
		$title = $viewFunctions['index'];
		$segment2 = 'index';
	}
	echo $clsObj->headerHTML();
	echo $clsObj->$segment2($segment4);
	echo $clsObj->footerHTML();
	exit;
}

if(!isset($_SESSION["users_id"])){
	header('location:/Login/index/session_ended');
	exit;
}

if(!in_array($segment1, array('Home', 'Appointments', 'Customers', 'Teams', 'News_articles', 'Services', 'Activity_Feed', 'Manage_Data', 'Settings', 'Common'))){	
	if(isset($_SESSION["users_id"])){
		header('location:/Home/index');
	}
	else{
		header('location:/Login/index/');
	}
	exit;	
}

$allowSeg1 = $segment1;

$users_id = $_SESSION["users_id"]??0;
$allowedModules = array();
if(!empty($_SESSION["allowed"])){$allowedModules = $_SESSION["allowed"];}
if(in_array($allowSeg1, array('Home', 'Common')) || $users_id <=2) {}
elseif(!empty($allowedModules) && !array_key_exists($allowSeg1, $allowedModules)){
	if(isset($_POST) && !empty($_POST)){
		echo json_encode(array('login'=>'Home/notpermitted/'));
	}
	else{
		header('location:/Home/notpermitted/');
	}
	exit;
}

if(empty($segment2)){
	if(in_array($segment1, array('Home', 'Refund'))){$segment2 = 'index';}
	elseif($segment1=='Settings'){$segment2 = 'myInfo';}
	elseif($segment1=='Manage_Data'){$segment2 = 'export';}
	else{$segment2 = 'lists';}
}

$clsObj = new $segment1($db);

if($segment1=='Manage_Data' && $segment2=='export_data_csv'){
	$exportdata =  $clsObj->$segment2($segment3, $segment4);
	$filename = date("Y-m-d-H-i-s").'-';
	$filename .= str_replace(' ', '-', $_POST['export_type']??'').'.csv';
	header('Content-Type: text/csv; charset=utf-8');
	header('Content-Disposition: attachment; filename='.$filename);
	

	$output = fopen('php://output', 'w');
	if(!empty($exportdata) && is_array($exportdata)){
		foreach($exportdata as $oneRow){
			fputcsv($output, $oneRow);
		}
	}
	fclose($output);
	exit;
}

$viewFunctions = array();
if($segment1=='Home'){$viewFunctions = array('index'=>stripslashes('Welcome to '.COMPANYNAME), 'help'=>stripslashes('Help'), 'notpermitted'=>stripslashes('Not Permitted'));}
elseif($segment1=='Appointments'){$viewFunctions = array('lists'=>stripslashes('Manage Appointments'), 'view'=>stripslashes("Appointment Information"));}
elseif($segment1=='Customers'){$viewFunctions = array('lists'=>stripslashes('Manage Customers'), 'view'=>stripslashes("Customers Information"));}
elseif($segment1=='Teams'){$viewFunctions = array('lists'=>stripslashes('Manage Team'), 'view'=>stripslashes("Team Information"));}
elseif($segment1=='News_articles'){$viewFunctions = array('lists'=>stripslashes('Manage Practice Areas'), 'view'=>stripslashes("Service Information"));}
elseif($segment1=='Services'){$viewFunctions = array('lists'=>stripslashes('Manage Services'), 'view'=>stripslashes("Service Information"));}
elseif($segment1=='Manage_Data'){$viewFunctions = array('export'=>'Export Data', 'archive_Data'=>stripslashes('Archive Data'), 'front_menu'=>stripslashes('Front Menu'), 'banners'=>'Manage Banner', 'services'=>'Manage Services', 'pages'=>'Manage Pages', 'customer_reviews'=>'Manage Customer Reviews', 'why_choose_us'=>'Why choose us', 'videos'=>stripslashes('Manage Videos'),  'photo_gallery'=>stripslashes('Photo Gallery'), 'seo_info'=>'SEO Info');}
elseif($segment1=='Settings'){$viewFunctions = array('myInfo'=>stripslashes('My Information'), 'users'=>stripslashes('Setup Users'), 'branches'=>stripslashes('Manage Branches'));}
elseif($segment1=='Activity_Feed'){$viewFunctions = array('lists'=>stripslashes('Activity Report'));}

$clsFuncNames = get_class_methods($clsObj);

if(in_array($segment2, $clsFuncNames) && !array_key_exists($segment2, $viewFunctions)){
	if(!isset($_SESSION["users_id"])){
		echo json_encode(array('login'=>'Login/index/session_ended'));
		exit;
	}
	echo $clsObj->$segment2($segment3, $segment4);
	exit;
}

if(!in_array($segment2, $clsFuncNames)){
	header('location:/Home/notpermitted/');
	exit;
}

$title = '';
if(array_key_exists($segment2, $viewFunctions)){$title = $viewFunctions[$segment2];}
$Template = new Template($db);
echo $Template->headerHTML();
echo $clsObj->$segment2($segment3, $segment4);
echo $Template->footerHTML();