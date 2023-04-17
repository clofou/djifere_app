<?php
    $host = "localhost";
    $dbname = "id19031844_djifere";
    $username = "fakoro";
    $pass = '[cfe/3VY?5$gTw4';
    
    try{
        $db = new PDO("mysql:host:$host; dbname=$dbname", $username, $pass);
        echo "Connecté avec succès !! ";
    }catch(\Throwable $th){
        echo "Erreur::: " . $th->getMessage();
    }
