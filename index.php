<?php
// sambungan ke DB, jangan diacak-acak
include_once("config.php");

// udah jangan dibaca
$hasil = mysqli_query($mysqli, "SELECT * FROM barang ORDER BY id_barang DESC");
?>

<html>
<head>
  <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
  <script type="text/javascript" src="bootstrap/js/jquery.js"></script>
  <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <title>TOKO SABODO SIA</title>
</head>

<body>
  <table class="table table-striped" align="center">
<thead>
    <tr>
<th><a href="input_barang.php">Input Barang   </a></th>
<th><a href="input_satuan.php">Input Satuan   </a></th>
<th><a href="input_kategori.php">Input Kategori   </a></th>
<th><a href="input_transaksi.php">Input Transaksi   </a></th>
</thead>
</table>
</body>
</html>
