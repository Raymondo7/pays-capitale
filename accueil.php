<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=chrome">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Suivant</title>
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="fleur.jpg">
</head>

<body>
    <nav id="header">
            <ul>
                <li><h1 id="nice">NiceName</h1></li>
                <li id="li">
                    <a href="traitement.php"><img src="bibliothèque.png" id="biblio" title="Bibliothèque" alt="bibliothèque_logo"></a>
                    <a href="##"><img src="aide.png" id="aide" title="Aide" alt="aide_logo"></a>
                </li>
            </ul>
    </nav>
         <form method="POST" id="myForm">
            <input type="text" name="texte" id="texte" autofocus title="Veuillez entrer un indice pour rechercher le nom correspondant" placeholder="Entrez un indice ou une lettre ">
            <span id="error"></span><br>
            <button type="submit" name="button" id="button">Rechercher</button>
        </form>
    <script>
        const formule = document.getElementById('myForm');

        formule.addEventListener('submit',function(e){
            let texte = document.getElementById('texte');

            if (texte.value.trim() == ""){
                let myError = document.getElementById('error');
                myError.innerHTML = "Entrez votre nom sans caractères spéciaux !";
                myError.style.color = "red";
                e.preventDefault();
            }
        });
        

    </script>
</html>
