


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" type="text/css" href="mapStyle.css" />
            <title>register the Transport service</title>
            <style>
            input[type=text],
            input[type=email],
            input[type=number]{
                width: 103%;
                padding: 10px;
                margin: 1px;
                border: 1px solid #fff;
                border-radius: 5px;
                font-family: 'Comic Sans MS';
                font-size: medium;
            }
            textarea{
                outline: none;
                font-family: 'Comic Sans MS';
                font-size: medium;
            }
            input[type=submit],
            input[type=reset]{
                border: none;
                margin-left: 5px
            }
            input[type=submit]{
                background: #00506A;
            }
            input[type=reset]{
                background: #9C735A;
            }
             *
            {
                margin: 0;
                padding: 0;
            }
            #input, select, textarea{width: 100%; border-radius: 5px; padding: 15px;border: 1px solid #fff;}#aa{width: 100%;padding: 5px;}
            body{background-image: url('../transport_pic/background_2.jpg'); background-size: cover;color: black;}
            .body{ top:0; bottom:0; width: 100%; height: 705px ; background-color: rgba(0,0,0,0.3); }
            
    </style>
        </head>
        <body>
        <section class="body">
            <center>
                <h1 style="background-color: #0000;text-shadow: 2px 2px 2px #456166;color: white;"></br>Register your Transport service</h1>
                <h2 style="background-color: #0000; size: 10px;text-shadow: 2px 2px 2px #456166;color: white;"></br>Make sure you full the following form with personel and professional Information</h2>
            </center>
            
            <center>
                
            <form action="connection_trans.php" method="post" enctype="multipart/form-data">
                    <table bgcolor="#eee" style="border: 1px solid #ddd; padding: 20px; width: 45%; border-radius: 20px; background-color: transparent; background: rgba(69, 97, 102,.6);box-sizing: border-box;box-shadow: 2px 2px 2px #001; color: white;">
                       <tr>
                            <td>Choose your transport picture</td>
                            <td>
                                <div>
                                    <input type="file" name="image" required>
                                </div>
                            </td>
                        </tr>


                            <tr>
                                <td>Date</td>
                                <td>
                                    <div>
                                        <input type="date" name="dates" required>
                                    </div>
                                </td>
                            </tr>

                        <tr>
                        
                        <tr>
                            <td>Transport name:</td>
                        </br>   
                                <td>
                            <input type="text" name="user"  width="100%" placeholder="ex: LA CHARITE" required>
                         </td>
                        </tr>
    
                        
                        <tr>
                            <td>Transport Currency:</td>
                            <td>
                                <input type="text" name="title"  width="100%" placeholder="ex: In god we trust" required></input>
                            </td>
                        </tr>

                          <tr>
                            <td>About :</td>
                            <td>
                                <textarea type="text" name="descriptions"  width="100%" placeholder="tell to the word somethings about it" required></textarea>
                            </td>
                        </tr>
                   <tr>
                            <td>Email :</td>
                            <td>
                                <input type="text" name="email"  width="100%" placeholder="goldsafari@gmail.com" required=""></input>
                            </td>
                        </tr>
                          <tr>
                            <td>Web cite or facebook page</td>
                            <td>
                                <input type="text" name="link"  width="100%" placeholder="ex: www.ans.com" required=""></input>
                            </td>
                        </tr>
                      
                        <tr>
                            <td>Phone number</td>
                            <td>
                                <input type="text" name="phone"  width="100%" placeholder="Phone number" required></input>
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
                        
                        <tr>
                            <td></td>
                            <td style="text-align: right;"><br/><br/>
                                <span style="background-color: #333; color: #ccc;">&copy;African Next Season</span>
                            </td>
                        </tr>
                    </table>
                </form>
            </center>
        </section>
        </body>
    </html>