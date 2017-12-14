<?php

$host = 'localhost';// need to change
$user = 'chadlofg_chadlofg';
$pass = 'Q27d.X5r';
$db = 'chadlofg_group_scope';

// $con = new mysqli("localhost","root","","group_scope");
$con = mysqli_connect($host,$user,$pass,$db);
mysql_connect($host, $user, $pass);
$con2 = mysql_select_db($db);

if (mysqli_connect_errno()) 
{
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}


?>