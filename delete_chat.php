<?php

include('database_connection.php');

session_start();

$id = $_GET['id'];

$query = "
DELETE FROM chat_message WHERE chat_message_id = '$id'
";

$statement = $connect->prepare($query);

$statement->execute();

echo "<script>
                 window.location='index.php';
         </script>";
