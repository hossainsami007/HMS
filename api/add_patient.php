<?php
header('Content-Type: application/json');

$con=mysqli_connect("sql206.infinityfree.com","if0_39797306","QjCCG2F9cJ0dz","if0_39797306_hospitalms");
if ($conn->connect_error){
    echo json_encode(["error" => "DB connection failed"]);
    exit();   
}

$data = json_decode(file_get_contents("php://input"), true);

//Validate inputs
$fname = $data["fname"];
$lname = $data["lname"];
$email = $data["email"];
$gender = $data["gender"];
$contact = $data["contact"];
$password = $data["password"];

$stmt = $conn->prepare("INSERT INTO patreg(fname, lname, email, gender, contact, password) VALUES (?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssssss",$fname, $lname, $email, $gender, $contact, $password);

$stmt->execute();

if ($stmt->affected_rows > 0) {
    echo json_encode(["message" => "✅ Patient registered successfully"]);
} else{
    echo json_encode(["error" => "❌ Failed To register"]);
}
?>