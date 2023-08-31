<!DOCTYPE html>
<html>
<head>
<title>Search History</title>
</head>
<body>
<h1>Search History</h1>
<table border="1">
<tr><th>Search Term</th><th>Date</th><th>Link</th></tr>
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
// Get the search history
$sql = "SELECT search_term, date, link FROM search_history ORDER BY date DESC";
// Execute the query
$result = $conn->query($sql);
//
//get user id from sessiion
if(isset($_SESSION['user_id'])){
    $user_id= $_SESSION['user_id'];
}else{
    $user_id= null;
}
//get search term
if(isset($_POST['search'])){
    $search_term= $_POST['search'];
}else{
    $search_term= null;
}
$sql ="INSERT INTO user_search_history(user_id, search_term, date) VALUES ('$user_id', '$search_term', NOW())";

// Check if the query returned any results
if ($result->num_rows > 0) {
// There are results
while ($row = $result->fetch_assoc()) {
echo "<tr><td>" . $row['search_term'] . "</td><td>" . $row['date'] . "</td><td><a href='" .
$row['link'] . "'>Click here</a></td></tr>";
}
} else {
// There are no results
echo "No results found.";
}
// Close the connection
$conn->close();
?>
</table>
</body>
</html>