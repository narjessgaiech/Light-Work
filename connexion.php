<?php
$conn = new mysqli("localhost","root","","test.sqlite3.sql");
$result =$conn->query("SELECT id_employeur , nom FROM employes");
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'] ?? '';
    $password = $_POST['password'] ?? '';
    if ($email === "admin@example.com" && $password === "1234") {
        echo "Connexion réussie !";
    } else {
        echo "Identifiants incorrects.";
    }
}
?>