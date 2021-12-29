<?php
 $servername = "localhost";
 $username = "root";
 $passwd = "";
 
 $k_imie = $_GET["imie"];
 $k_nazwisko = $_GET["nazwisko"];
 $haslo = $_GET["haslo"];
 $email = $_GET["email"];

 $conekszyn = new mysqli($servername , $username , $passwd);
 $kwerenda = "INSERT INTO klienci(ID_Klieci , KLIENT_NAZWISKO , KLIENT_IMIE , HASLO , EMAIL) VALUES('' , '$k_imie' , '$k_nazwisko' , '$haslo' , '$email')";

 if($conekszyn -> connect_error) {
     die("Connection failed: " . $conn -> connect_error);
 }

 echo "Connected successfully";
 $wykonanie_skryptu = mysqli_query($conekszyn , $kwerenda);
 echo "Wykonano skrypt jak nie to jest problem";

?>