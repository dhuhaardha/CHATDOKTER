<?php

include('database_connection.php');



session_start();
$kode = $_GET['id'];

$query = "
SELECT * FROM chat_message WHERE chat_message_id = '$kode'
";

$statement = $connect->prepare($query);

$statement->execute();

$result = $statement->fetchAll();

foreach ($result as $row);

if ($_SESSION['hak_akses'] == "admin") {


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Chat Application using PHP Ajax Jquery</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.rawgit.com/mervick/emojionearea/master/dist/emojionearea.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://cdn.rawgit.com/mervick/emojionearea/master/dist/emojionearea.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.js"></script>
</head>
<style>
.row {
    display: -ms-flexbox;
    /* IE10 */
    display: flex;
    -ms-flex-wrap: wrap;
    /* IE10 */
    flex-wrap: wrap;
    margin: 20px -0px;
}

.col-25 {
    -ms-flex: 25%;
    /* IE10 */
    flex: 25%;
}

.col-50 {
    -ms-flex: 50%;
    /* IE10 */
    flex: 50%;
}

.col-75 {
    -ms-flex: 75%;
    /* IE10 */
    flex: 75%;
}

.col-25,
.col-50,
.col-75 {
    padding: 0 16px;
}

.container {
    background-color: #f2f2f2;
    padding: 5px 20px 15px 20px;
    border: 1px solid lightgrey;
    border-radius: 3px;
}

input[type=text] {
    width: 100%;
    margin-bottom: 20px;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 3px;
}


label {
    margin-bottom: 10px;
    display: block;
}


select {
    width: 100%;
    margin-bottom: 20px;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 3px;
}


.icon-container {
    margin-bottom: 20px;
    padding: 7px 0;
    font-size: 50px;
}

.btn {
    background-color: #6495ED;
    color: white;
    padding: 12px;
    margin: 10px 0;
    border: none;
    width: 100%;
    border-radius: 3px;
    cursor: pointer;
    font-size: 17px;
}


.btn:hover {
    background-color: #6495ED;
}

span.price {
    float: right;
    color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (and change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
    .row {
        flex-direction: column-reverse;
    }

    .col-25 {
        margin-bottom: 20px;
    }
}

</style>

<body>
    <br>
    <h3 align="center" style="margin-top: 20px">Medical Chat Doctor</h3><br />
    <div class="table-responsive">
        <h4 align="center">Online User</h4>
        <h4 align="right" style="margin-right: 5rem;">Hi - <?php echo $_SESSION['username'];  ?> - </h4>
    </div>
    <br>
    <form action="update_chat.php" method="POST">
        <input type="hidden" name="id" value="<?php echo $kode ?>">
        <div class="row">
            <div class="col-75">
                <div class="container">
                    <form action="">

                        <div class="row">
                            <div class="col-50">
                                <h3 align="center" style="margin-bottom:3rem;">Data Chat</h3>
                                <label for="fname"><i class="fa fa-user"
                                        style="padding-right: 5px"></i>to_user_id</label>
                                <input type="text" id="fname" name="to_user_id"
                                    value="<?php echo $row['to_user_id'];  ?>">
                                <label for="fname"><i class="fa fa-user"
                                        style="padding-right: 5px"></i>from_user_id</label>
                                <input type="text" id="fname" name="from_user_id"
                                    value="<?php echo $row['from_user_id'];  ?>">
                                <label for="fname"><i class="fa fa-envelope"
                                        style="padding-right: 5px"></i>chat_message</label>
                                <input type="text" id="fname" name="chat_message"
                                    value="<?php echo $row['chat_message'];  ?>">
                                <label for="fname"><i class="fa fa-user-clock"
                                        style="padding-right: 5px"></i>timestamp</label>
                                <input type="datetime-local" id="fname" name="timestamp"
                                    value="<?php echo $row['timestamp'];  ?>">
                                <label for="fname"><i class="fa fa-user-clock"
                                        style="padding-right: 5px"></i>status</label>
                                <input type="text" id="fname" name="status" value="<?php echo $row['status'];  ?>">

                                <a onclick="return confirm('Yakin dengan informasi ini ???')"><input type="submit"
                                        value="Edit" class="btn"></a>
                            </div>


                    </form>
                </div>
            </div>

    </form>

</body>

</html>
<script>
$(document).ready(function() {

    setInterval(function() {
        update_last_activity();
    }, 5000);


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
