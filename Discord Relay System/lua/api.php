<?php
    error_reporting(0);

    $target_pass = "api-relay";
    $pass = $_POST["pass"];
    $webhook_url = $_POST["webhook_url"];
    $json = $_POST["json"];

     if ($pass && $pass == $target_pass)
    { 

// Replace the URL with your own webhook url

$ch = curl_init();

curl_setopt_array( $ch, [
    CURLOPT_URL => $webhook_url,
    CURLOPT_POST => true,
    CURLOPT_POSTFIELDS => $json,
    CURLOPT_HTTPHEADER => [
        "Content-Type: application/json"
    ]
]);

$response = curl_exec( $ch );
curl_close( $ch );

     }
    else
    {
        echo "blocked messages go away";
    } 
?>
