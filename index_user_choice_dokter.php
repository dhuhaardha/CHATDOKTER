<!--
//index.php
!-->

<?php

include('database_connection.php');

session_start();

if ($_SESSION['hak_akses'] == "user") {


?>


<html>

<head>
    <title>Medical Chat Dokter</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>

<body>
    <div class="container">
        <br />

        <h3 align="center">Medical Chat Dokter</a></h3><br />
        <br />

        <div class="table-responsive">
            <h4 align="center">Online Dokter</h4>
            <p align="right">Hi - <?php echo $_SESSION['username'];  ?> - <a href="logout.php">Logout</a></p>
            <div id="user_details"></div>
            <div id="user_model_details"></div>
        </div>
    </div>
</body>

</html>




<script>
$(document).ready(function() {

    fetch_akses_user_choice_dokter();

    setInterval(function() {
        update_last_activity();
        fetch_akses_user_choice_dokter();
        update_chat_history_data();
    }, 5000);

    function fetch_akses_user_choice_dokter() {
        $.ajax({
            url: "fetch_akses_user_choice_dokter.php",
            method: "POST",
            success: function(data) {
                $('#user_details').html(data);
            }
        })
    }

    function update_last_activity() {
        $.ajax({
            url: "update_last_activity.php",
            success: function() {

            }
        })
    }



});
</script>
<?php
} else {
    echo "<script>
        alert('Forbidden access');
	location.href='login.php';
	</script>";
    exit();
}
?>
