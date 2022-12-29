//function counter(time, url) {
//    var interval = setInterval(function () {
//        $('#waktu').text(time);
//        time = time - 1;

//        if (time == 0) {
//            clearInterval(interval);
//            window.location = url;
//        }
//    }, 1000);
//}

//$(document).ready(function () {
//    counter(2400, 'http://www.tutorialweb.net');
//});
$(document).ready(function () {
    var detik = 3;
    var menit = 30;
    function hitung(url) {
        setTimeout(hitung, 1000);
        $('#tampilkan').html(' habis waktu ' + menit + ' menit ' + detik + ' detik ');
        detik--;
        if (detik < 0) {
            detik = 59;
            menit--;
            if (menit < 0) {
                menit = 0;
                detik = 0;
                window.location = 'index_user_choice_dokter.php';
            }
        }
    }
    hitung('index_user_choice_dokter.php');
});