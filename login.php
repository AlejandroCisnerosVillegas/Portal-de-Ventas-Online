<?php
    require 'connection.php';
    session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Portal de ventas online</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
        <script type="text/javascript" src="bootstrap/js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="icon" href="../../assets/img/logo.png">
        <link rel="apple-touch-icon" href="../../assets/img/logo-grande.png">
    </head>
    <body>
        <div>
            <?php
                require 'header.php';
            ?>
            <br><br><br>
           <div class="container">
                <div class="row">
                    <div class="col-xs-6 col-xs-offset-3">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3>Iniciar sesión</h3>
                            </div>
                            <div class="panel-body">
                                <p>Conéctate para realizar compras.</p>
                                <form method="post" action="login_submit.php">
                                    <div class="form-group">
                                        <input type="email" class="form-control" name="email" placeholder="Correo electrónico" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" name="password" placeholder="Contraseña (min. 6 caracteres)" pattern=".{6,}">
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Iniciar sesión" class="btn btn-primary">
                                    </div>
                                </form>
                            </div>
                            <div class="panel-footer">¿Aún no tienes una cuenta? <a href="signup.php">Regístrate</a></div>
                        </div>
                    </div>
                </div>
           </div>
           <br><br><br><br><br>
           <footer class="footer">
               <div class="container">
                <center>
                <p>&copy; Copyright <strong><span>2024</span></strong>   <a href="https://www.linkedin.com/in/alejandro-programmer/" target="_blank"><b>Alejandro Cisneros Villegas</b></a>   v2.0.1</p>
                <p>Todos los derechos reservados.</p>
               </center>
               </div>
           </footer>
        </div>
    </body>
</html>