<?php
        session_start();
        if(!isset($_SESSION['role']) or ($_SESSION['role']!=1))
        {
            header('location: ../login.php');
            exit();
        }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ANS/</title>
    <link rel="stylesheet" href="../../bootstrap/bootstrap.min.css">
</head>

<body>
    <h3>Welcome <?php print $_SESSION['username'];?></h3>
    <a href="../log/logout.php" class="btn btn-link">logout</a>

    <script src="../../bootstrap/jquery.min.js"></script>
    <script src="../../bootstrap/bootstrap.min.js"></script>
    <script src="../../bootstrap/popper.min.js"></script>
</body>

</html>