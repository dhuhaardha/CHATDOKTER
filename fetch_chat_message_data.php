<?php

//fetch_user.php

include('database_connection.php');

session_start();

$query = "
SELECT * FROM chat_message
";

$statement = $connect->prepare($query);

$statement->execute();

$result = $statement->fetchAll();

$output = '
<table class="table table-bordered table-striped">
    <tr>
        <th width="10%">chat_message_id</td>
        <th width="10%">to_user_id</td>
        <th width="10%">from_user_id</td>
        <th width="40%">chat_message</td>
        <th width="40%">timestamp</td>
        <th width="10%">status</td>
        <th width="20%">Action</td>
    </tr>
    ';

foreach ($result as $row) {
    $output .= '
    <tr>
        <td>' . $row['chat_message_id'] . ' </td>
        <td>' . $row['to_user_id'] . ' </td>
        <td>' . $row['from_user_id'] . ' </td>
        <td>' . $row['chat_message'] . ' </td>
        <td>' . $row['timestamp'] . ' </td>
        <td>' . $row['status'] . ' </td>
        <td><a href="page_update_chat.php?id=' . $row['chat_message_id'] . '"><button type="button" class="btn btn-info btn-xs">Edit</button></a>
        <a href="delete_chat.php?id=' . $row['chat_message_id'] . '"
        ><button type="button" class="btn btn-warning btn-xs">Delete</button></td></a>
    </tr>
    ';
}

$output .= '
</table>';

echo $output;
