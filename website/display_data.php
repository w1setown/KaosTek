<?php
include "db_connect.php";

$sql = "SELECT * FROM faktura";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table border='1'><tr><th>OrdreNummer</th><th>KundeID</th><th>Dato</th><th>TotalBeløb</th></tr>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["OrdreNummer"] . "</td><td>" . $row["KundeID"] . "</td><td>" . $row["Dato"] . "</td><td>" . $row["TotalBeløb"] . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

$conn->close();
?>
