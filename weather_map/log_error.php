<?php
$servername = "localhost"; // Имя хоста
$username = "root";        // Имя пользователя MySQL
$password = "";            // Пароль
$dbname = "air_quality";   // Имя базы данных

// Устанавливаем соединение
$conn = new mysqli($servername, $username, $password, $dbname);

// Проверка соединения
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Получение данных из POST-запроса
$latitude = $_POST['latitude'] ?? null;
$longitude = $_POST['longitude'] ?? null;
$request_type = $_POST['request_type'] ?? 'unknown';
$status = $_POST['status'] ?? 'unknown';
$message = $_POST['message'] ?? '';

// Подготовка SQL-запроса
$sql = "INSERT INTO request_logs (latitude, longitude, request_type, status, message) VALUES (?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ddsss", $latitude, $longitude, $request_type, $status, $message);

if ($stmt->execute()) {
    echo "Лог успешно добавлен.";
} else {
    echo "Ошибка записи в базу данных: " . $conn->error;
}

$stmt->close();
$conn->close();
?>
