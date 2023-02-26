<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Script</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php
// Connexion à la base de données
$pdo = new PDO('mysql:host=localhost;dbname=pays-capitale;charset=utf8', 'root', '');

// Vérification que le formulaire a été soumis
if (isset($_POST['submit'])) {
  // Récupération de la valeur saisie dans le champ input
  $valeur = $_POST['valeur'];

  // Requête SQL pour récupérer les pays correspondants à la valeur saisie
  $sql = "SELECT pays, capitale FROM liste WHERE pays LIKE :valeur";

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
<form method="POST" class="d-flex" id="MyForm">
  <input class="form-control me-2" name="valeur" type="search" id="element" placeholder="Search Country">
  <span id="error"></span>
  <button class="btn btn-outline-success" name="submit" type="submit" style="font-weight: bold;">Search</button>
</form>

</body>
</html>