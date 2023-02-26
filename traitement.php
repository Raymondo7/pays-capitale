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
    
    <div id="position">
    <nav id="header" class="navbar-brand">
            <ul>
                <li><h1 id="nice">CountryApp</h1></li>
                <a href="info.php"><img src="aide.png" id="aide" title="Aide" alt="aide_logo"></a>
            </ul>
            
    </nav> 
    <form method="POST" class="d-flex" id="MyForm">
  <input class="form-control me-2" name="valeur" type="search" id="element" placeholder="Search Country" required>
  <span id="error"></span>
  <button class="btn btn-outline-success" onclick="rechercher();" name="submit" type="submit" style="font-weight: bold;">Search</button>
</form>
    <form id="forme">
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
    <div class="container" id="content_0" >
    <?php
        include_once("connexion.php");
        $req = mysqli_query($con,"SELECT pays,capitale FROM liste ORDER BY pays");
        while ($row = mysqli_fetch_assoc($req)) {
            ?>
                <p id="les_noms">
                    <label class="label" id="name_b"><?=$row['pays']?></label>
                    <label class="label" id="name_b2"><?=$row['capitale']?></label>
                </p>
                <?php
        }     
    ?>
    </div><div class="container" id="content_1" >
    <?php
        include_once("connexion.php");
        $req = mysqli_query($con,"SELECT pays,capitale FROM afrique ORDER BY pays");
        while ($row = mysqli_fetch_assoc($req)) {
            ?>
                <p id="les_noms">
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
                <p id="les_noms">
                    <label class="label" id="name_b"><?=$row['pays']?></label>
                    <label class="label" id="name_b2"><?=$row['capitale']?></label>
                </p>
                <?php
        }     
    ?>
    </div>
    <div class="container" id="content_3" >
    <?php
        include_once("connexion.php");
        $req = mysqli_query($con,"SELECT pays,capitale FROM asie ORDER BY pays");
        while ($row = mysqli_fetch_assoc($req)) {
            ?>
                <p id="les_noms">
                    <label class="label" id="name_b"><?=$row['pays']?></label>
                    <label class="label" id="name_b2"><?=$row['capitale']?></label>
                </p>
                <?php
        }     
    ?>
    </div>
    <div class="container" id="content_4" >
    <?php
        include_once("connexion.php");
        $req = mysqli_query($con,"SELECT pays,capitale FROM europe ORDER BY pays");
        while ($row = mysqli_fetch_assoc($req)) {
            ?>
                <p id="les_noms">
                    <label class="label" id="name_b"><?=$row['pays']?></label>
                    <label class="label" id="name_b2"><?=$row['capitale']?></label>
                </p>
                <?php
        }     
    ?>
    </div>
    <div class="container" id="content_5" >
    <?php
        include_once("connexion.php");
        $req = mysqli_query($con,"SELECT pays,capitale FROM oceanie ORDER BY pays");
        while ($row = mysqli_fetch_assoc($req)) {
            ?>
                <p id="les_noms">
                    <label class="label" id="name_b"><?=$row['pays']?></label>
                    <label class="label" id="name_b2"><?=$row['capitale']?></label>
                </p>
                <?php
        }     
    ?>
    </div>
    <div class="container" id="content_6">
    <?php
// Connexion à la base de données
$pdo = new PDO('mysql:host=localhost;dbname=pays-capitale;charset=utf8', 'root', '');

