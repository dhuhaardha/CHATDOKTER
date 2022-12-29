<?php

//fetch_user.php

include('database_connection.php');

session_start();

$query = "
SELECT * FROM payment_delivery
";

$statement = $connect->prepare($query);

$statement->execute();

$result = $statement->fetchAll();

$output = '
<table class="table table-bordered table-striped">
    <tr>
        <th width="10%">payment_id</td>
        <th width="10%">tgl</td>
        <th width="10%">from_user</td>
        <th width="40%">email</td>
        <th width="40%">alamat</td>
        <th width="10%">no_telpon</td>
        <th width="10%">pembayaran</td>
        <th width="20%">Action</td>
    </tr>
    ';

foreach ($result as $row) {
    $output .= '
    <tr>
        <td>' . $row['payment_id'] . ' </td>
        <td>' . $row['tgl'] . ' </td>
        <td>' . $row['from_user'] . ' </td>
        <td>' . $row['email'] . ' </td>
        <td>' . $row['alamat'] . ' </td>
        <td>' . $row['no_telpon'] . ' </td>
        <td>' . $row['pembayaran'] . ' </td>
        <td><a href=""><button type="button" class="btn btn-info btn-xs">Edit</button></a>
        <a href=""
        ><button type="button" class="btn btn-warning btn-xs">Delete</button></td></a>
    </tr>
    ';
}

$output .= '
</table>';

echo $output;
