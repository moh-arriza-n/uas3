<?php
// sambungan ke DB, jangan diacak-acak
include_once("config.php");

// udah jangan dibaca
$hasil = mysqli_query($mysqli, "SELECT * FROM satuan ORDER BY satuan_id DESC");
?>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
  <script type="text/javascript" src="bootstrap/js/jquery.js"></script>
  <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <title>Input Satuan</title>
</head>
<body>
  <h1 align="center">Tabel Satuan</h1>

  <a href="index.html">Go to Home</a>

<table class="table table-striped" width='80%' border=1>
<tr>
    <th>id_satuan</th> <th>nama</th>
</tr>
<?php
while($input_data = mysqli_fetch_array($hasil)) {
    echo "<tr>";
    echo "<td>".$input_data['satuan_id']."</td>";
    echo "<td>".$input_data['nama']."</td>";
  }
  //  Kopi Right
?>
</table>
</body>
</html>
