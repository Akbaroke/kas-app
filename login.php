<?php
require 'connect.php';
include 'head.php';
session_start();

if (isset($_SESSION["login"])) {
  header("Location: index.php");
  exit;
}

if (isset($_POST["login"])) {
  $nim = $_POST["nim"];
  $password = $_POST["password"];

  $result = mysqli_query($conn, "SELECT * FROM akun WHERE nim = '$nim'");

  // cek username
  if (mysqli_num_rows($result) === 1) {
    // cek password
    $row = mysqli_fetch_assoc($result);
    $id = $row["id"];
    if (password_verify($password, $row["password"]) OR $password === $row["password"]) {
      if($row['status'] == 'aktif'){
        // set session
        $_SESSION['login'] = true;
        $_SESSION['nim'] = $nim;
        $_SESSION['id'] = $id;

        $time = time() + 10;
        mysqli_query($conn, "UPDATE akun SET time='$time' WHERE id='$id'");
        header("Location: index.php");
        exit;
      }else{
        echo "<div class='alert' data-alert='errorTerbanned'></div>";
      }
    }
  }

  $error = true;
  if (isset($error)) {
    echo " <div class='alert' data-alert='error'></div> ";
  }
}

?>

  <div class="container">
    <h1>MANAGEMENT UANG KAS TI.21.A3</h1>
    <div class="card-login">
      <img src="img/icon/icon-1.png" alt="Login" width="100px">
      <form action="" method="post" autocomplete="off" required >
        <div>
          <label for="nim">NIM :</label>
          <input type="text" name="nim" placeholder="31211****" required >
        </div>
        <div>
          <label for="password">Password :</label>
          <input type="password" name="password" >
        </div>
        <button type="submit" name="login">
            <span>Login</span>
        </button>
      </form>
    </div>
  </div>


<?php
include "footer.php";
?>