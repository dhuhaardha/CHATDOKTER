<?php
include "database_connection.php";

session_start();
if (isset($_GET['id'])) {
    $kode = $_GET['id'];
}


$query = "
SELECT * FROM login 
WHERE user_id = '$kode'
";

$statement = $connect->prepare($query);

$statement->execute();

$result = $statement->fetchAll();

$output = '
<table class="table table-bordered table-striped">
	<tr>
		<th width="70%">Cek Verifikasi data</td>
	</tr>
';

foreach ($result as $row) {
    $output .= '
	<tr>
		<td>Dokter Telah Menunggu Diruang Chat</td>
		<td><a href="index_user.php?id=' . $row['user_id'] . '"><button type="button" class="btn btn-info btn-xs start_chat" style="width:20%;">Start</button></a></td>
	</tr>
	';
}

$output .= '</table>';

echo $output;
