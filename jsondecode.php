<?php
$json = '{"domain":"stmikelrahma.ac.id","core":"Web Service Using Restful","address":{"street":"Sisingamangaraja Street Number 76","city":"Yogyakarta","zipcode":"55124"},"Phone":"(0274)55124"}';
echo "<pre>";
print_r(json_decode($json));
$data1=json_decode($json); //object
$data2=json_decode($json,true); //array

//cara menampilkan data object
echo "<h1>Kampus : ".$data1->domain."</h1>";

//cara menampilkan data array
echo "<h1>Pelajaran : ".$data2["core"]."</h1>";

//cara menampilkan data object
echo "<h1>Alamat object : ".$data1->address->street."</h1>";

//cara menampilkan data array
echo "<h1>Alamat array : ".$data2["address"]["city"]."</h1>"
?>