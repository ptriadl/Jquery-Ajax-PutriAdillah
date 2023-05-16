<?php

$db_host = 'localhost';
$db_username = 'root';
$db_password = '';
$db_name = 'mahasiswa';

// Connect to your database (replace host, username, password, and dbname with your own details)
$conn = mysqli_connect($db_host, $db_username, $db_password, $db_name);

// Check the database connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Retrieve the NPM from the AJAX request
$npm = $_GET['npm'];

// Prepare the SQL query to retrieve student data based on NPM
$sql = "SELECT * FROM datam WHERE npm = '$npm'";
$result = mysqli_query($conn, $sql);

// Check if any rows are returned
if (mysqli_num_rows($result) > 0) {
    // Loop through the rows and build the HTML response
    $response = '<h2>Student Details</h2>';
    while ($row = mysqli_fetch_assoc($result)) {
        $response .= "<p><strong>NPM:</strong> " . $row['npm'] . "</p>";
        $response .= "<p><strong>Name:</strong> " . $row['name'] . "</p>";
        $response .= "<p><strong>Major:</strong> " . $row['major'] . "</p>";
        $response .= "<p><strong>Batch:</strong> " . $row['batch'] . "</p>";
    }
} else {
    $response = "<p>No student found with NIM: $npm</p>";
}

// Close the database connection
mysqli_close($conn);

// Return the response to the AJAX request
echo $response;
?>
