<?php
// Connect to the database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "formsystem";
// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check the connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
// Get the search term
$search = $_POST['search'];
// Store the search term in the session
$_SESSION['search'] = $search;
// Prepare the SQL query
$sql = "SELECT * FROM articles WHERE title LIKE '%$search%' OR content LIKE
'%$search%'";
// Execute the query
$result = $conn->query($sql);
// Prepare the SQL statement
$sql = "INSERT INTO search_history (search_term) VALUES ('$search')";
// Execute the SQL statement
$conn->query($sql);
// Check if the query returned any results
if ($result->num_rows > 0) {
// There are results
echo "<table border='1'>";
echo "<tr><th>Title</th><th>Content</th></tr>";
while ($row = $result->fetch_assoc()) {
echo "<tr><td>" . $row['title'] . "</td><td>" . $row['content'] . "</td></tr>";
}
echo "</table>";
} else {
// There are no results
echo "No results found.";
}
// Close the connection
$conn->close();
?>