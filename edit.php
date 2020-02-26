<?php
// include database connection file
include_once("config.php");

// Check if form is submitted for user update, then redirect to homepage after update
if(isset($_POST['update']))
{
    $id_barang=$_POST['id_barang'];
    $nama=$_POST['nama'];
    $kategori_id=$_POST['kategori_id'];
    $satuan_id=$_POST['satuan_id'];

    // update user data
    $result = mysqli_query($mysqli, "UPDATE barang SET id_barang='$id_barang',nama='$nama',kategori_id='$kategori_id',satuan_id='$satuan_id' WHERE id_barang=$id_barang");

    // Redirect to homepage to display updated user in list
    header("Location: index.php");
}
?>
<?php
// Display selected user data based on id
// Getting id from url
$id_barang = $_GET['id_barang'];

// Fetech user data based on id
$result = mysqli_query($mysqli, "SELECT * FROM barang WHERE id_barang=$id_barang");

while($input_data = mysqli_fetch_array($result))
{
    $id_barang = $input_data['id_barang'];
    $nama = $input_data['nama'];
    $kategori_id = $input_data['kategori_id'];
    $satuan_id = $input_data['satuan_id'];
}
?>
<html>
<head>
    <title>Edit Data</title>
</head>

<body>
    <a href="index.php">Home</a>
    <br/><br/>

    <form name="update_data" method="post" action="edit.php">
        <table border="0">
            <tr>
                <td>id_barang</td>
                <td><input type="text" name="id_barang" value=<?php echo $id_barang;?>></td>
            </tr>
            <tr>
                <td>nama</td>
                <td><input type="text" name="nama" value=<?php echo $nama;?>></td>
            </tr>
            <tr>
                <td>kategori_id</td>
                <td><input type="text" name="kategori_id" value=<?php echo $kategori_id;?>></td>
            </tr>
            <tr>
                <td>satuan_id</td>
                <td><input type="text" name="satuan_id" value=<?php echo $satuan_id;?>></td>
            </tr>
            <tr>
                <td><input type="hidden" name="id_barang" value=<?php echo $_GET['id_barang'];?>></td>
                <td><input type="submit" name="update" value="Update"></td>
            </tr>
        </table>
    </form>
</body>
</html>
