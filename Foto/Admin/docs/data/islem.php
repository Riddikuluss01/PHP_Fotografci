<?php 
ob_start();
include 'baglan.php';

if(isset($_POST['genelayarkaydet'])){


	$ayarkaydet=$db->prepare("UPDATE ayar SET 
		ayar_url=:url,
		ayar_title=:title,
		ayar_description=:description,
		ayar_keywords=:keywords,
		ayar_author=:author
		WHERE ayar_id=0");

	$update=$ayarkaydet->execute(array(
		'url'=> $_POST['ayar_url'],
		'title'=> $_POST['ayar_title'],
		'description'=> $_POST['ayar_description'],
		'keywords'=> $_POST['ayar_keywords'],
		'author'=> $_POST['ayar_author']

		));

	if($update){

		header("Location:../genel-ayar.php?durum=ok");
	} else {

		header("Location:../genel-ayar.php?durum=no");
	}

}

if(isset($_POST['iletisimayarkaydet'])){


	$ayarkaydet=$db->prepare("UPDATE ayar SET 
		ayar_tel=:tel,
		ayar_mail=:mail,
		ayar_adres=:adres,
		ayar_il=:il,
		ayar_ilce=:ilce,
		ayar_mesai=:mesai
		WHERE ayar_id=0");

	$update=$ayarkaydet->execute(array(
		'tel'=> $_POST['ayar_tel'],
		'mail'=> $_POST['ayar_mail'],
		'adres'=> $_POST['ayar_adres'],
		'il'=> $_POST['ayar_il'],
		'ilce'=> $_POST['ayar_ilce'],
		'mesai'=> $_POST['ayar_mesai'],

		));

	if($update){

		header("Location:../iletisim-ayar.php?durum=ok");
	} else {

		header("Location:../iletisim-ayar.php?durum=no");
	}

}


if(isset($_POST['apiayarkaydet'])){


	$ayarkaydet=$db->prepare("UPDATE ayar SET 
		ayar_recapctha=:recapctha,
		ayar_googlemap=:googlemap,
		ayar_analystic=:analystic
		WHERE ayar_id=0");

	$update=$ayarkaydet->execute(array(
		'recapctha'=> $_POST['ayar_recapctha'],
		'googlemap'=> $_POST['ayar_googlemap'],
		'analystic'=> $_POST['ayar_analystic']

		));

	if($update){

		header("Location:../api-ayar.php?durum=ok");
	} else {

		header("Location:../api-ayar.php?durum=no");
	}

}


if(isset($_POST['sosyalayarkaydet'])){


	$ayarkaydet=$db->prepare("UPDATE ayar SET 
		ayar_facebook=:facebook,
		ayar_twitter=:twitter,
		ayar_instagram=:instagram
		WHERE ayar_id=0");

	$update=$ayarkaydet->execute(array(
		'facebook'=> $_POST['ayar_facebook'],
		'twitter'=> $_POST['ayar_twitter'],
		'instagram'=> $_POST['ayar_instagram']

		));

	if($update){

		header("Location:../sosyal-ayar.php?durum=ok");
	} else {

		header("Location:../sosyal-ayar.php?durum=no");
	}

}


if(isset($_POST['mailayarkaydet'])){


	$ayarkaydet=$db->prepare("UPDATE ayar SET 
		ayar_smtphost=:smtphost,
		ayar_smtpuser=:smtpuser,
		ayar_smtppassword=:smtppassword,
		ayar_smtpport=:smtpport
		WHERE ayar_id=0");

	$update=$ayarkaydet->execute(array(
		'smtphost'=> $_POST['ayar_smtphost'],
		'smtpuser'=> $_POST['ayar_smtpuser'],
		'smtppassword'=> $_POST['ayar_smtppassword'],
		'smtpport'=> $_POST['ayar_smtpport']

		));

	if($update){

		header("Location:../mail-ayar.php?durum=ok");
	} else {

		header("Location:../mail-ayar.php?durum=no");
	}

}


if(isset($_POST['hakkimizdakaydet'])){


	$hakkimizdakaydet=$db->prepare("UPDATE hakkimizda SET 
		hakkimizda_baslik=:baslik,
		hakkimizda_icerik=:icerik,
		hakkimizda_video=:video,
		hakkimizda_hedef=:hedef
		WHERE hakkimizda_id=0");

	$update=$hakkimizdakaydet->execute(array(
		'baslik'=> $_POST['hakkimizda_baslik'],
		'icerik'=> $_POST['hakkimizda_icerik'],
		'video'=> $_POST['hakkimizda_video'],
		'hedef'=> $_POST['hakkimizda_hedef']

		));

	if($update){

		header("Location:../hakkimizda.php?durum=ok");
	} else {

		header("Location:../hakkimizda.php?durum=no");
	}

}


if(isset($_POST['sliderkaydet'])) {

	$MAX_SIZE=5000000;

	$file_type = $_FILES['slider_resimyolu']['type'];

	

	if($_FILES['slider_resimyolu']["size"] > $MAX_SIZE) {
		Header("Location:../slider.php?durum=buyuk&slider_id=$slider_id");
	}

	elseif ($file_type!="image/jpeg" and $file_type!="image/png") {
		Header("Location:../slider.php?durum=formathata&format=$file_type&slider_id=$slider_id");
	}

	else {

		$uploads_dir = '../../../resimler/slider';
		@$tmp_name= $_FILES['slider_resimyolu']["tmp_name"];
		@$name= $_FILES['slider_resimyolu']["name"];
		$benzersizsayi1=rand(20000,32000);
		$benzersizsayi2=rand(20000,32000);
		$benzersizsayi3=rand(20000,32000);
		$benzersizsayi4=rand(20000,32000);	
		$benzersizad=$benzersizsayi1.$benzersizsayi2.$benzersizsayi3.$benzersizsayi4;
		$refimgyol=substr($uploads_dir, 9)."/".$benzersizad.$name;
		@move_uploaded_file($tmp_name, "$uploads_dir/$benzersizad$name");


		$kaydet=$db->prepare("INSERT INTO slider SET
			slider_ad=:ad,
			slider_link=:link,
			slider_sira=:sira,
			slider_durum=:durum,
			slider_resimyolu=:resimyolu");

		$insert=$kaydet->execute(array(
			'ad' => $_POST['slider_ad'],
			'link' => $_POST['slider_link'],
			'sira' => $_POST['slider_sira'],
			'durum' => $_POST['slider_durum'],
			'resimyolu' => $refimgyol

			));

		if($insert){

			header("Location:../slider.php?durum=ok");
		} else {

			header("Location:../slider.php?durum=no");
		}
		
	}
}

if($_GET['slidersil']=="ok"){

	$sil=$db->prepare("DELETE from slider where slider_id=:slider_id");
	$kontrol=$sil->execute(array(
		'slider_id'=>$_GET['slider_id']
		));

	if($kontrol){

		$copresimsil=$_POST['slider_resimyolu']; // Bir slider eklerken eski çöpü silmek için
		unlink("../../../$copresimsil");

		header("Location:../slider.php?durum=ok");
	} else {

		header("Location:../slider.php?durum=no");
	}

}



if(isset($_POST['sliderduzenle'])){

	

	if($_FILES['slider_resimyolu']["size"] > 0) {

		$uploads_dir = '../../../resimler/slider';
		@$tmp_name= $_FILES['slider_resimyolu']["tmp_name"];
		@$name= $_FILES['slider_resimyolu']["name"];
		$benzersizsayi1=rand(20000,32000);
		$benzersizsayi2=rand(20000,32000);
		$benzersizsayi3=rand(20000,32000);
		$benzersizsayi4=rand(20000,32000);	
		$benzersizad=$benzersizsayi1.$benzersizsayi2.$benzersizsayi3.$benzersizsayi4;
		$refimgyol=substr($uploads_dir, 9)."/".$benzersizad.$name;
		@move_uploaded_file($tmp_name, "$uploads_dir/$benzersizad$name");

		$duzenle=$db->prepare("UPDATE slider SET 
			slider_ad=:ad,
			slider_link=:link,
			slider_sira=:sira,
			slider_durum=:durum,
			slider_resimyolu=:resimyolu
			WHERE slider_id={$_POST['slider_id']}");

		$update=$duzenle->execute(array(
			'ad'=> $_POST['slider_ad'],
			'link'=> $_POST['slider_link'],
			'sira'=> $_POST['slider_sira'],
			'durum'=> $_POST['slider_durum'],
			'resimyolu'=>$refimgyol
			));

		$slider_id=$_POST['slider_id'];

		if($update){

			$copresimsil=$_POST['slider_resimyolu']; // Bir slider eklerken eski çöpü silmek için
			unlink("../../../$copresimsil");

			header("Location:../slider-duzenle.php?slider_id=$slider_id&durum=ok");
		} else {

			header("Location:../slider-duzenle.php?durum=no");
		}

		

	} else {

		$duzenle=$db->prepare("UPDATE slider SET 
			slider_ad=:ad,
			slider_link=:link,
			slider_sira=:sira,
			slider_durum=:durum
			WHERE slider_id={$_POST['slider_id']}");

		$update=$duzenle->execute(array(
			'ad'=> $_POST['slider_ad'],
			'link'=> $_POST['slider_link'],
			'sira'=> $_POST['slider_sira'],
			'durum'=> $_POST['slider_durum']

			));

		$slider_id=$_POST['slider_id'];

		if($update){

			header("Location:../slider-duzenle.php?slider_id=$slider_id&durum=ok");
		} else {

			header("Location:../slider-duzenle.php?durum=no");
		}
	}

}


if(isset($_POST['icerikkaydet'])) {

	
		$uploads_dir = '../../../resimler/icerik';
		@$tmp_name= $_FILES['icerik_resimyolu']["tmp_name"];
		@$name= $_FILES['icerik_resimyolu']["name"];
		$benzersizsayi1=rand(20000,32000);
		$benzersizsayi2=rand(20000,32000);
		$benzersizsayi3=rand(20000,32000);
		$benzersizsayi4=rand(20000,32000);	
		$benzersizad=$benzersizsayi1.$benzersizsayi2.$benzersizsayi3.$benzersizsayi4;
		$refimgyol=substr($uploads_dir, 9)."/".$benzersizad.$name;
		@move_uploaded_file($tmp_name, "$uploads_dir/$benzersizad$name");

		$tarih=$_POST['icerik_tarih'];
		$saat=$_POST['icerik_saat'];
		$zaman=$tarih." ".$saat;


		$kaydet=$db->prepare("INSERT INTO icerik SET
			icerik_ad=:ad,
			icerik_detay=:detay,
			icerik_keyword=:keyword,
			icerik_durum=:durum,
			icerik_resimyolu=:resimyolu,
			icerik_zaman=:zaman");

		$insert=$kaydet->execute(array(
			'ad' => $_POST['icerik_ad'],
			'detay' => $_POST['icerik_detay'],
			'keyword' => $_POST['icerik_keyword'],
			'durum' => $_POST['icerik_durum'],
			'resimyolu' => $refimgyol,
			'zaman'=>$zaman

			));

		if($insert){

			header("Location:../icerik.php?durum=ok");
		} else {

			header("Location:../icerik.php?durum=no");
		}
		
	
}


?>