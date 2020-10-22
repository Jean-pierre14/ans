<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>create an acount</title>
    <link rel="shortcut icon" type="imege/x-icon" href="../../img/1587195324100.png">
    <link rel="stylesheet" href="signup.css">
    <script>
    function cansubmit() {
      const email  = document.form1.email.value;
      const password = document.form1.password.value;
      const passwordconf=document.form1.passwordconf.value;
      if(email.indexOf("@")==-1){
        alert("@ is missing in your Email, please check your email again");
        return false;
      }
      else if (email.indexOf(".")==-1) {
        alert("Dot is missing in your Email, please check your email again");
        return false;
      }
      else if(password.length < 6 ){
        alert("Password Length should be more than 6 characters");
        return false;
      }
      else if(passwordconf !== password){
        alert("the two passwords are different, try the same password");

          return false;
      }
    
      return true;
    }

    </script>
  </head>
  <body>
    <form name="form1" onsubmit="return cansubmit()" action="traitsing.php" method="post">
      <div class="main">
        <div class="sign1">
          <a href="#">

          <div class="label1">
            YOUR FIRST NAME
          </div>
          <input class="textbox" required type="text" name="fname" placeholder="FIRST NAME">
           <div class="label1">
            YOUR LAST NAME
          </div>
          <input class="textbox" required type="text" name="lname" placeholder="LAST NAME" >
          <div class="label1">
            CHOOSE A USERNAME
          </div>
          <input class="textbox" required type="text" name="username" placeholder="USERNAME">
          <div class="label2">
          </div>
          <div class="label1">
            EMAIL
          </div>
          <input class="textbox" required type="email" name="email" placeholder="exemple@gmail.com">
           <div class="label1">
            PHONE NUMBER
          </div>
          <input class="textbox" required type="text" name="phone" placeholder="ex:+24397XXXXXXX ">
          <div class="label1">
            CHOOSE A PASSWORD
          </div>
          <input class="textbox" required type="password" name="password" placeholder="PASSWORD">
            <div class="label1">
            CONFIRM YOUR PASSWORD
          </div>
          <input class="textbox" required type="password" name="passwordconf" placeholder="CONFIRM YOUR PASSWORD">

          <input type="submit" name="submit" value="REGISTER">
        </div>
        <div class="sign2">
          <div class="label6">
            The advantages of our partnership
          </div>
          <table class="group1">
            <tr>
              <td class="label7">Open and close the availability of your establishment when you want.</td>
              <td class="label8"></td>
            </tr>
            <tr>
              <td class="label7">you are the administrator of your platform on our site,
                it is you who decides to change or modify
                your business.</td>
              <td class="label8"></td>
            </tr>
            <tr>
              <td class="label7"></td>
              <td class="label8"></td>
            </tr>
            <tr>
              <td class="label7"></td>
              <td class="label8"></td>
            </tr>
          </table>
          <div class="label6">
            This is how we help you to get clients.
          </div>
          <table class="group1">
            <tr>
              <td class="label7">Many travelers start by looking at search engines like GOOLE
                That's why we don't wait for customers to come to us. We actively promote your establishment on search engines all over the world.</td>
              <td class="label8"></td>
            </tr>
            <tr>
              <td class="label7">
                Some travelers use maps when searching,
                When you register your establishment on ans.com, it is also listed on Google Maps.</td>
              <td class="label8"></td>
            </tr>
            <tr>
              <td class="label7"></td>
              <td class="label8"></td>
            </tr>
            <tr>
              <td class="label7"></td>
              <td class="label8"></td>
            </tr>
          </table>
          <div class="label6">
            Register and welcome your first customers today
          </div>
          <table class="group1">
            <tr>
              <td class="label7"></td>
              <td class="label8"></td>
            </tr>
            <tr>
              <td class="label7"></td>
              <td class="label8"></td>
            </tr>
            <tr>
              <td class="label7"></td>
              <td class="label8"></td>
            </tr>
          </table>
       <!--  <div class="label6">
            ASSET HOSTING
          </div>
          <table class="group1">
            <tr>
              <td class="label7">Storage</td>
              <td class="label8"></td>
            </tr>
          </table>
          <div class="label6">
            NEED MORE?
          </div>
          <div class="label9">
            Unlock the full power of MAPS <a href="#">with our PRO plans.</a>
          </div>
          -->
        </div>

      </div>
    </form>

  </body>
</html>
