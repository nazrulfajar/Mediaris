<?php
session_start();
include '../includes/config.php';

if(isset($_POST["login"])){
    $username = $_POST['username'];
    $password = $_POST['password'];
    $query = mysqli_query($config, "select *from admin where username = '$username' and password = '$password'");
    
    $cek = mysqli_num_rows($query);
    if ($cek == true) {
    $_SESSION['login'] = true;
    $_SESSION['username'] = $username;
    header("location:index.php");
    } else {
    header("location:login.php");
    }
    }
?>