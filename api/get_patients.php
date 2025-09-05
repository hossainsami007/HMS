<?php
header('Content-Type: application/json');

<<<<<<< HEAD
$conn = new mysqli("localhost", "root", "", "hospitalms");
if ($conn->connect_error) {
=======
// Create database connection
$conn = new mysqli("sql206.infinityfree.com","if0_39797306","QjCCG2F9cJ0dz","if0_39797306_hospitalms");

// Check connection
if ($conn->connect_error) {
    http_response_code(500);
>>>>>>> origin/dev
    echo json_encode(["error" => "DB connection failed"]);
    exit();
}

<<<<<<< HEAD
=======
// Fetch patients
>>>>>>> origin/dev
$sql = "SELECT * FROM patreg";
$result = $conn->query($sql);

$patients = [];
while ($row = $result->fetch_assoc()) {
    $patients[] = $row;
}

echo json_encode($patients);
<<<<<<< HEAD
?>
=======
?>
>>>>>>> origin/dev
