<?php
header('Content-Type: application/json');

$conn = new mysqli("sql206.infinityfree.com","if0_39797306","QjCCG2F9cJ0dz","if0_39797306_hospitalms");
if ($conn->connect_error) {
    echo json_encode(["error" => "DB connection failed"]);
    exit();
}

$data = json_decode(file_get_contents("php://input"), true);
$id = $data["id"];

$stmt = $conn->prepare("DELETE FROM patreg WHERE id = ?");
$stmt->bind_param("i", $id);
$stmt->execute();

if ($stmt->affected_rows > 0){
    echo json_encode(["message" => "✅ Patient Deleted Successfully"]);
} else {
    echo json_encode(["error" => "❌ No Patient found with that ID"]);
}
?>