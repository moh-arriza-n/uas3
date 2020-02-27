<html>
<head>
  <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
  <script type="text/javascript" src="bootstrap/js/jquery.js"></script>
  <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <title>Input Kategori</title>
</head>

<body>
    <a href="index.html">Go to Home</a>
    <br/><br/>

    <form action="input_kategori.php" method="post" name="form3">
        <table class="table table-striped" width="25%" border="0">
            <tr>
                <td>id_kategori</td>
                <td><input type="text" name="id_kategori"></td>
            </tr>
            <tr>
                <td>nama</td>
                <td><input type="text" name="nama"></td>
            </tr>

            <tr>
                <td></td>
                <td><input class="btn btn-primary" type="submit" value="Submit" name="Submit"></td>
            </tr>
        </table>
    </form>

    <?php

    // Check If form submitted, insert form data into satuan table.
    if(isset($_POST['Submit'])) {
        $id_kategori = $_POST['id_kategori'];
        $nama = $_POST['nama'];
        // include database connection file
        include_once("config.php");
        // Insert user data into table
        $result = mysqli_query($mysqli, "INSERT INTO kategori (id_kategori,nama) VALUES('$id_kategori','$nama')");

        // Tampil Satuan
        echo "Input Berhasil. <a href='tampil_kategori.php'>Cek Daftar Kategori, </a>";}

    ?>
</body>
</html>
