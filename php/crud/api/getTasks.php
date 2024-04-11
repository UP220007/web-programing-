<?php
include "./partials/Connection.php";
$value = $_GET['dato'];

try {
    if ($value == 0 ) {
         $SQL = "SELECT idTask,firstname,lastname,title,completed FROM task FULL JOIN user ON user.id = idUser; ";

        $state = $conn->query($SQL);


        $json = [];
        while ($row = $state->fetch(PDO::FETCH_ASSOC)) {
            $json[] = [
            "id" => $row['idTask'],
            "fullname" => "{$row['firstname']} {$row['lastname']}",
            "task" => $row['title'],
            "status" => $row['completed']
            ];
        }

        echo json_encode($json);
    } else {
        $SQL = "SELECT idTask,firstname,lastname,title,completed FROM task FULL JOIN user ON user.id = idUser where user.id = $value; ";

        $state = $conn->query($SQL);


        $json = [];
        while ($row = $state->fetch(PDO::FETCH_ASSOC)) {
            $json[] = [
            "id" => $row['idTask'],
            "fullname" => "{$row['firstname']} {$row['lastname']}",
            "task" => $row['title'],
            "status" => $row['completed']
            ];
        }

        echo json_encode($json);
    }
    
 
} catch (PDOException $e) {
  die($e->getMessage());
}
