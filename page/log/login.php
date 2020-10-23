<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ans</title>
    <link rel="stylesheet" href="../../bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="./sniper.css">

    <script src="../../bootstrap/jquery.min.js"></script>
    <script src="../../bootstrap/bootstrap.min.js"></script>
    <script src="../../bootstrap/popper.min.js"></script>
</head>

<body class="bg-img-chukudu">
    <div class="container-fluid py-5 bg-black-op" style="min-height: 100vh;">
        <div class="row justify-content-center">
            <div class="col-md-3 col-sm 12 p-2 mt-5">
                <h3 class="text-center text-white ">Log In</h3>
                <div class="card card-body">
                    <?php
                        include("./codes.php");
                        include("./error.php");
                    ?>
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="username">Username or email</label>
                            <input type="text" name="username" value="<?php print $username;?>" id="username"
                                placeholder="Username or email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" name="password" id="password" value="<?php print $password;?>"
                                placeholder="Password" class="form-control">
                        </div>
                        <div class="form-group">
                            <button type="submit" name="login" class="btn btn-primary">Login</button>
                        </div>
                    </form>
                </div>
                <div class="card card-body mt-3">
                    <span class="text-center">I don't have a <a href="signup.php">account</a></span>
                </div>
            </div>
        </div>
    </div>
</body>

</html>