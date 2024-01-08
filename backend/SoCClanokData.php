<?php
require_once 'Database.php';

function getSoCClanokData() {
    $conn = connect_to_database();

    $query = "SELECT * FROM clanok_soc";
    $result = $conn->query($query);

    if ($result === false) {
        die("Query failed: " . $conn->error);
    }

    $SoCClanok = [];
    while ($row = $result->fetch_assoc()) {
        $SoCClanok[] = $row;
    }

    $result->free();
    close_database_connection($conn);

    header('Content-Type: application/json');

    if (empty($soc)) {
        die(json_encode(['error' => 'No clanok_soc found.']));
    }
    
    echo json_encode($SoCClanok);
}

getSoCClanokData();
?>