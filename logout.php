<?php

session_start();
unset($_SESSION['supid']);
session_destroy();
header("location:index.php");

?>
