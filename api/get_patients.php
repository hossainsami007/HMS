<?php
header('Content-Type: application/json');

$con=mysqli_connect("sql206.infinityfree.com","if0_39797306","QjCCG2F9cJ0dz","if0_39797306_hospitalms");
if ($conn->connect_error) {
    echo json_encode(["error" => "DB connection failed"]);
    exit();
}

$sql = "SELECT * FROM patreg";
$result = $conn->query($sql);

$patients = [];
while ($row = $result->fetch_assoc()) {
    $patients[] = $row;
}

echo json_encode($patients);
?>