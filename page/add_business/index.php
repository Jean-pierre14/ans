<?php  ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" type="text/css" href="mapStyle.css" />
            <title>register the Transport service</title>
            <link rel="stylesheet" type="text/css" href="st2.css">
            <link rel="shortcut icon" type="imege/x-icon" href="../../img/1587195324100.png">
  
        </head>
        <body>
        <section class="body">
            <center>
                <h1 style="background-color: #0000;text-shadow: 2px 2px 2px #456166;color: white;"></br>Register your Business service</h1>
                <h2 style="background-color: #0000; size: 10px;text-shadow: 2px 2px 2px #456166;color: white;"></br>Make sure you full the following form with personel and professional Information</h2>
            </center>
            
            <center>
                
            <form action="trait.php" method="post" enctype="multipart/form-data">
                    <table bgcolor="#eee" style="border: 1px solid #ddd; padding: 20px; width: 45%; border-radius: 20px; background-color: transparent; background: rgba(69, 97, 102,.6);box-sizing: border-box;box-shadow: 2px 2px 2px #001; color: white;">
                       <tr>
                            <td>Choose a picture</td>
                            <td>
                                <div>
                                    <input type="file" name="img" accept="image/*" multiple  required>
                                </div>
                            </td>
                        </tr>


                           <!--  -->

                        <tr>
                        
                        <tr>
                            <td>Businnes name:</td>
                        </br>   
                                <td>
                            <input type="text" name="name"  width="100%" placeholder="ex: LA CHARITE" required>
                         </td>
                        </tr>
    
                        
                        <tr>
                            <td>Businness Type:</td>
                            <td>
                                <select name="type">
                                    
                                    <option value="transport">
                                         Transport
                                    </option>
                                    <option value="Hospital">
                                         HOSPITAL
                                    </option>
                                    <option value="Hotel">
                                         Hotel
                                    </option>
                                    <option value="Domicile">
                                         Domicile
                                    </option>
                                    <option value="Restaurant">
                                         Restaurant
                                    </option>
                                    <option value="shop">
                                          SHOP AND SUPERMARKET
                                    </option>
                                    <option value="Church">
                                         Church
                                    </option>
                                    <option value="School">
                                         School
                                    </option>
                                    <option value="tourisme">
                                        Tourisme and history
                                    </option>

                                </select>
                            </td>
                        </tr>
                         <tr>
                            <td>Businnes Phone number:</td>
                        </br>   
                                <td>
                            <input type="text" name="phone"  width="100%" placeholder="ex: +243XXXXXXXX" required>
                         </td>
                        </tr>
                           <td>Business Email :</td>
                            <td>
                                <input type="text" name="email"  width="100%" placeholder="exemple@gmail.com" required=""></input>
                            </td>
                        </tr>
                         
                      

                    

                        <tr>
                            <td>
                               
                            </td>
                            <td>
                                <input type="submit" id="aa" value="SAVE AND SEND" name="submit" />
                                
                            </td>
                            <td>
                               <input type="reset" id="aa" value="Clear form" name="reset" /> 

                            </td>
                        </tr>
                        
                      
                    </table>
                </form>
            </center>
        </section>
        </body>
    </html>