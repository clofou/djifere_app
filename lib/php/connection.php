
<?php
include 'bdd_connect.php';

$username = 'fakoro'; //$_POST['username'];
$password = 'traore'; //$_POST['password'];

try {
    $condition = "nom_colonne = '$username'";

    // Préparation et exécution de la requête
    $sql = "SELECT * FROM utilisateur WHERE $condition";
    $stmt = $db->prepare($sql);
    $stmt->execute();

    // Récupération des résultats
    $resultats = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Affichage des résultats
    foreach ($resultats as $resultat) {
        echo $resultat['colonne1'] . " - " . $resultat['colonne2'] . "<br>";
    }
} catch (\Throwable $th) {
    //throw $th;
    echo "Erreeeuueue ----> " . $th->getMessage();
}
