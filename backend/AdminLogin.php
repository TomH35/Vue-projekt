<?php
header("Access-Control-Allow-Origin: http://localhost:5173");
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: Content-Type');

require_once 'Database.php';

function AdminLogin(){
    $conn = connect_to_database();
    
    $data = json_decode(file_get_contents('php://input'), true);
    $username = $data['username'];
    $password = $data['password'];

    $query = "SELECT a_password FROM admin_t WHERE a_username=:admin_name";
    $stmt = $conn->prepare($query);
    $stmt->execute(['admin_name' => $username]);

    header('Content-Type: application/json');
    
    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    close_database_connection($conn);

    if ($password === $row['a_password']) {
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false, 'message' => 'Invalid username or password']);
    }

}

AdminLogin();
?>
