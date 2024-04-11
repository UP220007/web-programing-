<?php
include "./partials/Connection.php";
$value = $_GET['dato'];

try {
  $SQL = "DELETE FROM Task WHERE idTask = $value;";
  $state = $conn->query($SQL);
    echo $value;
} catch (PDOException $e) {
  die($e->getMessage());
}
