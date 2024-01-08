<?php
require_once 'Database.php';

function getSoCData() {
    $conn = connect_to_database();

    $query = "SELECT * FROM soc";
    $result = $conn->query($query);

    if ($result === false) {
        die("Query failed: " . $conn->error);
    }

    $soc = [];
    while ($row = $result->fetch_assoc()) {
        $soc[] = $row;
    }

    $result->free();
    close_database_connection($conn);

    header('Content-Type: application/json');

    if (empty($soc)) {
        die(json_encode(['error' => 'No soc found.']));
    }
    
    echo json_encode($soc);
}

getSoCData();
?>
