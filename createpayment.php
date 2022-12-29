<?php

include('database_connection.php');

session_start();
if (isset($_GET['id'])) {
    $kode = $_GET['id'];
}

$tgl = date("Y-m-d H:i:s");
$from_user = $_POST['from_user'];
$fullname = $_POST['fullname'];
$email = $_POST['email'];
$alamat = $_POST['alamat'];
$no_telpon = $_POST['no_telpon'];
$pembayaran = $_POST['pembayaran'];

$query = "
INSERT INTO payment_delivery (tgl, from_user, fullname, email, alamat, no_telpon, pembayaran) VALUES (:tgl, :from_user, :fullname, :email, :alamat, :no_telpon, :pembayaran)
";

$statement = $connect->prepare($query);

$statement->bindParam(':tgl', $tgl);
$statement->bindParam(':from_user', $from_user);
$statement->bindParam(':fullname', $fullname);
$statement->bindParam(':email', $email);
$statement->bindParam(':alamat', $alamat);
$statement->bindParam(':no_telpon', $no_telpon);
$statement->bindParam(':pembayaran', $pembayaran);

$statement->execute();

$query2 = "
SELECT * FROM login 
WHERE user_id = '$kode'
";

$statement2 = $connect->prepare($query2);

$statement2->execute();

$result = $statement2->fetchAll();

$output = '
<div class="row">
    <div class="col-50">
';

foreach ($result as $row) {
    $output .= '
    <tr>
    <h3 align="center" style="margin-bottom:3rem;">Verifikasi Data Berhasil</h3>
<a href="methode_payment.php?id=' . $row['user_id'] . '"><button type="button" style="background-color: #4CAF50;
    color: white;
    padding: 12px;
    margin: 10px 11rem;
    border: none;
    width: 70%;
    border-radius: 3px;
    cursor: pointer;
    font-size: 17px;">GO</button></a>

';
}

$output .= '</div>
</div>';
echo "$output";
