<?php
header("Access-Control-Allow-Origin: http://localhost:5173");
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: Content-Type');

class Database {
    private $host;
    private $port;
    private $user;
    private $password;
    private $database;
    private $conn;

    public function __construct($host, $port, $user, $password, $database) {
        $this->host = $host;
        $this->port = $port;
        $this->user = $user;
        $this->password = $password;
        $this->database = $database;
    }

    public function connect() {
        $dsn = "mysql:host=$this->host;port=$this->port;dbname=$this->database";
        $this->conn = new PDO($dsn, $this->user, $this->password);
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        return $this->conn;
    }

    public function close() {
        $this->conn = null;
    }
}

function connect_to_database() {
    $database = new Database('127.0.0.1', 3307,'root', '', 'socdb');
    $connection = $database->connect();
    
    return $connection;
}

function close_database_connection($connection) {
    $connection = null;
}
?>
