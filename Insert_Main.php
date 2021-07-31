
<?php
/*	error_reporting(0);*/
/*BASIC INFO*/
    $RIAD=NULL;
    $name=$_POST['name'];
	$father=$_POST['father'];
	$Mname=$_POST['Mname'];
/*	$dob=$_POST['dob'];*/
	$mobile=$_POST['mobile'];
	$gender=$_POST['gender'];
	$religion=$_POST['religion'];
	$blood=$_POST['blood'];
	$nation=$_POST['nation'];
	$nid=$_POST['nid'];
	$email=$_POST['email'];
	$address=$_POST['address'];
	$perm_adrs=$_POST['perm_adrs'];
/*SSC*/
	$ssc_exam=$_POST['ssc_exam'];
	$ssc_board=$_POST['ssc_board'];
	$ssc_roll=$_POST['ssc_roll'];
	$ssc_result=$_POST['ssc_result'];
	$ssc_group=$_POST['ssc_group'];
	$ssc_year=$_POST['ssc_year'];
/*HSC*/
	$hsc_exam=$_POST['hsc_exam'];
	$hsc_board=$_POST['hsc_board'];
	$hsc_roll=$_POST['hsc_roll'];
	$hsc_result=$_POST['hsc_result'];
	$hsc_group=$_POST['hsc_group'];
	$hsc_year=$_POST['hsc_year'];
/*Graduation*/
	$grad_exam=$_POST['grad_exam'];
	$grad_versity=$_POST['grad_versity'];
	$grad_sub=$_POST['grad_sub'];
	$grad_result=$_POST['grad_result'];
	$grad_year=$_POST['grad_year'];
/*Masters*/
	$m_exam=$_POST['m_exam'];
	$m_versity=$_POST['m_versity'];
	$m_sub=$_POST['m_sub'];
	$m_result=$_POST['m_result'];
	$m_year=$_POST['m_year'];
	

	$RIAD = mysqli_connect("localhost", "root", "","PMIT");
	if(!$RIAD)
	{
	echo"not connected";
	}
	else
	{
		/*echo "Connected";*/
	}

    $chk=mysqli_query($RIAD,"INSERT INTO reg VALUES ('$name','$father','$Mname','$mobile','$gender','$religion','$blood','$nid','$nation','$email','$address','$perm_adrs')");

    $chk_ssc=mysqli_query($RIAD,"INSERT INTO SSC VALUES ('$ssc_exam','$ssc_board','$ssc_roll','$ssc_result','$ssc_group','$ssc_year','$nid')");

    $chk_hsc=mysqli_query($RIAD,"INSERT INTO HSC VALUES ('$hsc_exam','$hsc_board','$hsc_roll','$hsc_result','$hsc_group','$hsc_year','$nid')");

    $chk_grad=mysqli_query($RIAD,"INSERT INTO graduation VALUES ('$grad_exam','$grad_versity','$grad_sub','$grad_result','$grad_year','$nid')");

    $chk_masters=mysqli_query($RIAD,"INSERT INTO masters VALUES ('$m_exam','$m_versity','$m_sub','$m_result','$m_year','$nid')");
    
    if($chk==TRUE && $chk_ssc==TRUE && $chk_hsc==TRUE && $chk_grad== TRUE && $chk_masters==TRUE){
/*        echo file_get_contents('PMIT_APP.html');*/
        echo "Successfully added ".$name." to the PMIT Registration Database";
    }else{
        echo '<br>';
        echo mysqli_error($RIAD);        
    }
?>