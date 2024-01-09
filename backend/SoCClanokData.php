<?php
header("Access-Control-Allow-Origin: http://localhost:5173");
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: Content-Type');

require_once 'Database.php';

function getSoCClanokData() {
    $conn = connect_to_database();

    $query = "SELECT * FROM clanok_soc";
    $stmt = $conn->prepare($query);
    $stmt->execute();

    $result = $stmt->get_result();
    $results = $result->fetch_all(MYSQLI_ASSOC);

    $stmt->close();
    close_database_connection($conn);

    header('Content-Type: application/json');

    if (empty($results)) {
        echo json_encode(array('message' => 'No results found.'));
    } else {
        echo json_encode($results);
    }
}

getSoCClanokData();
?>