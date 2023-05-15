<?php
require('./AppController.php');

ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

$controller = new AppController();

if(isset($_GET['category'])){
    $resultQuery = [];
    $category = $_GET['category'];
    
    $result = $controller->getByCategory($category);
    if(count($result) > 0){
        $resultQuery = $result;
    }

    echo json_encode($resultQuery);
}

if(isset($_GET['categoryMeal']) && isset($_GET['term'])){
    $resultQuery = [];
    $category = $_GET['categoryMeal'];
    $term = $_GET['term'];

    $result = $controller->getByFilter($category, $term);

    if(count($result) > 0){
        $resultQuery = $result;
    }  
    echo json_encode($resultQuery);
}