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
                <td>satuan_id</td>
                <td><input type="text" name="satuan_id"></td>
            </tr>
            <tr>
                <td>nama</td>
                <td><input type="text" name="nama"></td>
            </tr>

            <tr>
                <td></td>
                <td><input type="submit" name="Submit" value="Add"></td>
            </tr>
        </table>
    </form>

    <?php

    // Check If form submitted, insert form data into satuan table.
    if(isset($_POST['Submit'])) {
        $satuan_id = $_POST['satuan_id'];
        $nama = $_POST['nama'];
        // include database connection file
        include_once("config.php");
        // Insert user data into table
        $result = mysqli_query($mysqli, "INSERT INTO satuan (satuan_id,nama) VALUES('$satuan_id','$nama')");

        // Tampil Satuan
        echo "Input Berhasil. <a href='tampil_satuan.php'>Cek Daftar Satuan,         </a>";

    if( empty( $_POST[ 'satuan_id' ] ) ) {

      $error = 'Masukan nilai pada satuan_id Namun Data Sudah Masuk';
      echo $error;
 }else{echo "Masukan nama, Namun data sudah masuk";}}
    ?>
</body>
</html>
