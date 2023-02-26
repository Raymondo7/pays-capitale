<?php
    //connexion a la base de données
    $con = mysqli_connect("localhost", "root", "", "pays-capitale");
    if (!$con) {
        echo ("Connexion échouée");
    }
?>