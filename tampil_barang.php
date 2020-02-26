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
  <h1 align="center">Tabel Barang</h1><br>
  <a href="index.html">Go to Home</a>
    <table class="table table-striped" width='80%' border=1>

    <tr>
        <th>id_barang</th> <th>nama</th> <th>kategori_id</th> <th>satuan_id</th>
    </tr>
    <?php
    while($input_data = mysqli_fetch_array($hasil)) {
        echo "<tr>";
        echo "<td>".$input_data['id_barang']."</td>";
        echo "<td>".$input_data['nama']."</td>";
        echo "<td>".$input_data['kategori_id']."</td>";
        echo "<td>".$input_data['satuan_id']."</td>";
      //  echo "<td><a href='edit.php?id=$input_data[id_barang]'>Edit</a> | <a href='delete.php?id=$input_data[id_barang]'>Delete</a></td></tr>";
    }
    ?>
    </table>
</body>
</html>
