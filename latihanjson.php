<?php
$val = [
	"domain"=>"stmikelrahma.ac.id",
	"core"=>"Web Service Using Restful",
	"address"=>[
			"street"=>"Sisingamangaraja Street Number 76",
			"city"=>"Yogyakarta",
			"zipcode"=>"55124"
	],
	"Phone"=>"(0274)55124"
];
$output = json_encode($val);
echo $output;
?>