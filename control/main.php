<?php
include 'function.php';

//buat login
if(isset($_POST['login'])){
    $nmr=$_POST['pegawai_nomor'];
    $pwd=md5($_POST['pegawai_password']);
    $login=login($nmr,$pwd);
    if(pg_num_rows($login)==1){
        $_SESSION['user']=pg_fetch_array($login);
        header('location:..');
	}
    else{
        header('location:../?msg=fail');
    }
}

//buat ganti password
if (isset($_POST['simpan_pwd'])) {
    $l  = md5($_POST['passwordLama']);
    $b  = md5($_POST['passwordBaru']);
    $b2 = md5($_POST['passwordBaru2']);
    if($l==$_SESSION['user']['pegawai_password']){
        if($b==$b2){
            $query = "UPDATE pegawai set pegawai_password='$b' where pegawai_password='$l' and pegawai_nomor=".$_SESSION['user']['pegawai_nomor'];
            pg_query ($query);
            $_SESSION['user']=pg_fetch_array(login($_SESSION['user']['pegawai_nomor'],$b));
            header('location:..?view=profile&&msg=ok');
        }
        else{
            header('location:../?view=pwdchg&&msg=fail');
        }
    }
    else{
        header('location:../?view=pwdchg&&msg=fail');
    }
}

//logout
if(isset($_GET['logout'])){
    session_destroy();
    unset($_SESSION['user']);
}
?>