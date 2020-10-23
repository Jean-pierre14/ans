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

<body class="bg-img-volcan">
    <div class="container-fluid py-2 bg-black-op" style="min-height: 100vh;">
        <div class="row justify-content-center">
            <div class="col-md-3 col-sm 12 p-2 mt-2">
                <h3 class="text-center">Sign Up</h3>
                <div class="card card-body">
                    <?php
                        include("./codes.php");
                        include("./error.php");
                    ?>
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="fname">First name</label>
                            <input type="text" name="fname" value="<?php print $fname;?>" id="fname"
                                placeholder="First name" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="lname">Last name</label>
                            <input type="text" name="lname" id="lname" value="<?php print $lname;?>"
                                placeholder="Last name" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" name="username" value="<?php print $username;?>" id="username"
                                placeholder="Username or email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" id="email" value="<?php print $email;?>"
                                placeholder="Email@ulk.rw" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" name="password" value="<?php print $password;?>" id="password"
                                placeholder="Password" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="password2">Confirm Password</label>
                            <input type="password" name="password2" id="password2" value="<?php print $password2;?>"
                                placeholder="Confirm Password" class="form-control">
                        </div>
                        <div class="form-group">
                            <button type="submit" name="register" class="btn btn-success bt-block">Sign Up</button>
                        </div>
                    </form>
                </div>
                <div class="card card-body mt-3">
                    <span class="text-center">I have a <a href="login.php">account</a></span>
                </div>
            </div>
        </div>
    </div>
</body>

</html>