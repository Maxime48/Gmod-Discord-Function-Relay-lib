<?php
    error_reporting(0);

    $target_pass = "api-relay";
    $pass = $_POST["pass"];
    $webhook_url = $_POST["webhook_url"];
    $json = $_POST["json"];

    if ($pass && $pass == $target_pass)
    {
        $ch = curl_init();
        curl_setopt_array($ch, [
            CURLOPT_URL => $webhook_url,
            CURLOPT_POST => true,
            CURLOPT_POSTFIELDS => $json,
            CURLOPT_HTTPHEADER => [
                "Length" => strlen($json),
                "Content-Type" => "application/json"
            ]
        ]);

        echo curl_exec($ch);
        curl_close($ch);
    }
    else
    {
        echo "blocked messages go away";
    }
?>