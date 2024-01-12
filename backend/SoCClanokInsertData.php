<?php
header("Access-Control-Allow-Origin: http://localhost:5173");
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: Content-Type');

require_once 'Database.php';

function setSoCClanokData() {
    $conn = connect_to_database();

    $postData = json_decode(file_get_contents('php://input'), true);

    $query = "INSERT INTO clanok_soc (id_soc, nadpis, text, clanok_obrazok) VALUES (:id_soc, :nadpis, :text, :clanok_obrazok)";

    $stmt = $conn->prepare($query);

    foreach ($postData as $key => $value) {
      $stmt->bindValue(':'.$key, $value);
    }

    $stmt->execute();

    close_database_connection($conn);

}

setSoCClanokData();
?>