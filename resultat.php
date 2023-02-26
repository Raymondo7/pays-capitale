<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CountryApp</title>
    <link rel="short icon" href="96x96.png">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="manifest" href="manifest.json">
    <meta name="apple-mobile-web-app-status-bar" content="white">
    <meta rel="apple-touch-icon" href="480x480.png">
    <meta name="theme-color" content="white">
</head>
<body>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>CountryApp</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="position">
        <nav id="header" class="navbar-brand">
            <ul>
                <li><h1 id="nice">CountryApp</h1></li>
                <li><a href="info.php"><img src="aide.png" id="aide" title="Aide" alt="aide_logo"></a></li>
            </ul>
        </nav> 

        <form method="POST" class="d-flex" id="MyForm" action="traitement.php">
            <input class="form-control me-2" name="valeur" type="search" id="element" placeholder="Search Country">
            <span id="error"></span>
            <button class="btn btn-outline-success" name="submit" type="submit" style="font-weight: bold;">Search</button>
        </form>

        <form id="forme" method="post">
            <li class="drop">
                <select class="selection" onchange="showContent();">
                    <option class="select-item" value="0">Tous les pays</option>
                    <option class="select-item" value="1">Afrique</option>
                    <option class="select-item" value="2">Amérique</option>
                    <option class="select-item" value="3">Asie</option>
                    <option class="select-item" value="4">Europe</option>
                    <option class="select-item" value="5">Océanie</option>
                </select>
            </li>
        </form>
    </div>

    <div class="container" id="content_0">
        <?php
            include_once("connexion.php");
            $req = mysqli_query($con,"SELECT pays,capitale FROM liste ORDER BY pays");
            while ($row = mysqli_fetch_assoc($req)) {
                ?>
                    <p class="les_noms">
                        <label class="label" id="name_b"><?=$row['pays']?></label>
                        <label class="label" id="name_b2"><?=$row['capitale']?></label>
                    </p>
                <?php
            }     
        ?>
    </div>

    <div class="container" id="content_1" >
        <?php
            include_once("connexion.php");
            $req = mysqli_query($con,"SELECT pays,capitale FROM afrique ORDER BY pays");
            while ($row = mysqli_fetch_assoc($req)) {
                ?>
                    <p class="les_noms">
                        <label class="label" id="name_b"><?=$row['pays']?></label>
                        <label class="label" id="name_b2"><?=$row['capitale']?></label>
                    </p>
                <?php
            }     
        ?>
    </div>

    <div class="container" id="content_2" >
        <?php
            include_once("connexion.php");
            $req = mysqli_query($con,"SELECT pays,capitale FROM amerique ORDER BY pays");
            while ($row = mysqli_fetch_assoc($req)) {
                ?>
                    <p class="les_noms">
                        <label class="label" id="name_b"><?=$row['pays']?></label>
                        <label class="label" id="name_b2"><?=$row['capitale']?></label>
                    </p>
                <?php
            }     
        ?>
    </div>

<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="app.js"></script>
<script type="text/javascript" src="script.js"></script>
</body>
</html>