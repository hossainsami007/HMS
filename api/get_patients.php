<?php
header('Content-Type: application/json');

$conn = new mysqli("localhost", "root", "", "hospitalms");
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