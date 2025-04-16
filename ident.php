<?php
$conn = new mysqli("localhost","root","","test.sqlite3.sql");
$result =$conn->query("SELECT id_employeur , nom FROM employes");
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $contact = $_POST['email_or_phone'] ?? '';
    echo "Un code d’identification a été envoyé à : " . htmlspecialchars($contact);
}
?>