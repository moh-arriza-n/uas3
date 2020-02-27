<html>
<head>
  <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
  <script type="text/javascript" src="bootstrap/js/jquery.js"></script>
  <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <title>Input Transaksi</title>
</head>

<body>
    <a href="index.html">Go to Home</a>
    <br/><br/>

    <form action="input_transaksi.php" method="post" name="form4">
        <table class="table table-striped" width="25%" border="0">
            <tr>
                <td>id_barang</td>
                <td><input type="text" name="id_barang"></td>
            </tr>
            <tr>
                <td>nama</td>
                <td><input type="text" name="nama"></td>
            </tr>
            <tr>
                <td>kategori_id</td>
                <td><input type="text" name="kategori_id"></td>
            </tr>
            <tr>
                <td>satuan_id</td>
                <td><input type="text" name="satuan_id"></td>
            </tr>
            <tr>
                <td></td>
                <td><input class="btn btn-primary" type="submit" value="Submit" nama="submit"></td>
            </tr>
        </table>
    </form>

    <?php

    // Check If form submitted, insert form data into users table.
    if(isset($_POST['Submit'])) {
        $id_barang = $_POST['id_barang'];
        $nama = $_POST['nama'];
        $kategori_id = $_POST['kategori_id'];
        $satuan_id = $_POST['satuan_id'];
        // include database connection file
        include_once("config.php");

        // Insert user data into table
        $result = mysqli_query($mysqli, "INSERT INTO transaksi (id_transaksi,nama_transaksi,tanggal_transaksi,harga,qty,id_barang) VALUES('$id_transaksi','$nama_transaksi','$tanggal_transaksi','$harga','$qty','$id_barang')");

        // Show message when user added,
        echo "Input Berhasil. <a href='tampil_transaksi.php'>Cek Daftar Transaksi</a>";
    }
    ?>
</body>
</html>
