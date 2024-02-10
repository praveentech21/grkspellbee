<?php

include 'connect.php';

if (isset($_POST['replay']) ) {
    $pid = $_POST['replay'];
    $score = mysqli_fetch_assoc(mysqli_query($conn, "SELECT `points` FROM `users` WHERE `pid` = '$pid'"))['points'];
    $replay = mysqli_query($conn, "INSERT INTO `replay`(`pid`, `score`) VALUES ('$pid','$score')");
    $setscore = mysqli_query($conn, "UPDATE `users` SET `points` = NULL WHERE `pid` = '$pid'");   
    $response = [
        'status' => 'success',
        'data' => $student
    ];
    echo json_encode($response);
} 
else {
    // Handle errors, e.g., invalid request
    echo json_encode(['error' => 'Invalid request']);
}
?>
