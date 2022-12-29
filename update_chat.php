<?php

include('database_connection.php');

session_start();

$id = $_POST['id'];
$to_user_id = $_POST['to_user_id'];
$from_user_id = $_POST['from_user_id'];
$chat_message = $_POST['chat_message'];
$timestamp = $_POST['timestamp'];
$status = $_POST['status'];

var_dump($_POST);

$query = "
UPDATE chat_message SET to_user_id = $to_user_id, from_user_id = :from_user_id, chat_message = :chat_message, 
timestamp = :timestamp, status = :status WHERE chat_message_id = $id
";

$statement = $connect->prepare($query);

$statement->bindParam(':from_user_id', $from_user_id, PDO::PARAM_INT);
$statement->bindParam(':chat_message', $chat_message, PDO::PARAM_STR);
$statement->bindParam(':timestamp', $timestamp, PDO::PARAM_STR);
$statement->bindParam(':status', $status, PDO::PARAM_INT);


$statement->execute();

echo "<script>
                 window.location='index.php';
         </script>";
