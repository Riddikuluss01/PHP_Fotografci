<?php 


if(isset($_POST['sliderkaydet'])){


$uploads_dir ='../../../resimler/slider';

@$tmp_name = $_FILES['slider_resimyol']["tmp_name"];
@$name = $_FILES['slider_resimyol']["name"];
$benzersizsayi1 = rand(20000,32000);
$benzersizsayi2 = rand(20000,32000);
$benzersizsayi3 = rand(20000,32000);
$benzersizsayi4 = rand(20000,32000);
$benzersizad=$benzersizsayi1.$benzersizsayi2.$benzersizsayi3.$benzersizsayi4;
$refimgyol=substr($uploads_dir, 9)."/".$benzersizad.$name;
@move_uploaded_file($tmp_name, "$uploads_dir/$benzersizad$name");

	$sliderkaydet=$db->prepare("INSERT INTO slider SET 
		slider_ad=:ad,
		slider_link=:link,
		slider_sira=:sira,
		slider_durum=:durum,
		slider_resimyol=:resimyol");

	$insert=$sliderkaydet->execute(array(
		'ad'=> $_POST['slider_ad'],
		'link'=> $_POST['slider_link'],
		'sira'=> $_POST['slider_sira'],
		'durum'=> $_POST['slider_durum'],
		'resimyol'=> $refimgyol

		));

	if($insert){

		Header("Location:../slider.php?durum=ok");
	} else {

		Header("Location:../slider.php?durum=no");
	}

} 


----------------------------

if(isset($_POST['sliderkaydet'])) {

		$uploads_dir = '../../../resimler/slider';
		@$tmp_name= $_FILES['slider_resimyol']["tmp_name"];
		@$name= $_FILES['slider_resimyol']["name"];
		$benzersizsayi1=rand(100,500);
		$benzersizsayi2=rand(100,500);
		$benzersizsayi3=rand(100,500);
		$benzersizsayi4=rand(100,500);	
		$benzersizad=$benzersizsayi1.$benzersizsayi2.$benzersizsayi3.$benzersizsayi4;
		$refimgyol=substr($uploads_dir, 6)."/".$benzersizad.$name;
		@move_uploaded_file($tmp_name, "$uploads_dir/$benzersizad$name");


		$kaydet=$db->prepare("INSERT INTO slider SET
		slider_ad=:ad,
		slider_link=:link,
		slider_sira=:sira,
		slider_durum=:durum,
		slider_resimyol=:resimyol");

		$insert=$kaydet->execute(array(
		'ad' => $_POST['slider_ad'],
		'link' => $_POST['slider_link'],
		'sira' => $_POST['slider_sira'],
		'durum' => $_POST['slider_durum'],
		'resimyol' => $refimgyol
		
		));

	if($insert){

		header("Location:../slider.php?durum=ok");
	} else {

		header("Location:../slider.php?durum=no");
	}
		
	}

?>