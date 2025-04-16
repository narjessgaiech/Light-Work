<?php
$conn = new mysqli("localhost","root","","test.sqlite3.sql");
$result =$conn->query("SELECT id_employeur , nom FROM employes");
$id = $_GET['id_employeur'];
$emp = $conn->query("SELECT * FROM employes WHERE id_employeur = $id")->fetch_assoc();
$paie = $conn->query("SELECT * FROM paie WHERE id_employeur = $id")->fetch_assoc();
$conges = $conn->query("SELECT * FROM conges WHERE id_employeur= $id");
$solde = [];
while($c = $conges->fetch_assoc()) {
    $c['solde'] = $c['jours_acquis'] - $c['jours_pris'];
    $solde[] = $c;
}
$net = $paie['salaire_base'] + $paie['prime'] + $paie['heures_supp'] - $paie['retenue_sociale'];
?>