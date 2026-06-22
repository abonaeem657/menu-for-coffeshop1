<?php
//محمد نعيم الشريف 
//محمد صالح الحنيطي
$servername = "localhost:3307";
$username = "root";   
$password = "";       
$dbname = "coffee_shop";

$conn = new mysqli($servername, $username, $password, $dbname);

function getData($conn, $table) {
    $sql = "SELECT name, price FROM $table";
    $result = $conn->query($sql);
    $data = [];   
        while($row = $result->fetch_assoc()) {
            $data[] = $row;
        } 
    return $data;
}

$hotDrinks = getData($conn, "hot_drinks");
$coldDrinks = getData($conn, "cold_drinks");
$chocoCookie = getData($conn, "choco_cookie");
$classicCookie = getData($conn, "classic_cookie");
$chocoCake = getData($conn, "choco_cake");
$fruitCake = getData($conn, "fruit_cake");

$conn->close();
?>

<!DOCTYPE html>
<html lang="ar">
<head>
<meta charset="UTF-8" />
<meta content="width=device-width, initial-scale=1" />
<title>Plastine Coffee House</title>
<link rel="stylesheet" href="CSS.css">
</head>
<body>

<h1 id="start">Plastine Coffee House</h1>

<h2 id="ccc">We have all things you need to enjoy with us</h2>

<p id="menu">Menu</p>

<ul>
    <li><a href="#cookies">Cookies</a></li>
    <li><a href="#drink">Drink</a>
    <a href="#cake">Cake</a></li>
</ul> 


<div class="drink-section" id="drink">
    <h2>Drink</h2>
    <ul>
        <li>
            <button onclick="toggleList('hot')">Hot Drink</button>
            <ul id="hot" class="drink-list">
                <?php foreach($hotDrinks as $drink): ?>
                    <li><?= htmlspecialchars($drink['name']) . " - $" . number_format($drink['price'], 2); ?></li>
                <?php endforeach; ?>
            </ul>
        </li>
        <li>
            <button onclick="toggleList('cold')">Cold Drink</button>
            <ul id="cold" class="drink-list">
                <?php foreach($coldDrinks as $drink): ?>
                    <li><?= htmlspecialchars($drink['name']) . " - $" . number_format($drink['price'], 2); ?></li>
                <?php endforeach; ?>
            </ul>
        </li>
    </ul>
</div>


<div class="drink-section" id="cake">
    <h2>Cake</h2>
    <ul>
        <li>
            <button onclick="toggleList('chocoCake')">Chocolate Cakes</button>
            <ul id="chocoCake" class="drink-list">
                <?php foreach($chocoCake as $cake): ?>
                    <li><?= htmlspecialchars($cake['name']) . " - $" . number_format($cake['price'], 2); ?></li>
                <?php endforeach; ?>
            </ul>
        </li>
        <li>
            <button onclick="toggleList('fruitCake')">Fruit Cakes</button>
            <ul id="fruitCake" class="drink-list">
                <?php foreach($fruitCake as $cake): ?>
                    <li><?= htmlspecialchars($cake['name']) . " - $" . number_format($cake['price'], 2); ?></li>
                <?php endforeach; ?>
            </ul>
        </li>
    </ul>
</div>

<div class="drink-section" id="cookies">
    <h2>Cookies</h2>
    <ul>
        <li>
            <button onclick="toggleList('chocoCookie')">Chocolate Cookies</button>
            <ul id="chocoCookie" class="drink-list">
                <?php foreach($chocoCookie as $cookie): ?>
                    <li><?= htmlspecialchars($cookie['name']) . " - $" . number_format($cookie['price'], 2); ?></li>
                <?php endforeach; ?>
            </ul>
        </li>
        <li>
            <button onclick="toggleList('classicCookie')">Classic Cookies</button>
            <ul id="classicCookie" class="drink-list">
                <?php foreach($classicCookie as $cookie): ?>
                    <li><?= htmlspecialchars($cookie['name']) . " - $" . number_format($cookie['price'], 2); ?></li>
                <?php endforeach; ?>
            </ul>
        </li>
    </ul>
</div>

<script>
    function toggleList(id) {
        const list = document.getElementById(id);
        list.style.display = (list.style.display === "block") ? "none" : "block";
    }
</script>

<h2 id="ccc">
    DONT FORGET OUR BELOVED BROTHERS IN GAZA<br>
    AND ALWAYS THINK OF THE INNOCENT CHILDREN
</h2>

</body>
</html>