// Vérification que le formulaire a été soumis
if (isset($_POST['submit'])) {
  // Récupération de la valeur saisie dans le champ input
  $valeur = $_POST['valeur'];

  // Requête SQL pour récupérer les pays correspondants à la valeur saisie
  $sql = "SELECT pays, capitale FROM liste ";

  // Préparation de la requête
  $stmt = $pdo->prepare($sql);

  // Remplacement du paramètre :valeur par la valeur saisie dans le champ input
  $stmt->bindValue(':valeur', $valeur . '%');

  // Exécution de la requête
  $stmt->execute();

  // Boucle sur les résultats pour afficher les pays correspondants et leur capitale
  while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    ?>
    <p id="les_noms">
      <label class="label" id="name_b"><?=$row['pays']?></label>
      <label class="label" id="name_b2"><?=$row['capitale']?></label>
    </p>
    <?php
  }
}
?>
</div>
<script src="app.js"></script>
<script >
    function showContent(){
    let selection = document.querySelector(".selection").value;
    let cont0 = document.getElementById("content_0");
    let cont1 = document.getElementById("content_1");
    let cont2 = document.getElementById("content_2");
    let cont3 = document.getElementById("content_3");
    let cont4 = document.getElementById("content_4");
    let cont5 = document.getElementById("content_5");
    let cont6 = document.getElementById("content_6");

    if(selection === '0'){
        cont1.style.display = 'none';
        cont2.style.display = 'none';
        cont3.style.display = 'none';
        cont4.style.display = 'none';
        cont5.style.display = 'none';
        cont6.style.display = 'none';
        cont0.style.display = 'block';
        cont0.style.width= '100%';
        cont0.style.height= '100%';
        cont0.style.overflow= 'hidden';
        cont0.style.paddingLeft= '0px';
        cont0.style.paddingRight= '0px';
        cont0.style.paddingTop= '170px';
    }else if(selection === '1'){
        cont0.style.display = 'none';
        cont2.style.display = 'none';
        cont3.style.display = 'none';
        cont4.style.display = 'none';
        cont5.style.display = 'none';
        cont6.style.display = 'none';
        cont1.style.display = 'block';
        cont1.style.width= '100%';
        cont1.style.height= '100%';
        cont1.style.overflow= 'hidden';
        cont1.style.paddingLeft= '0px';
        cont1.style.paddingRight= '0px';
        cont1.style.paddingTop= '170px';
    }else if(selection === '2'){
        cont0.style.display = 'none';
        cont1.style.display = 'none';
        cont3.style.display = 'none';
        cont4.style.display = 'none';
        cont5.style.display = 'none';
        cont6.style.display = 'none';
        cont2.style.display = 'block';
        cont2.style.width= '100%';
        cont2.style.height= '100%';
        cont2.style.overflow= 'hidden';
        cont2.style.paddingLeft= '0px';
        cont2.style.paddingRight= '0px';
        cont2.style.paddingTop= '170px';
    }else if(selection === '3'){
        cont0.style.display = 'none';
        cont1.style.display = 'none';
        cont2.style.display = 'none';
        cont4.style.display = 'none';
        cont5.style.display = 'none';
        cont6.style.display = 'none';
        cont3.style.display = 'block';
        cont3.style.width= '100%';
        cont3.style.height= '100%';
        cont3.style.overflow= 'hidden';
        cont3.style.paddingLeft= '0px';
        cont3.style.paddingRight= '0px';
        cont3.style.paddingTop= '170px';
    }else if(selection === '4'){
        cont0.style.display = 'none';
        cont1.style.display = 'none';
        cont2.style.display = 'none';
        cont3.style.display = 'none';
        cont5.style.display = 'none';
        cont6.style.display = 'none';
        cont4.style.display = 'block';
        cont4.style.width= '100%';
        cont4.style.height= '100%';
        cont4.style.overflow= 'hidden';
        cont4.style.paddingLeft= '0px';
        cont4.style.paddingRight= '0px';
        cont4.style.paddingTop= '170px';
    }else{
        cont0.style.display = 'none';
        cont1.style.display = 'none';
        cont2.style.display = 'none';
        cont3.style.display = 'none';
        cont4.style.display = 'none';
        cont6.style.display = 'none';
        cont5.style.display = 'block';
        cont5.style.width= '100%';
        cont5.style.height= '100%';
        cont5.style.overflow= 'hidden';
        cont5.style.paddingLeft= '0px';
        cont5.style.paddingRight= '0px';
        cont5.style.paddingTop= '170px';   
    }    
}
showContent();
let myForm = document.getElementById('MyForm');

function rechercher(){
    let myInput = document.getElementById('element');
    let myRegex = /^[a-zA-Z-\s]+([éè]?)[a-z]?$/;
    let cont0 = document.getElementById("content_0");
    let cont1 = document.getElementById("content_1");
    let cont2 = document.getElementById("content_2");
    let cont3 = document.getElementById("content_3");
    let cont4 = document.getElementById("content_4");
    let cont5 = document.getElementById("content_5");
    let cont6 = document.getElementById("content_6");
    cont6.style.display = 'block';

    if(myInput.value.trim() == "" | (myRegex.test(myInput.value) == false)){
        let myError = document.getElementById('error');
        let myReche = document.getElementById('reche');
        let myF = document.getElementById('forme');
        myError.innerHTML = "!";
        myError.style.color = "red";
        myError.style.fontSize = "30px";
        myReche.style.marginLeft = "8px";
        myInput.style.paddingBottom = "5px";
        myF.style.marginTop = "2px";
        e.preventDefault();
    }else{
        cont0.style.display = 'none';
        cont1.style.display = 'none';
        cont2.style.display = 'none';
        cont3.style.display = 'none';
        cont4.style.display = 'none';
        cont5.style.display = 'none';
        cont6.style.display = 'block';
        cont6.style.width= '100%';
        cont6.style.height= '100%';
        cont6.style.overflow= 'hidden';
        cont6.style.paddingLeft= '0px';
        cont6.style.paddingRight= '0px';
        cont6.style.paddingTop= '170px';
        e.preventDefault();
        console.log("bon");
    }
}
//rechercher();
</script>
</body>
</html>