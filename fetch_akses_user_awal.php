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
		<th width="70%">Username</td>
		<th width="20%">Status</td>
		<th width="10%">Action</td>
	</tr>
';

foreach ($result as $row) {
	$status = '';
	$current_timestamp = strtotime(date("Y-m-d H:i:s") . '- 10 second');
	$current_timestamp = date('Y-m-d H:i:s', $current_timestamp);
	$user_last_activity = fetch_user_last_activity($row['user_id'], $connect);
	if ($user_last_activity > $current_timestamp) {
		$status = '<span class="label label-success">Online</span>';
	} else {
		$status = '<span class="label label-danger">Offline</span>';
	}
	$output .= '
	<tr>
<td>' . $row['username'] . '</td>
<td>' . $status . '</td>
<td><a href="payment.php?id=' . $row['user_id'] . '"><button type="button" class="btn btn-info btn-xs start_chat">Payment</button></a></td>
</tr>
';
}

$output .= '</table>';

echo $output;

$query2 = "
SELECT * FROM login INNER JOIN dokter on(login.user_id=dokter.dokter_id)  LIKE '$kode'
";

$statement2 = $connect->prepare($query2);

$statement2->execute();

$result2 = $statement2->fetchAll();

$output2 = '
';

foreach ($result2 as $row2) {
	$output2 .= '
<p>
    <b>Poli</b>
    : ' . $row2['poli'] . '
</p>
<b>Jadwal Online Dokter</b>
: ' . $row2['jadwal_dokter'] . '
</p>
<b>Rumah Sakit</b>
: ' . $row2['rumahsakit'] . '
</p>
';
}

$output2;

echo $output2;
