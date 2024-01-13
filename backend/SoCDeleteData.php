<?php
header("Access-Control-Allow-Origin: http://localhost:5173");
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: Content-Type');

require_once 'Database.php';

function deleteSoCData(){
    $data = json_decode(file_get_contents('php://input'), true);
    $id = $data['id_soc']; 

    try {
        $conn = connect_to_database();
        $conn->beginTransaction();

        $stmt = $conn->prepare('DELETE FROM clanok_soc WHERE id_soc = :id');
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();

        $stmt = $conn->prepare('DELETE FROM soc WHERE id_soc = :id');
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();

        $conn->commit();

        echo "Records deleted successfully";
    } catch(PDOException $e) {
        $conn->rollback();
        echo "Error: " . $e->getMessage();
    }

}

deleteSoCData();
?>
