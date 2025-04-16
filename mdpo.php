<?php
$conn = new mysqli("localhost","root","","test.sqlite3.sql");
$result =$conn->query("SELECT id_employeur , nom FROM employes");
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email_or_phone = trim($_POST['email_or_phone']);

    if (empty($email_or_phone)) {
        echo "Veuillez remplir le champ.";
        exit;
    }
    $message = "Si l'adresse ou le numéro existe, un lien de réinitialisation vous a été envoyé.";
    echo "<p style='color:white; background-color: #111; padding: 20px;'>$message</p>";
} else {
    header("Location: index.html");
    exit;
}
?>